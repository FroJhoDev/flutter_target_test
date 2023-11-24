[![Open Source](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://opensource.org/)
![Dart Version](https://img.shields.io/static/v1?label=dart&message=3.0.7&color=00579d)
![Flutter Version](https://img.shields.io/static/v1?label=flutter&message=3.13.8&color=42a5f5)
![Null Safety](https://img.shields.io/static/v1?label=null-safety&message=done&color=success)

# **🎯 Prova Flutter Target**

## ✅ Introdução

Projeto criado como teste para vaga de Desenvolvedor Mobile Flutter, para a empresa Target.

## 📃 Sobre

O projeto consiste em uma aplicação onde o usuário pode acessar usando nome de usuário e senha (que são validados usando a API [Dummy JSON](https://dummyjson.com/users)), caso as informações estiverem corretas, ele é redirecionado para a tela inicial. Na tela inicial um card é apresentado e mostra uma lista de registros, que podem ser adicionados através de um campo de input na parte inferior. A lista é salva em local storage e fica persistido mesmo que a aplicação seja fechada.

### Usuários e Senhas para Testes
- atuny0
- 9uQFF1Lh
---
- hbingley1
- CQutx25i8r
---
- rshawe2
- OWsTbMUgFc
### Recursos Presentes
* Login
* Listagem de Registros
* Cadastrar Novo Registro
* Deletar Registro
* Editar Registro
* Persistência de Informações

### Screenshots

<p align="middle">
<img src="https://github.com/FroJhoDev/flutter_target_test/blob/main/assets/images/target_01.png" width="40%">
<img src="https://github.com/FroJhoDev/flutter_target_test/blob/main/assets/images/target_02.png" width="40%">
</p>

## 🚀 Configurando para Utilizar

### Instalação Flutter


Para iniciar o projeto antes de mais nada certifique-se que o Flutter SDK está instalado e configurado corretamente em sua máquina e que está usando a versão mais recente. 

É possível fazer essa verificação utilizando o comando abaixo:
```
flutter doctor
```
Caso você não possua o Flutter instalado a [Documentação Oficial](https://docs.flutter.dev/get-started/install) oferece instruções detalhas de como fazer todas as configurações necessárias.

### Inicializando o Projeto


Atraves do terminal, faça o clone do repositorio em uma pasta usando o comando:

```
git clone https://github.com/FroJhoDev/flutter_target_test.git
```
Acesse a pasta com o comando:

```
cd flutter_target_test
```

Faça a instalação dos pacotes nescesarios:
```
flutter pub get
```
Abra o projeto útilizando o comando:
```
code .
```


---

> ## Basic Principles
* Components
* Interface Segregation Principle (ISP)
* Separation of Concerns (SOC)
* Don't Repeat Yourself (DRY)
* Keep It Simple, Silly (KISS)
* Small Commits

> ## Methodologies and Designs
* Clean Architecture
* GitFlow
* Modular Design
* Use Cases

> ## Packages and Tools
* Flutter
* Git
* Url Launcher
* Build Runner
* Flutter Mobx
* Mobx
* Mobx Codegen
* Shared Preferences
* Http

> ## Features Dart/Flutter
* Null Safety
* Classes
* Abstract Classes
* Functions
* Constants
* Mixins
* Extensions
* Enums
* Exceptions
* Futures
* Constructors
* Async/Await
* Stateless Widgets
* Stateful Widgets
* Material Theme