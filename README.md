# Be Talent - Challeng App

## 🔗 Table of Contents

- [📍 Overview](#-overview)
- [📁 Project Structure](#-project-structure)
  - [📂 Project Index](#-project-index)
- [🚀 Getting Started](#-getting-started)
  - [☑️ Prerequisites](#-prerequisites)
  - [⚙️ Installation](#-installation)
  - [🤖 Usage](#🤖-usage)
  - [🧪 Testing](#🧪-testing)
- [📌 Project Roadmap](#-project-roadmap)
- [🔰 Contributing](#-contributing)
- [🙌 Acknowledgments](#-acknowledgments)

---

## 📍 Overview

O BeTalent Challenge é uma aplicação Flutter que implementa uma visualização eficiente de dados de funcionários através de uma tabela expansível. O projeto foi desenvolvido como parte do desafio técnico da BeTalent, focando em boas práticas de desenvolvimento e uma arquitetura limpa.

---

### Principais Características

- **Design System Próprio**: Componentes reutilizáveis e padronização visual
- **Arquitetura em Camadas**: Organização clara e manutenibilidade
- **Pesquisa Inteligente**: Filtro por múltiplos campos (nome, cargo, telefone)
- **Formatação de Dados**: Padronização de datas e telefones no front-end
- **Tratamento de Estados**: Loading, erro e lista vazia
- **Client HTTP Customizado**: Encapsulamento do Dio para requisições

---



## 📁 Project Structure

```sh
└── be_talent_challeng_app.git/
    ├── README.md
    ├── analysis_options.yaml
    ├── android
    │   ├── .gitignore
    │   ├── app
    │   │   ├── build.gradle
    │   │   └── src
    │   │       ├── debug
    │   │       │   └── AndroidManifest.xml
    │   │       ├── main
    │   │       │   ├── AndroidManifest.xml
    │   │       │   ├── kotlin
    │   │       │   └── res
    │   │       └── profile
    │   │           └── AndroidManifest.xml
    │   ├── build.gradle
    │   ├── gradle
    │   │   └── wrapper
    │   │       └── gradle-wrapper.properties
    │   ├── gradle.properties
    │   └── settings.gradle
    ├── design_system
    │   ├── .gitignore
    │   ├── .metadata
    │   ├── README.md
    │   ├── analysis_options.yaml
    │   ├── assets
    │   │   └── images
    │   │       ├── photo_01.png
    │   │       ├── photo_02.png
    │   │       ├── photo_03.png
    │   │       ├── photo_04.png
    │   │       ├── photo_05.png
    │   │       ├── photo_06.png
    │   │       ├── photo_07.png
    │   │       ├── photo_08.png
    │   │       ├── photo_09.png
    │   │       ├── photo_10.png
    │   │       ├── photo_11.png
    │   │       └── photo_12.png
    │   ├── lib
    │   │   ├── design_system.dart
    │   │   └── src
    │   │       ├── components
    │   │       │   ├── app_bar_ds.dart
    │   │       │   ├── buttom_ds.dart
    │   │       │   ├── employee_card_ds.dart
    │   │       │   └── search_imput_ds.dart
    │   │       └── theme
    │   │           ├── colors_ds.dart
    │   │           ├── spacing_ds.dart
    │   │           └── typography_ds.dart
    │   ├── pubspec.lock
    │   └── pubspec.yaml
    ├── lib
    │   ├── main.dart
    │   └── src
    │       ├── app_widget.dart
    │       ├── core
    │       │   ├── config
    │       │   │   └── api_config.dart
    │       │   ├── exceptions
    │       │   │   └── app_exception.dart
    │       │   ├── logger
    │       │   │   ├── app_logger.dart
    │       │   │   └── logger_app_logger_impl.dart
    │       │   └── rest_client
    │       │       ├── dio
    │       │       ├── rest_client.dart
    │       │       ├── rest_client_exception.dart
    │       │       └── rest_client_response.dart
    │       ├── features
    │       │   └── employees
    │       │       ├── controller
    │       │       └── repository
    │       ├── models
    │       │   └── employee.dart
    │       ├── screens
    │       │   ├── home
    │       │   │   ├── components
    │       │   │   └── home_screen.dart
    │       │   └── splash_screen
    │       │       └── splash_screen.dart
    │       └── widgets
    │           ├── employees_list.dart
    │           └── notifications_app_bar.dart
    ├── pubspec.lock
    ├── pubspec.yaml
    └── windows
        ├── .gitignore
        ├── CMakeLists.txt
        ├── flutter
        │   ├── CMakeLists.txt
        │   ├── generated_plugin_registrant.cc
        │   ├── generated_plugin_registrant.h
        │   └── generated_plugins.cmake
        └── runner
            ├── CMakeLists.txt
            ├── Runner.rc
            ├── flutter_window.cpp
            ├── flutter_window.h
            ├── main.cpp
            ├── resource.h
            ├── resources
            │   └── app_icon.ico
            ├── runner.exe.manifest
            ├── utils.cpp
            ├── utils.h
            ├── win32_window.cpp
            └── win32_window.h
```

---
## 🚀 Getting Started

### ☑️ Prerequisites

Antes de começar com o BeTalent Challenge, certifique-se que seu ambiente atende aos seguintes requisitos:

- **Flutter**: Versão mais recente
- **Dart SDK**: Versão mais recente
- **JSON Server**: Para simular a API
- **Git**: Para controle de versão


### ⚙️ Installation

1. Clone o repositório:
```sh
git clone https://github.com/Barba2k2/be_talent_challeng_app.git
```

2. Navegue até o diretório do projeto:
```sh
cd be_talent_challeng_app
```

3. Instale as dependências:
```sh
flutter pub get
```

4. Instale e inicie o JSON Server:
```sh
npm i
npx json-server database.json
```

### 🤖 Usage

Para executar o projeto:

1. Certifique-se que o JSON Server está rodando
2. Execute o projeto:
```sh
flutter run
```


### 🧪 Testing

Para executar os testes:
```sh
flutter test
```

---

## 🔰 Contributing

- **💬 [Participe das Discussões](https://github.com/Barba2k2/be_talent_challeng_app.git/discussions)**: Compartilhe ideias e feedback
- **🐛 [Reporte Problemas](https://github.com/Barba2k2/be_talent_challeng_app.git/issues)**: Envie bugs encontrados ou sugestões
- **💡 [Envie Pull Requests](https://github.com/Barba2k2/be_talent_challeng_app.git/pulls)**: Contribua com código

### Guia de Contribuição

1. Faça um Fork do repositório
2. Crie uma branch para sua feature (`git checkout -b feature/NovaFeature`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/NovaFeature`)
5. Abra um Pull Request

---

## 🙌 Acknowledgments

- Oportunidade do desafio
- Comunidade Flutter pelo suporte

---