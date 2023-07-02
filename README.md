# promela-e-spin

### Para executar usando o spin

```shell
   ./spin pe.pml
```

###  Para verificar condições em um modelo, deve-se compilá-lo da seguinte forma

```shell
    # opção -a: usada para gerar um verificador, que estará no arquivo pan.c
    ./spin -a pe.pml

    # Compila o verificador, que será o programa "pan"
    gcc -o pan pan.c

    # Executa o verificador
    ./pan -a
```
### Verificação de Protocolos

#### Verificação de propriedades

Do ponto de vista de um sistema distribuído ou concorrente, podem-se identificar dois requisitos para a correção de um sistema:

- **Segurança (safety):** segurança diz respeito ao que não deve ser possível ocorrer no sistema, ou ao conjunto de propriedades que não podem ser violadas. Isso inclui estados que nunca devem ser alcançados, ou sequências de estados as quais não podem ocorrer. Por exemplo, um protocolo com mecanismo ARQ pare-espere nunca deve transmitir uma nova mensagem antes de receber a confirmação da mensagem enviada anteriormente.

- **Vivacidade (liveness):** vivacidade diz respeito ao que sempre deve valer para o sistema, ou ao conjunto de propriedades que sempre devem ser satisfeitas. Por exemplo, em um enquadramento do tipo sentinela, a perda de sincronismo de quadro se recupera em algum momento após os erros de transmissão cessarem.


Para fins de verificação de propriedades, PROMELA/SPIN definem dois tipos de reivindicações de correção. Ambos podem ser usadas para verificar propriedades quanto à segurança ou vivacidade.

- **alcançabilidade:** esse tipo de reivindicação se baseia em estados alcançáveis ou inalcançáveis. Isso também se chama propriedades de estado. Com esse tipo de verificação, pode-se testar se o sistema pode (ou não) se encontrar em um certo estado em algum momento futuro. Por exemplo, em um protocolo com mecanismo ARQ, ambos estados de espera por mensagem com números de sequência 0 ou 1 são alcançáveis.

- **factibilidade:** esse outro tipo de reivindicação se baseia na executabilidade ou não de sequências de estados. Isso também é chamado de propriedades de caminho. Por exemplo, em um protocolo com mecanismo ARQ, o sistema alcança o estado ocioso em algum momento futuro, após ter estado no estado espera por confirmação.

**Referências**

capítulo 4 do livro The SPIN Model Checker

capítulo 6 do livro Design and Validation of Computer Protocols.
