# Ruby Par ou Ímpar

Programa de linha de comando em Ruby que recebe números inteiros e informa se cada um é **par** ou **ímpar**. Desenvolvido com **TDD** (Test-Driven Development) usando **RSpec**.

## Objetivo

Projeto de estudo para praticar:

- Sintaxe básica de Ruby (classes, métodos, condicionais, loops)
- Testes automatizados com RSpec
- Separação entre lógica de negócio e interface de terminal
- Uso do método `even?` do Ruby (inclui zero e números negativos)
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
└── ruby-par-impar/
    ├── bin/
    │   └── main.rb           # Entrada do programa (leitura e saída no terminal)
    ├── lib/
    │   └── par_impar.rb      # Lógica: verifica se um número é par ou ímpar
    ├── spec/
    │   ├── par_impar_spec.rb # Testes da classe ParImpar
    │   └── spec_helper.rb    # Configuração do RSpec
    ├── .rspec                # Opções padrão do RSpec
    └── README.md
```

## Como executar

Entre na pasta do projeto e rode:

```bash
cd ruby-par-impar
ruby bin/main.rb
```

O programa roda em loop: após cada resultado, pergunta se você deseja sair. Digite `s` para encerrar ou `n` para informar outro número.

### Exemplo de uso

Número par:

```text
Digite um numero: 4
o numero 4 é par
Deseja sair? (s/n)
```

Número ímpar:

```text
Digite um numero: 7
o numero 7 é impar
Deseja sair? (s/n)
```

Zero (par em Ruby):

```text
Digite um numero: 0
o numero 0 é par
Deseja sair? (s/n)
```

Número negativo:

```text
Digite um numero: -3
o numero -3 é impar
Deseja sair? (s/n)
```

Encerrar o programa:

```text
Deseja sair? (s/n)
s
```

## Como rodar os testes

Na pasta `ruby-par-impar`:

```bash
rspec
```

Para rodar apenas o arquivo de testes da lógica:

```bash
rspec spec/par_impar_spec.rb
```

## Lógica principal

A classe `ParImpar` expõe o método de classe `verificar(num)`, que:

- retorna `"par"` quando o número é par (usa o método `even?` do Ruby);
- retorna `"impar"` nos demais casos.

Em Ruby, `even?` considera **zero** e **negativos** corretamente: `0.even?` é `true`, `-2.even?` é `true` e `-3.even?` é `false`.

A interface em `bin/main.rb` apenas lê o número, chama `ParImpar.verificar` e exibe o resultado.

## Abordagem TDD

1. **Red** — escrever um teste que falha
2. **Green** — implementar o mínimo para o teste passar
3. **Refactor** — melhorar o código sem quebrar os testes

### Cobertura atual dos testes

| Cenário              | Entrada | Resultado esperado |
|----------------------|---------|--------------------|
| Número par positivo  | `2`     | `"par"`            |
| Número ímpar positivo| `3`     | `"impar"`          |
| Zero                 | `0`     | `"par"`            |
| Número par negativo  | `-2`    | `"par"`            |
| Número ímpar negativo| `-3`    | `"impar"`          |

A interface de terminal (`bin/main.rb`) não é testada diretamente; ela reutiliza a lógica já validada em `lib/`.

## Melhorias futuras (ideias de estudo)

- Validar entrada não numérica (ex.: `"abc"`) — hoje `gets.chomp.to_i` converte para `0`
- Extrair a leitura do terminal para uma classe separada (ex.: `CLI`)
- Adicionar testes de integração para o fluxo interativo

## Referências úteis

- [Ruby — Documentação oficial (PT)](https://www.ruby-lang.org/pt/documentation/)
- [RSpec — Documentação](https://rspec.info/documentation/)
- [Better Specs — Boas práticas de testes](https://www.betterspecs.org/)
