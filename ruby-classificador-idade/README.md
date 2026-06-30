# Ruby Classificador de Idade

Programa de linha de comando em Ruby que classifica uma pessoa em uma faixa etária com base na idade informada. Desenvolvido com **TDD** (Test-Driven Development) usando **RSpec**.

## Objetivo

Projeto de estudo para praticar:

- Ranges do Ruby (`0..5`, `6..10`, etc.) com `case`/`when`
- Métodos de classe (`self.classificar`)
- Loop interativo com validação de entrada
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
└── ruby-classificador-idade/
    ├── bin/
    │   └── main.rb                      # Entrada do programa (leitura e saída no terminal)
    ├── lib/
    │   └── classificador_idade.rb       # Lógica: classifica a idade em faixa etária
    ├── spec/
    │   ├── classificador_idade_spec.rb  # Testes da classe Classificador
    │   └── spec_helper.rb              # Configuração do RSpec
    ├── .rspec                           # Opções padrão do RSpec
    └── README.md
```

## Como executar

Entre na pasta do projeto e rode:

```bash
cd ruby-classificador-idade
ruby bin/main.rb
```

O programa roda em loop: após cada classificação, pergunta se você deseja sair. Digite `s` para encerrar ou `n` para continuar.

### Exemplo de uso

```text
digite sua idade:
25
De acordo com sua idade voce é um/a adulto
Deseja sair do programa? (s/n)
n
digite sua idade:
7
De acordo com sua idade voce é um/a criança
Deseja sair do programa? (s/n)
s
```

## Como rodar os testes

Na pasta `ruby-classificador-idade`:

```bash
rspec
```

Para rodar apenas o arquivo de testes:

```bash
rspec spec/classificador_idade_spec.rb
```

## Lógica principal

A classe `Classificador` expõe o método de classe `classificar(num)`, que usa ranges em um `case`/`when` para determinar a faixa etária:

| Faixa de idade | Classificação     |
|---------------|-------------------|
| 0 – 5         | criança pequena   |
| 6 – 10        | criança           |
| 11 – 14       | pré-adolescente   |
| 15 – 17       | adolescente       |
| 18 – 59       | adulto            |
| 60+           | idoso             |

A interface em `bin/main.rb` lê a idade com `gets.chomp.to_i`, exibe o resultado e valida a resposta de continuação com um array `INPUTS`.

## Abordagem TDD

1. **Red** — escrever um teste que falha
2. **Green** — implementar o mínimo para o teste passar
3. **Refactor** — melhorar o código sem quebrar os testes

### Cobertura atual dos testes

| Cenário           | Entrada | Resultado esperado |
|-------------------|---------|--------------------|
| Criança pequena   | `4`     | `"criança pequena"` |
| Criança           | `7`     | `"criança"`         |
| Pré-adolescente   | `13`    | `"pré-adolescente"` |
| Adolescente       | `15`    | `"adolescente"`     |
| Adulto            | `25`    | `"adulto"`          |
| Idoso             | `75`    | `"idoso"`           |

## Referências úteis

- [Ruby — Documentação oficial (PT)](https://www.ruby-lang.org/pt/documentation/)
- [RSpec — Documentação](https://rspec.info/documentation/)
- [Better Specs — Boas práticas de testes](https://www.betterspecs.org/)
