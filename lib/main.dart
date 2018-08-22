import 'package:flutter/material.dart';
//importamos os widgets do Flutter implementando o Material Design
//Resumidamente Material Design é uma linguagem visual (criada pelo Google) que contém componentes e diretrizes que dão apoio às melhores práticas de UI
//É flexível permitindo a customização e é aplicável a diferentes plataformas e dispositivos
//Eu diria que Material Design é uma especificação. Há várias implementações disponíveis atualmente

import 'package:english_words/english_words.dart';
//Pacote externo necessário para a geração de palavras em inglês
//É necessário adicionar uma dependência ao arquivo pubspec.yaml (veja a indicação no próprio arquivo)
//O arquivo pubspec.yaml gerencia todos os recursos e dependências da aplicação

//O aplicativo é executado a partir do método main()
void main() => runApp(new TestApp()); //Podemos usar esta expressão (=>) quando um método possuir uma única instrução
//A instrução acima faz exatamente a mesma coisa que o trecho abaixo:
//void main() {
//  runApp(TestApp());
//}

//A partir da linguagem Dart 2, a utilização de new é opcional para a instanciação de objetos

//O método runApp() aceita como parâmetro um objeto da classe Widget (classe abstrata)
//É importante observar que as classes StatelessWidget e StatefulWidget são filhas de Widget
//Nossa aplicação, portanto, é um widget. Em Flutter, quase tudo é um widget
//Os widgets foram construídos tomando como inspiração o framework React

class TestApp extends StatelessWidget {
  //StatelessWidget é uma classe abstrata e representa um widget que não precisa guardar estado (dados não são guardados entre chamadas diferentes ao método build)
  @override
  Widget build(BuildContext context) { //Método abstrado herdado de StatelessWidget
    // TODO: implement build
    final WordPair wordPair = WordPair.random(); //geramos aleatoriamente uma palavra em inglês composta de duas partes
    //O método build() deve descrever como o widget em questão deve ser exibido, em termos de outros widgets
    //O método build() retorna um MaterialApp (é um widget que permite construir outros widgets na raiz da aplicação)
    //Utilizar um MaterialApp como "widget raiz" é opcional, mas é uma boa prática, segundo a própria documentação
    return MaterialApp(
      title: 'Minha primeira aplicação em Flutter',
      home: Scaffold(
        //Scaffold é um widget (Implementa uma estrutura de leiaute básica de acordo com o Material Design)
        appBar: AppBar(
          title: Text('Bem vindo ao Flutter'), //título da barra no topo da tela
        ),
        body: Center(
            child: Text(wordPair.asPascalCase) //Mostraremos a palavra gerada no padrão PascalCase (iniciais maiúsculas)
        ),
      ),
      debugShowCheckedModeBanner: false, //Para não mostrar o banner "debug" no canto superior esquerdo da tela
    );
    //Deve-se observar que title, home e debugShowCheckedModeBanner são atributos de MaterialApp
    //Seus valores são definidos no construtor de MaterialApp (sintaxe bem diferente do Java)
    //Deve-se observar ainda que o valor do atributo home é um novo objeto (Scaffold), que contém os atributos appBar e body
  }
}
/*
Sobre Dart:

Unlike Java, Dart doesn’t have the keywords public, protected, and private. If an identifier starts with an underscore (_), it’s private to its library
https://www.dartlang.org/guides/language/language-tour
*/