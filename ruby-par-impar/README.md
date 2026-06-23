# Ruby Par ou Ímpar

Programa de linha de comando em Ruby que recebe um número inteiro e informa se ele é **par** ou **ímpar**. Desenvolvido com **TDD** (Test-Driven Development) usando **RSpec**.

## Objetivo

Projeto de estudo para praticar:

- Sintaxe básica de Ruby (classes, métodos, condicionais)
- Testes automatizados com RSpec
- Separação entre lógica de negócio e interface de terminal
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

```text
ruby-par-impar/
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

Na raiz do projeto:

```bash
ruby bin/main.rb
```

Exemplo de uso:

```text
Digite um numero: 4
o numero 4 é par
```

```text
Digite um numero: 7
o numero 7 é impar
```

## Como rodar os testes

```bash
rspec
```

Para rodar apenas o arquivo de testes da lógica:

```bash
rspec spec/par_impar_spec.rb
```

## Lógica principal

A classe `ParImpar` expõe o método de classe `verificar(num)`, que:

- retorna `"par"` quando o número é divisível por 2;
- retorna `"impar"` nos demais casos.

A verificação usa o operador de resto (`%`).

## Abordagem TDD

1. **Red** — escrever um teste que falha
2. **Green** — implementar o mínimo para o teste passar
3. **Refactor** — melhorar o código sem quebrar os testes

Os testes cobrem os casos básicos de número par (`2`) e ímpar (`3`). A interface de terminal (`bin/main.rb`) não é testada diretamente; ela reutiliza a lógica já validada em `lib/`.

## Melhorias futuras (ideias de estudo)

- Testar o caso `0` (par)
- Testar números negativos
- Validar entrada inválida (ex.: `"abc"`)
- Refatorar usando `even?` / `odd?` do Ruby
- Permitir verificar vários números em loop até o usuário sair

## Referências úteis

- [Ruby — Documentação oficial (PT)](https://www.ruby-lang.org/pt/documentation/)
- [RSpec — Documentação](https://rspec.info/documentation/)
- [Better Specs — Boas práticas de testes](https://www.betterspecs.org/)
