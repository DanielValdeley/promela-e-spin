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
    ./pan
```
