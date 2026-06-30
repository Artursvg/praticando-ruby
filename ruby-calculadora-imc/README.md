# Ruby Calculadora de IMC

Programa de linha de comando em Ruby que calcula o **Índice de Massa Corporal (IMC)** e classifica o resultado em uma faixa de peso. Desenvolvido com **TDD** (Test-Driven Development) usando **RSpec**.

## Objetivo

Projeto de estudo para praticar:

- Cálculo com números decimais usando `to_f`
- Dois métodos de classe com responsabilidades distintas (`calcular` e `classificar`)
- Ranges com valores decimais em `case`/`when`
- Validação de entrada inválida (peso ou altura ≤ 0)
- Testes automatizados com RSpec
- Fluxo Red → Green → Refactor do TDD

## Pré-requisitos

- [Ruby](https://www.ruby-lang.org/pt/) 3.x
- [RSpec](https://rspec.info/)

### Instalação das dependências

```bash
gem install rspec
```

## Estrutura do projeto

```text
praticando-ruby/
└── ruby-calculadora-imc/
    ├── bin/
    │   └── main.rb        # Entrada do programa (leitura e saída no terminal)
    ├── lib/
    │   └── imc.rb         # Lógica: calcula e classifica o IMC
    ├── spec/
    │   ├── imc_spec.rb    # Testes da classe Imc
    │   └── spec_helper.rb # Configuração do RSpec
    ├── .rspec             # Opções padrão do RSpec
    └── README.md
```

## Como executar

Entre na pasta do projeto e rode:

```bash
cd ruby-calculadora-imc
ruby bin/main.rb
```

O programa roda em loop: após cada cálculo, pergunta se você deseja sair. Digite `s` para encerrar ou `n` para continuar.

### Exemplo de uso

IMC normal:

```text
Digite seu peso
70
Agora digite sua altura em metros:
1.75
O seu imc é: 22.9 e voce está na faixa de Peso normal
Deseja sair do programa?
```

Entrada inválida (peso zero):

```text
Digite seu peso
0
Agora digite sua altura em metros:
1.75
O seu imc é: Peso/Altura não pode ser menor ou igual a 0 e voce está na faixa de Obesidade grau III
Deseja sair do programa?
```

## Como rodar os testes

Na pasta `ruby-calculadora-imc`:

```bash
rspec
```

Para rodar apenas o arquivo de testes:

```bash
rspec spec/imc_spec.rb
```

## Lógica principal

A classe `Imc` expõe dois métodos de classe:

**`Imc.calcular(peso, altura)`** — aplica a fórmula `peso / altura²`. Retorna uma mensagem de erro se peso ou altura forem ≤ 0.

**`Imc.classificar(imc)`** — usa ranges decimais em um `case`/`when` para determinar a faixa de peso:

| Faixa de IMC    | Classificação      |
|----------------|--------------------|
| 1 – 18,49      | Abaixo do peso     |
| 18,5 – 24,9    | Peso normal        |
| 25 – 29,9      | Sobrepeso          |
| 30 – 34,9      | Obesidade grau I   |
| 35 – 39,9      | Obesidade grau II  |
| 40+            | Obesidade grau III |

A interface em `bin/main.rb` lê os valores com `gets.chomp.to_f`, exibe o IMC arredondado com `round(1)` e a classificação.

## Abordagem TDD

1. **Red** — escrever um teste que falha
2. **Green** — implementar o mínimo para o teste passar
3. **Refactor** — melhorar o código sem quebrar os testes

### Cobertura atual dos testes

| Cenário              | Entrada            | Resultado esperado                                |
|----------------------|--------------------|---------------------------------------------------|
| Peso inválido (0)    | `0`, `1.70`        | `"Peso/Altura não pode ser menor ou igual a 0"`   |
| Altura inválida (0)  | `70`, `0`          | `"Peso/Altura não pode ser menor ou igual a 0"`   |
| Cálculo do IMC       | `70`, `1.75`       | `22.857...`                                       |
| Abaixo do peso       | IMC `18.49`        | `"Abaixo do peso"`                                |
| Peso normal          | IMC `18.5`         | `"Peso normal"`                                   |
| Sobrepeso            | IMC `25`           | `"Sobrepeso"`                                     |
| Obesidade grau I     | IMC `30`           | `"Obesidade grau I"`                              |
| Obesidade grau II    | IMC `35`           | `"Obesidade grau II"`                             |
| Obesidade grau III   | IMC `50`           | `"Obesidade grau III"`                            |

## Referências úteis

- [Ruby — Documentação oficial (PT)](https://www.ruby-lang.org/pt/documentation/)
- [RSpec — Documentação](https://rspec.info/documentation/)
- [Better Specs — Boas práticas de testes](https://www.betterspecs.org/)
