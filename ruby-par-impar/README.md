# Ruby Par ou Ímpar

Programa de linha de comando em Ruby que recebe números inteiros e informa se cada um é **par** ou **ímpar**. Desenvolvido com **TDD** (Test-Driven Development) usando **RSpec**.

## Objetivo

Projeto de estudo para praticar:

- Sintaxe básica de Ruby (classes, métodos, condicionais, loops)
- Testes automatizados com RSpec
- Separação entre lógica de negócio e interface de terminal
- Validação de entrada e tratamento de valores inválidos
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
│   └── main.rb           # Entrada do programa (leitura, validação e saída no terminal)
├── lib/
│   └── par_impar.rb      # Lógica: verifica se um número é par, ímpar ou inválido
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

O programa roda em loop: após cada resultado, você pode digitar outro número ou `sair` para encerrar.

### Exemplo de uso

Número par:

```text
Digite um numero: 4
o numero 4 é par
Se quiser sair digite 'sair'
```

Número ímpar:

```text
Digite um numero: 7
o numero 7 é impar
Se quiser sair digite 'sair'
```

Número inválido (zero ou negativo):

```text
Digite um numero: 0
0 não é permitido, digite outro numero: 4
o numero 4 é par
Se quiser sair digite 'sair'
```

Encerrar o programa:

```text
Se quiser sair digite 'sair'
sair
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

- retorna `"inválido"` quando o número é menor ou igual a zero;
- retorna `"par"` quando o número é par (usa o método `even?` do Ruby);
- retorna `"impar"` nos demais casos.

A interface em `bin/main.rb` reutiliza essa lógica: se o resultado for `"inválido"`, o programa pede um novo número até receber um valor válido.

## Abordagem TDD

1. **Red** — escrever um teste que falha
2. **Green** — implementar o mínimo para o teste passar
3. **Refactor** — melhorar o código sem quebrar os testes

### Cobertura atual dos testes

| Cenário              | Entrada | Resultado esperado |
|----------------------|---------|--------------------|
| Número par           | `2`     | `"par"`            |
| Número ímpar         | `3`     | `"impar"`          |
| Zero (inválido)      | `0`     | `"inválido"`       |

A interface de terminal (`bin/main.rb`) não é testada diretamente; ela reutiliza a lógica já validada em `lib/`.

## Melhorias futuras (ideias de estudo)

- Testar números negativos explicitamente (ex.: `-2`, `-3`)
- Validar entrada não numérica (ex.: `"abc"`) — hoje `gets.chomp.to_i` converte para `0`
- Extrair a leitura e validação do terminal para uma classe separada (ex.: `CLI`)
- Adicionar testes de integração para o fluxo interativo

## Referências úteis

- [Ruby — Documentação oficial (PT)](https://www.ruby-lang.org/pt/documentation/)
- [RSpec — Documentação](https://rspec.info/documentation/)
- [Better Specs — Boas práticas de testes](https://www.betterspecs.org/)
