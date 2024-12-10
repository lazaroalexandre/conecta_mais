# Conecta Mais

Introdução ao Desenvolvimento de Aplicativos Móveis e Web com Flutter

## Descrição

Neste minicurso introdutório, os participantes terão a oportunidade de explorar o desenvolvimento de aplicativos utilizando o Flutter, uma das tecnologias mais promissoras e demandadas no mercado atual. O curso abordará desde a história e importância do Flutter no mercado até a implementação prática de um aplicativo de contatos, utilizando o padrão de arquitetura MVC (Model-View-Controller). Este minicurso é ideal para quem deseja dar os primeiros passos no desenvolvimento de aplicativos móveis e web, entendendo tanto os conceitos teóricos quanto as práticas essenciais para criar aplicações funcionais e eficientes. Venha descobrir como a ciência e a tecnologia podem transformar o cotidiano através do desenvolvimento de aplicativos!

## Conteúdo Programático
**1. Desenvolvimento de aplicativos**
   - O que é um aplicativo?
   - Como está o movimento do mercado de desenvolvimento de aplicativos?

**2. História e Importância do Flutter no Mercado:**
   - Evolução do Flutter e sua relevância no desenvolvimento de aplicativos.
   - Comparação com outras tecnologias de desenvolvimento mobile.

**3. Arquitetura MVC:**
   - Introdução ao padrão MVC e sua aplicação no Flutter.

**4. Desenvolvimento de um Aplicativo de Contatos:**
   - Listar/Filtrar Contatos: Implementação de funcionalidades para listar e filtrar contatos.
   - Criar Contatos: Adicionar novos contatos à lista.

**5. Gerência de Estado com ChangeNotifier:**
   - Introdução à gerência de estado no Flutter.
   - Implementação do ChangeNotifier para gerenciar o estado do aplicativo.

**6. Armazenamento Local com SharedPreferences:**
   - Utilização do SharedPreferences para armazenamento de dados localmente.

## Público Alvo:

- Pessoas interessadas em aprender a desenvolver aplicativos móveis e web com Flutter.
- Pessoas que possuem conhecimento em lógica de programação.
- Pessoas que sabem ou estão estudando Programação Orientada a Objetos (POO).
- Usuários que possuem smartphones com sistema operacional Android.

## Inicialização

Primeiramente, instale todas as configurações do flutter em sua máquina, caso já não esteja instalada. Siga a documentação: https://docs.flutter.dev/get-started/install

Após a configuração, volte ao projeto e execute os seguintes comandos no terminal:

- Habilite o git globalmente:
    - git config --global --add safe.directory '*'

- Baixar e instalar dependências:
    - flutter pub get

- Esolher o dispositivo:
    - flutter devices

- Rodar o aplicativo:
  - flutter run -d _nome_do_dispositivo_

## Observações

Caso esteja rodando o flutter pela primeira vez e não tenha conseguido instalar o aplicativo, faça as seguintes etapas:

- Vá até o arquivo chamado gradle.proerties:
  - android/gradle.properties

- Mude o caminho do distributionUrl para:
  - distributionUrl=https\://services.gradle.org/distributions/gradle-8.3-all.zip

- Se o problema persistir, crie um novo projeto flutter com a plataforma android, copie o caminho do distributionUrl e cole neste projeto flutter.