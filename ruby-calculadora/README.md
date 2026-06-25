# Ruby Calculadora

Programa de linha de comando em Ruby que realiza as quatro operações básicas (**soma**, **subtração**, **multiplicação** e **divisão**) entre dois números inteiros. Desenvolvido com **TDD** (Test-Driven Development) usando **RSpec**.

## Objetivo

Projeto de estudo para praticar:

- Sintaxe básica de Ruby (classes, métodos, `case`/`when`, loops)
- Testes automatizados com RSpec
- Separação entre lógica de negócio e interface de terminal
- Validação de entrada com `include?` e `key?`
- Mapeamento de opções do menu com **hash**
- Tratamento de divisão por zero
- Fluxo Red → Green → Refactor do TDD

## Pré-requisitos

- [Ruby](https://www.ruby-lang.org/pt/) 3.x
- [RSpec](https://rspec.info/)

### Instalação das dependências

```bash
gem install rspec
```

Para inicializar a configuração do RSpec (já feito neste projeto):

```bash
rspec --init
```

## Estrutura do projeto

Este exercício fica dentro do repositório `praticando-ruby`:

```text
praticando-ruby/
└── ruby-calculadora/
    ├── bin/
    │   └── main.rb               # Entrada do programa (menu, leitura e saída no terminal)
    ├── lib/
    │   └── calculadora.rb        # Lógica: executa a operação entre dois números
    ├── spec/
    │   ├── calculadora_spec.rb   # Testes da classe Calculadora
    │   └── spec_helper.rb        # Configuração do RSpec
    ├── .rspec                    # Opções padrão do RSpec
    └── README.md
```

## Como executar

Entre na pasta do projeto e rode:

```bash
cd ruby-calculadora
ruby bin/main.rb
```

O programa roda em loop: após cada operação, pergunta se você deseja sair. Digite `s` para encerrar ou `n` para continuar.

### Exemplo de uso

Soma:

```text
Bem vindo a calculadora, primeiro escolha qual operação deseja realizar pelo numero:
1) Soma     2) Subtração

3) Multiplicação     4) Divisão
1
Escolha 2 numeros para realizar a operação
20
5
o resultado da sua operação é: 25
Deseja sair do programa? (s/n)
```

Divisão por zero:

```text
4
Escolha 2 numeros para realizar a operação
20
0
não é possivel dividir por 0
Deseja sair do programa? (s/n)
```

Opção inválida no menu:

```text
abc
Escolha inválida digite novamente
1) Soma     2) Subtração
3) Multiplicação     4) Divisão
2
```

Encerrar o programa:

```text
Deseja sair do programa? (s/n)
s
```

## Como rodar os testes

Na pasta `ruby-calculadora`:

```bash
rspec
```

Para rodar apenas o arquivo de testes da lógica:

```bash
rspec spec/calculadora_spec.rb
```

## Lógica principal

A classe `Calculadora` expõe o método de classe `calcular(a, operador, b)`, que:

- retorna a **soma** quando `operador` é `"+"`;
- retorna a **subtração** quando `operador` é `"-"`;
- retorna a **multiplicação** quando `operador` é `"*"`;
- retorna a **divisão** quando `operador` é `"/"`;
- retorna `"erro"` ao tentar dividir por zero.

A interface em `bin/main.rb` usa um hash `OPERADORES` para mapear as opções do menu (`1` a `4`) para os símbolos das operações (`"+"`, `"-"`, `"*"`, `"/"`), valida a entrada com `OPERADORES.key?(operador)` e exibe o resultado ou a mensagem de erro no terminal.

## Abordagem TDD

1. **Red** — escrever um teste que falha
2. **Green** — implementar o mínimo para o teste passar
3. **Refactor** — melhorar o código sem quebrar os testes

### Cobertura atual dos testes

| Cenário              | Entrada              | Resultado esperado |
|----------------------|----------------------|--------------------|
| Soma                 | `20`, `'+'`, `5`     | `25`               |
| Subtração            | `20`, `'-'`, `5`     | `15`               |
| Multiplicação        | `20`, `'*'`, `5`     | `100`              |
| Divisão              | `20`, `'/'`, `5`     | `4`                |
| Divisão por zero     | `20`, `'/'`, `0`     | `"erro"`           |

A interface de terminal (`bin/main.rb`) não é testada diretamente; ela reutiliza a lógica já validada em `lib/`.

## Melhorias futuras (ideias de estudo)

- Validar entrada não numérica (ex.: `"abc"`) — hoje `gets.chomp.to_i` converte para `0`
- Tratar números decimais com `to_f` em vez de `to_i`
- Retornar `"erro"` para operador inválido em `Calculadora.calcular`
- Extrair a leitura do terminal para uma classe separada (ex.: `CLI`)
- Adicionar testes de integração para o fluxo interativo

## Referências úteis

- [Ruby — Documentação oficial (PT)](https://www.ruby-lang.org/pt/documentation/)
- [RSpec — Documentação](https://rspec.info/documentation/)
- [Better Specs — Boas práticas de testes](https://www.betterspecs.org/)
