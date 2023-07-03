mtype = {flag, esc, data}

chan tx = [1] of {byte}

int max_size=32
int i;

active proctype fram_tx() {
  int cnt

inicio:
  tx!flag
  cnt = 0
  i = 0

  do
  :: cnt < max_size ->
     if
     :: tx!data -> cnt++
     i++
     :: tx!esc ->
        tx!data
        cnt++
        i++
     fi
  :: cnt > 0 ->
     tx!flag
     goto inicio
  :: else ->
     tx!flag
     goto inicio
  od
}

active proctype fram_rx() {
  int cnt
  mtype octeto

estado_ocioso:

  cnt = 0
  i = 0
  do
  :: tx?flag -> goto estado_rx
  :: tx?data -> skip // ignora 
  :: tx?esc -> skip // ignora
  :: tx?octeto -> skip // simula erro de recepção
  od

estado_rx:

  do 
  :: tx?data -> cnt++
     i++
  :: tx?esc -> goto estado_esc
  :: tx?flag -> 
     if
     :: cnt == 0 -> skip
     :: else -> goto estado_ocioso
     fi
  :: cnt > max_size -> goto estado_ocioso
  :: tx?octeto -> skip // simula erro de recepcao
  od

estado_esc:
  do
  :: tx?data -> 
     cnt++
     i++
     goto estado_rx
  :: tx?flag -> // erro ... não deveria receber flag
    goto estado_ocioso
  :: tx?esc -> // erro ... não deveria receber esc
    goto estado_ocioso
  :: tx?octeto -> skip // simula erro de recepcao
  od
}

// Perdas de sincronismo no enquadramento são recuperadas em algum momento futuro após erros cessarem
ltl rec {<>(fram_rx@estado_esc -> fram_rx@estado_rx) ||  <>(fram_rx@estado_ocioso -> fram_rx@estado_rx)}

// Quadros que excedam o tamanho máximo são descartados pelo receptor
ltl desc {[](fram_rx@estado_rx && i > max_size) -> fram_rx@estado_ocioso}

// Resultado e conclusao rec
// rec: frequentemente ao está no estado esc ou ocioso os erros são cessados no futuro, isso implica que irá para o estado rx.

// Resultado e conclusao desc
// Indefinitivamente ao esta no estado rx e o quadro for maior que o tamanho máximo será descartado, isso implica em ir para o estado ocioso.