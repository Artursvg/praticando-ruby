# Praticando Ruby

Repositório de exercícios em Ruby para praticar fundamentos da linguagem, testes automatizados com RSpec e separação entre lógica de negócio e interface de terminal.

Cada pasta na raiz é um **projeto independente** com sua própria estrutura (`lib/`, `spec/`, `bin/`) e README dedicado.

## Exercícios

| Projeto | Descrição | README |
|---------|-----------|--------|
| [ruby-par-impar](./ruby-par-impar/) | Verifica se um número inteiro é par ou ímpar | [README](./ruby-par-impar/README.md) |
| [ruby-comparador](./ruby-comparador/) | Compara dois números e retorna o maior ou informa se são iguais | [README](./ruby-comparador/README.md) |

## Ambiente de desenvolvimento

Este repositório pode ser usado em **Windows com WSL** (Windows Subsystem for Linux). Os comandos dos exercícios devem ser executados **dentro do terminal WSL**, não no PowerShell/CMD do Windows.

Se o projeto estiver no disco `C:` do Windows, ele fica acessível no WSL pelo prefixo `/mnt/c/`. Exemplo genérico:

```text
/mnt/c/Users/SEU_USUARIO/projetos/praticando-ruby
```

Substitua pelo caminho real onde você clonou o repositório.

## Instalação (Windows + WSL + Ruby)

### 1. Instalar o WSL

Abra o **PowerShell** ou o **Terminal do Windows** como administrador e execute:

```powershell
wsl --install
```

Reinicie o computador se o Windows pedir. Na primeira abertura do Ubuntu (ou da distro instalada), crie seu usuário e senha do Linux.

Para verificar se o WSL está ativo:

```powershell
wsl --status
```

Para entrar no ambiente Linux a partir do Windows:

```powershell
wsl
```

### 2. Atualizar o sistema no WSL

Dentro do WSL (terminal Linux):

```bash
sudo apt update
sudo apt upgrade -y
```

### 3. Instalar o Ruby

Instale o Ruby e ferramentas de compilação (necessárias para algumas gems):

```bash
sudo apt install -y ruby-full ruby-dev build-essential
```

Confirme a instalação:

```bash
ruby --version
gem --version
```

### 4. Instalar o RSpec

Ainda dentro do WSL:

```bash
gem install rspec
```

Se aparecer erro de permissão ao instalar gems, use:

```bash
gem install rspec --user-install
```

Depois, adicione o binário das gems ao `PATH` (ajuste a versão do Ruby se necessário):

```bash
echo 'export PATH="$HOME/.local/share/gem/ruby/3.2.0/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

Verifique:

```bash
rspec --version
```

### 5. Acessar o repositório no WSL

Clone o repositório (se ainda não tiver feito) e entre na pasta:

```bash
git clone https://github.com/Artursvg/praticando-ruby.git
cd praticando-ruby
```

Se você já clonou o projeto no Windows, navegue pelo caminho montado no WSL:

```bash
cd /mnt/c/caminho/onde/voce/clonou/praticando-ruby
```

> **Dica:** prefira rodar `ruby` e `rspec` pelo WSL. O caminho em `/mnt/c/...` aponta para os mesmos arquivos que você edita no Windows (VS Code/Cursor), mas o interpretador Ruby roda no Linux.

## Pré-requisitos

- Windows 10/11 com [WSL](https://learn.microsoft.com/pt-br/windows/wsl/install) habilitado
- [Ruby](https://www.ruby-lang.org/pt/) 3.x (instalado no WSL)
- [RSpec](https://rspec.info/) (`gem install rspec`)

## Estrutura do repositório

```text
praticando-ruby/
├── README.md                 # Este arquivo
├── ruby-par-impar/
│   ├── bin/main.rb
│   ├── lib/par_impar.rb
│   ├── spec/
│   └── README.md
└── ruby-comparador/
    ├── bin/main.rb
    ├── lib/comparador.rb
    ├── spec/
    └── README.md
```

## Convenções adotadas

Todos os exercícios seguem o mesmo padrão:

- **`lib/`** — lógica de negócio (classes com métodos de classe)
- **`spec/`** — testes com RSpec (TDD)
- **`bin/main.rb`** — programa interativo no terminal
- **`require_relative`** — carrega a classe a partir do arquivo em `lib/`

### Fluxo de desenvolvimento (TDD)

1. Escrever o teste que falha (**Red**)
2. Implementar o mínimo para passar (**Green**)
3. Melhorar o código sem quebrar os testes (**Refactor**)

## Como usar um exercício

Entre na pasta do projeto desejado e siga o README específico. Exemplo:

```bash
cd ruby-par-impar
rspec
ruby bin/main.rb
```

```bash
cd ruby-comparador
rspec
ruby bin/main.rb
```

## Rodar todos os testes

Na raiz do repositório, execute o RSpec em cada projeto:

```bash
cd ruby-par-impar && rspec && cd ..
cd ruby-comparador && rspec && cd ..
```

## O que cada exercício cobre

### Ruby Par ou Ímpar

- Condicionais (`if` / `else`)
- Método `even?` do Ruby
- Números positivos, negativos e zero
- Loop interativo com opção de sair

### Ruby Comparador

- Comparação entre dois valores (`>`, `<`, `==`)
- Retorno de tipos diferentes (número inteiro ou string)
- Interpolação de strings na saída
- Validação de entrada (`s` / `n`) em loop

## Referências úteis

- [Ruby — Documentação oficial (PT)](https://www.ruby-lang.org/pt/documentation/)
- [RSpec — Documentação](https://rspec.info/documentation/)
- [Better Specs — Boas práticas de testes](https://www.betterspecs.org/)
