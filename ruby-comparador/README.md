# Ruby Comparador de Números

Programa de linha de comando em Ruby que recebe dois números inteiros e informa qual é o maior ou se são iguais. Desenvolvido com **TDD** (Test-Driven Development) usando **RSpec**.

## Objetivo

Projeto de estudo para praticar:

- Sintaxe básica de Ruby (classes, métodos, condicionais, loops)
- Testes automatizados com RSpec
- Separação entre lógica de negócio e interface de terminal
- Comparação de valores com `>`, `<` e `==`
- Interpolação de strings na saída do terminal
- Validação de entrada do usuário em loops

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
└── ruby-comparador/
    ├── bin/
    │   └── main.rb              # Entrada do programa (leitura e saída no terminal)
    ├── lib/
    │   └── comparador.rb        # Lógica: compara dois números
    ├── spec/
    │   ├── comparador_spec.rb   # Testes da classe Comparador
    │   └── spec_helper.rb       # Configuração do RSpec
    ├── .rspec                   # Opções padrão do RSpec
    └── README.md
```

## Como executar

Entre na pasta do projeto e rode:

```bash
cd ruby-comparador
ruby bin/main.rb
```

O programa roda em loop: após cada comparação, pergunta se você deseja comparar mais dois números. Digite `n` para encerrar ou `s` para continuar.

### Exemplo de uso

Primeiro número maior:

```text
Bem vindo ao comparador de numeros digite o numero A:
10
Agora digite o numero B:
7
O maior numero escolhido é 10
Deseja Comparar mais 2 numeros? (s/n)
```

Segundo número maior:

```text
Bem vindo ao comparador de numeros digite o numero A:
3
Agora digite o numero B:
15
O maior numero escolhido é 15
Deseja Comparar mais 2 numeros? (s/n)
```

Números iguais:

```text
Bem vindo ao comparador de numeros digite o numero A:
8
Agora digite o numero B:
8
Os numeros são iguais
Deseja Comparar mais 2 numeros? (s/n)
```

Encerrar o programa:

```text
Deseja Comparar mais 2 numeros? (s/n)
n
```

## Como rodar os testes

Na pasta `ruby-comparador`:

```bash
rspec
```

Para rodar apenas o arquivo de testes da lógica:

```bash
rspec spec/comparador_spec.rb
```

## Lógica principal

A classe `Comparador` expõe o método de classe `comparar(a, b)`, que:

- retorna o valor de `a` quando `a` é maior que `b`;
- retorna o valor de `b` quando `b` é maior que `a`;
- retorna `"Os numeros são iguais"` quando os dois valores são iguais.

A interface em `bin/main.rb` lê os dois números, chama `Comparador.comparar` e exibe o resultado formatado no terminal.

## Abordagem TDD

1. **Red** — escrever um teste que falha
2. **Green** — implementar o mínimo para o teste passar
3. **Refactor** — melhorar o código sem quebrar os testes

### Cobertura atual dos testes

| Cenário              | Entrada   | Resultado esperado        |
|----------------------|-----------|---------------------------|
| A maior que B        | `10`, `7` | `10`                      |
| B maior que A        | `10`, `20`| `20`                      |
| A igual a B          | `10`, `10`| `"Os numeros são iguais"` |

A interface de terminal (`bin/main.rb`) não é testada diretamente; ela reutiliza a lógica já validada em `lib/`.

## Melhorias futuras (ideias de estudo)

- Validar entrada não numérica (ex.: `"abc"`) — hoje `gets.chomp.to_i` converte para `0`
- Tratar números decimais com `to_f` em vez de `to_i`
- Extrair a leitura do terminal para uma classe separada (ex.: `CLI`)
- Adicionar testes de integração para o fluxo interativo

## Referências úteis

- [Ruby — Documentação oficial (PT)](https://www.ruby-lang.org/pt/documentation/)
- [RSpec — Documentação](https://rspec.info/documentation/)
- [Better Specs — Boas práticas de testes](https://www.betterspecs.org/)
