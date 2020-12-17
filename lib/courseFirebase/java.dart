import 'dart:collection';

import 'package:elearning_20/blocprovs/firebase_course_repository.dart';
import 'package:elearning_20/models/course.dart';
import 'package:elearning_20/models/user.dart';

class Java {
  final User user;

  Java(this.user);

  saveCourse() {
    FirebaseCourseRepository _firebaseCourseRepository =
        FirebaseCourseRepository();

    Map<String, Object> subTopicsTopic1 = HashMap();
    subTopicsTopic1['Sub Tema 1'] = {
      'title': 'Bienvenido a Java',
      'description':
          'Java es un lenguaje de programación moderno de alto nivel diseñado a principios de la década de 1990 por Sun Microsystems y actualmente propiedad de Oracle. Java es independiente de la plataforma, lo que significa que solo necesita escribir el programa una vez para poder ejecutarlo en varias plataformas diferentes. Java es portátil, robusto y dinámico, con la capacidad de adaptarse a las necesidades de prácticamente cualquier tipo de aplicación.',
      'example_code': '',
      'result': '',
      'tip':
          'Java garantiza que podrá escribir una vez, ejecutar en cualquier lugar.',
    };
    subTopicsTopic1['Sub Tema 2'] = {
      'title': 'Java',
      'description':
          'Más de 3 mil millones de dispositivos ejecutan Java. ¡Java se usa para desarrollar aplicaciones para el sistema operativo Android de Google, varias aplicaciones de escritorio, como reproductores multimedia, programas antivirus, aplicaciones web, aplicaciones empresariales (es decir, bancos) y muchas más!',
      'example_code': '',
      'result': '',
      'tip':
          '¡Aprenda, practique y luego únase a la gran comunidad de desarrolladores de Java de todo el mundo!',
    };

    Map<String, Object> subTopicsTopic2 = HashMap();
    subTopicsTopic2['Sub Tema 1'] = {
      'title': 'Tu primer programa Java',
      'description':
          'Comencemos creando un programa simple que imprima "Hello World" en la pantalla.',
      'example_code':
          'class MyClass { \n public static  void  main ( String [] args) { \n System.out.println ("Hola Mundo"); \n } \n }',
      'result':
          'En Java, cada línea de código que realmente puede ejecutarse debe estar dentro de una clase. En nuestro ejemplo, nombramos la clase MyClass. Aprenderá más sobre las clases en los próximos módulos. En Java, cada aplicación tiene un punto de entrada, o un punto de partida, que es un método llamado main. Junto con main, las palabras clave public y static también se explicarán más adelante.',
      'tip':
          'Como resumen: \n - Todos los programas en Java deben tener una clase. \n - Cada programa Java comienza desde el método principal.',
    };
    subTopicsTopic2['Sub Tema 2'] = {
      'title': 'El método principal',
      'description':
          'Para ejecutar nuestro programa, el método principal debe ser idéntico a esta firma:',
      'example_code': 'public static void main(String[ ] args)',
      'result':
          '- public: cualquiera puede acceder a él \n - static: el método se puede ejecutar sin crear una instancia de la clase que contiene el método principal \n - void: el método no devuelve ningún valor \n - main: el nombre del método',
      'tip':
          'Los parámetros del método se declaran dentro de los paréntesis que siguen al nombre del método. Para main, es una serie de cadenas llamadas args. Lo usaremos en nuestra próxima lección, así que no te preocupes si no lo entiendes todo ahora.',
    };
    subTopicsTopic2['Sub Tema 3'] = {
      'title': 'System.out.println()',
      'description':
          'El siguiente es el cuerpo del método principal, encerrado entre llaves:',
      'example_code': '{ \n System.out.println("Hello World!"); \n }',
      'result':
          'El método println imprime una línea de texto en la pantalla. La clase del sistema y su flujo de salida se utilizan para acceder al método println.',
      'tip':
          'En las clases, métodos y otras estructuras de control de flujo, el código siempre está encerrado entre llaves {}.',
    };
    subTopicsTopic2['Sub Tema 4'] = {
      'title': 'Punto y coma en Java',
      'description':
          'Puede pasar un texto diferente como parámetro al método println para imprimirlo.',
      'example_code':
          'class MyClass { \n public static void main(String[ ] args) { \n System.out.println("I am learning Java"); \n } \n }',
      'result':
          'En Java, cada instrucción de código debe terminar con un punto y coma.',
      'tip':
          'Recuerde: no use punto y coma después de las declaraciones de método y clase que siguen con el cuerpo definido usando las llaves.',
    };

    Map<String, Object> subTopicsTopic3 = HashMap();
    subTopicsTopic3['Sub Tema 1'] = {
      'title': 'Comentarios',
      'description':
          'El propósito de incluir comentarios en su código es explicar qué está haciendo el código. Java admite comentarios de una o varias líneas. El compilador de Java ignora todos los caracteres que aparecen dentro de un comentario. Un comentario de una sola línea comienza con dos barras diagonales y continúa hasta que llega al final de la línea. Por ejemplo:',
      'example_code':
          '// este es un comentario de una sola línea \n x = 5; // un comentario de una sola línea después del código',
      'result': '',
      'tip':
          'Adición de comentarios a medida que escribe el código es una buena práctica, ya que proporcionan una aclaración y comprensión cuando necesita volver a consultarlo, así como a otros que podrían necesitar leerlo.',
    };
    subTopicsTopic3['Sub Tema 2'] = {
      'title': 'Comentarios multilínea',
      'description':
          'Java también admite comentarios que abarcan varias líneas. Comienza este tipo de comentario con una barra diagonal seguida de un asterisco y termina con un asterisco seguido de una barra diagonal.',
      'example_code':
          '/* \n Este también es un \n comentario que abarca \n varias líneas */',
      'result':
          'Tenga en cuenta que Java no admite comentarios anidados de varias líneas. Sin embargo, puede anidar comentarios de una sola línea dentro de los comentarios de varias líneas.',
      'tip':
          'Otro nombre para un comentario de varias líneas es un comentario de bloque.',
    };
    subTopicsTopic3['Sub Tema 3'] = {
      'title': 'Comentarios de documentación',
      'description':
          'Los comentarios de documentación son comentarios especiales que tienen la apariencia de comentarios de varias líneas, con la diferencia de que generan documentación externa de su código fuente. Estos comienzan con una barra diagonal seguida de dos asteriscos y terminan con un asterisco seguido de una barra diagonal.',
      'example_code':
          '/** Este es un comentario de documentación */ \n \n /** Esto también es un \n comentario de documentación */',
      'result':
          'Javadoc es una herramienta que viene con JDK y se usa para generar documentación de código Java en formato HTML a partir de código fuente Java que tiene documentación requerida en un formato predefinido.',
      'tip':
          'Esto retendrá solo el texto "Este es el comienzo de un método " para la documentación.',
    };

    Map<String, Object> subTopicsTopic4 = HashMap();
    subTopicsTopic4['Sub Tema 1'] = {
      'title': 'Variables',
      'description':
          'Las variables almacenan datos para su procesamiento. A una variable se le da un nombre (o identificador ), como área, edad, altura y similares. El nombre identifica de forma única cada variable, asigna un valor a la variable y recupera el valor almacenado. \n Las variables tienen tipos. Algunos ejemplos: \n - int: para enteros (números enteros) como 123 y -456 \n - double: para números de punto flotante o reales con puntos decimales opcionales y partes fraccionarias en notaciones fijas o científicas, como 3.1416, -55.66. \n - String: para textos como "Hola" o "¡Buenos días!". Las cadenas de texto están encerradas entre comillas dobles.',
      'example_code': 'String name = "David";',
      'result':
          'Esto crea una variable llamada nombre de tipo String y le asigna el valor "David".',
      'tip':
          'Es importante tener en cuenta que una variable está asociada a un tipo y solo es capaz de almacenar valores de ese tipo en particular. Por ejemplo, una variable int puede almacenar valores enteros, como 123; pero no puede almacenar números reales, como 12.34, o textos, como "Hola".',
    };
    subTopicsTopic4['Sub Tema 2'] = {
      'title': 'Variables',
      'description': 'Ejemplos de declaraciones variables:',
      'example_code':
          'class MyClass { \n public static  void main ( String [] args) { \n String name = "David"; \n int edad = 42; \n double puntaje = 15.9; \n char grupo = "Z"; \n } \n }',
      'result':
          'char significa personaje y tiene un solo personaje. \n Otro tipo es eltipo booleano, que tiene solo dos valores posibles: verdadero y falso. Este tipo de datos se usa para indicadores simples que rastrean condiciones verdaderas/falsas.',
      'tip':
          'Puede usar una lista separada por comas para declarar más de una variable del tipo especificado. Ejemplo: int a = 42, b = 11;',
    };

    Map<String, Object> subTopicsTopic5 = HashMap();
    subTopicsTopic5['Sub Tema 1'] = {
      'title': 'Los operadores matemáticos',
      'description':
          'Java proporciona un amplio conjunto de operadores para usar en la manipulación de variables. Un valor usado a cada lado de un operador se llama operando. Por ejemplo, en la siguiente expresión, los números 6 y 3 son operandos del operador más:',
      'example_code': 'int x = 6 + 3;',
      'result':
          'Operadores aritméticos de Java: \n + adición \n - resta \n * multiplicación \n / division \n % módulo',
      'tip':
          'Operadores aritméticos se usan en expresiones matemáticas de la misma manera que se usan en ecuaciones algebraicas.',
    };
    subTopicsTopic5['Sub Tema 2'] = {
      'title': 'Adición',
      'description':
          'El operador + suma dos valores, como dos constantes, una constante y una variable, o una variable y una variable. Aquí hay algunos ejemplos de suma:',
      'example_code':
          'int sum1 = 50 + 10; \n int sum2 = sum1 + 66; \n int sum3 = sum2 + sum2;',
      'result': 'Sustracción \n El operador - resta un valor de otro.',
      'tip':
          'Al igual que en álgebra, puede usar ambas operaciones en una sola línea. Por ejemplo: int val = 10 + 5 - 2;',
    };
    subTopicsTopic5['Sub Tema 3'] = {
      'title': 'Multiplicación',
      'description': 'El operador * multiplica dos valores.',
      'example_code':
          'int sum1 = 1000 * 2; \n int sum2 = sum1 * 10; \n int sum3 = sum1 * sum2;',
      'result': 'División \n El operador / divide un valor por otro.',
      'tip': '',
    };
    subTopicsTopic5['Sub Tema 4'] = {
      'title': 'Módulo',
      'description':
          'La operación matemática de módulo (o resto) realiza una división entera de un valor por otro, y devuelve el resto de esa división. El operador para la operación de módulo es el carácter de porcentaje (%).',
      'example_code': 'int valor = 23; \n int res = valor % 6; \n res es 5',
      'result': '',
      'tip':
          'Dividir 23 entre 6 devuelve un cociente de 3, con un resto de 5. Por lo tanto, el valor de 5 se asigna a la variable res.',
    };

    Map<String, Object> subTopicsTopic6 = HashMap();
    subTopicsTopic6['Sub Tema 1'] = {
      'title': 'Operadores de incremento',
      'description':
          'Un incremento o decremento del operador proporciona una manera más conveniente y compacto para aumentar o disminuir el valor de una variable por uno. Por ejemplo, la declaración x = x + 1; se puede simplificar a ++ x;',
      'example_code': 'int test = 5;  \n ++ prueba; // la prueba es ahora 6',
      'result':
          'El operador de disminución (-) se utiliza para disminuir el valor de una variable en uno.',
      'tip': 'Use este operador con precaución para evitar errores de cálculo.',
    };
    subTopicsTopic6['Sub Tema 2'] = {
      'title': 'Prefijo y Postfijo',
      'description':
          'Se pueden usar dos formas, prefijo y postfijo , con los operadores de incremento y decremento. Con la forma de prefijo, el operador aparece antes del operando, mientras que en forma de postfijo, el operador aparece después del operando. A continuación hay una explicación de cómo funcionan las dos formas: Prefijo: Incrementa el valor de la variable y usa el nuevo valor en la expresión. \n Postfijo:  el valor de la variable se usa primero en la expresión y luego se incrementa.',
      'example_code':
          'int x = 34; \n int y = ++ x ; // y es 35 \n int x = 34; \n int y = x ++ ; // y es 34',
      'result':
          'x se asigna primero a y, y luego se incrementa en uno. Por lo tanto, x se convierte en 35, mientras que a y se le asigna el valor de 34.',
      'tip': 'Lo mismo se aplica al operador de disminución.',
    };
    subTopicsTopic6['Sub Tema 3'] = {
      'title': 'Operadores de Asignación',
      'description':
          'Esto asignó el valor 5 a una variable llamada valor de tipo int. \n \n Java proporciona varios operadores de asignación para que sea más fácil escribir código. Suma y asignación (+ =): \n Resta y asignación (- =):',
      'example_code':
          'int num1 = 4; \n int num2 = 8; \n num2 + = num1; // num2 = num2 + num1 \n \n // num2 es 12 y num1 es 4',
      'result':
          'Ya está familiarizado con el operador de asignación (=), que asigna un valor a una variable.',
      'tip':
          'Del mismo modo, Java admite multiplicación y asignación (* =), división y asignación (/ =), y resto y asignación (% =).',
    };

    Map<String, Object> subTopicsTopic7 = HashMap();
    subTopicsTopic7['Sub Tema 1'] = {
      'title': 'Strings',
      'description':
          'Una cadena es un objeto que representa una secuencia de caracteres. \n Por ejemplo, "Hola" es una cadena de 5 caracteres.',
      'example_code': 'String  s = "eLearning"; ',
      'result': '',
      'tip':
          'Se le permite definir una cadena vacía. Por ejemplo, String str = "";',
    };
    subTopicsTopic7['Sub Tema 2'] = {
      'title': 'Concatenación de Strings',
      'description':
          'El operador + (más) entre cadenas las agrega para formar una nueva cadena. Este proceso se llama concatenación. La cadena resultante es la primera cadena junto con la segunda cadena.',
      'example_code':
          'String primerNombre, segundoNombre; \n primerNombre = "Daniel"; \n segundoNombre = "Levano"; \n \n System.out.println("Mi nombre es " + primerNombre +" "+segundoNombre); \n \n // Resultado: Mi nombre es Daneil Levano',
      'result': '',
      'tip': 'El tipo de datos char representa un solo carácter.',
    };

    Map<String, Object> subTopicsTopic8 = HashMap();
    subTopicsTopic8['Sub Tema 1'] = {
      'title': 'Obteniendo la entrada del usuario',
      'description':
          'Si bien Java proporciona muchos métodos diferentes para obtener la entrada del usuario, el objeto Scanner es el más común y quizás el más fácil de implementar. Importe la clase Scanner para usar el objeto Scanner. \n Para utilizar la clase Scanner , cree una instancia de la clase utilizando la siguiente sintaxis:',
      'example_code':
          'import java.util.Scanner; \n \n class MyClase { \n public static  void main ( String [] args) { \n Scanner myVar = new Scanner (System.in); \n System.out.println (myVar.nextLine ()); \n } \n}',
      'result':
          'Ahora puede leer en diferentes tipos de datos de entrada que ingresa el usuario. Aquí hay algunos métodos que están disponibles a través de la clase Scanner: \n Leer un byte - nextByte() \n Leer un short - nextShort() \n Leer un int - nextInt() \n Leer un long - nextLong() \n Leer un flot - nextFloat() \n Leer un double - nextDouble() \n Leer un booleano - nextBoolean() \n Leer una línea completa - nextLine() \n Leer una palabra - next()',
      'tip':
          'Esto esperará a que el usuario ingrese algo e imprima esa entrada. \n El código puede parecer complejo, pero lo comprenderá todo en las próximas lecciones.',
    };

    Map<String, Object> questionsUnit1 = HashMap();
    questionsUnit1['Pregunta 1'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=1 \n a=((a+b)*c2)/2 \n b=(b+a+c)/b \n c=(a+b+c+d)*2 \n d=(a*b)+(b*c)d+2 \n d=?',
      'response_correct': '4',
    };
    questionsUnit1['Pregunta 2'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=1,b=2,c=3 \n a=((a+b+c)*b)/c \n b=b+c+4b*c \n c=b+c+42/2 \n c=a+b+c \n c=?',
      'response_correct': '13',
    };
    questionsUnit1['Pregunta 3'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=5 \n a=((a*c)−(c*c))*c \n c=((a+c)*(c+c)*(c+d))3 \n c=((c+a+d+b)*3)/d \n d=a+b+c \n d=?',
      'response_correct': '13',
    };
    questionsUnit1['Pregunta 4'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=5 \n a=((a*c)−(c*c))*c \n c=((a+c)*(c+c)*(c+d))3 \n c=((c+a+d+b)*3)/d \n d=a+b+c \n d=?',
      'response_correct': '13',
    };

    Map<String, Object> topicsUnit1 = HashMap();
    topicsUnit1['Tema 1'] = {
      'title': 'Introducción a Java',
      'sub_topics': subTopicsTopic1
    };
    topicsUnit1['Tema 2'] = {
      'title': 'Un programa "Hola Mundo"',
      'sub_topics': subTopicsTopic2
    };
    topicsUnit1['Tema 3'] = {
      'title': 'Comentarios en Java',
      'sub_topics': subTopicsTopic3
    };
    topicsUnit1['Tema 4'] = {
      'title': 'Variables',
      'sub_topics': subTopicsTopic4
    };
    topicsUnit1['Tema 5'] = {
      'title': 'Operadores Primitivos',
      'sub_topics': subTopicsTopic5
    };
    topicsUnit1['Tema 6'] = {
      'title': 'Incremento y Decremento',
      'sub_topics': subTopicsTopic6
    };
    topicsUnit1['Tema 7'] = {
      'title': 'Strings',
      'sub_topics': subTopicsTopic7,
    };
    topicsUnit1['Tema 8'] = {
      'title': 'Obtener entradas del usuario',
      'sub_topics': subTopicsTopic8
    };
    topicsUnit1['Tema 9'] = {
      'title': 'Módulo 1 Exámen',
      'questions': questionsUnit1,
      'total_score': 100,
      'score_user': 0,
      'approved': false,
    };

    Map<String, Object> subTopicsTopic21 = HashMap();
    subTopicsTopic21['Sub Tema 1'] = {
      'title': 'Toma de decisiones',
      'description':
          'Las declaraciones condicionales se utilizan para realizar diferentes acciones basadas en diferentes condiciones.La declaración if es una de las declaraciones condicionales más utilizadas. Si la expresión de condición de la instrucción if se evalúa como verdadera, se ejecuta el bloque de código dentro de la instrucción if . Si se encuentra que la expresión es falsa, se ejecuta el primer conjunto de código después del final de la instrucción if (después de la llave de cierre).',
      'example_code':
          'if (condición) { \n // Se ejecuta cuando la condición es verdadera \n }',
      'result':
          'Se puede usar cualquiera de los siguientes operadores de comparación para formar la condición: \n < menor que \n >mayor que \n ! = no igual a \n == igual a \n <= menor que o igual a \n > = mayor que o igual a',
      'tip':
          'Recuerde que necesita usar dos signos iguales ( == ) para probar la igualdad, ya que un solo signo igual es el operador de asignación.',
    };
    subTopicsTopic21['Sub Tema 2'] = {
      'title': 'Declaraciones if...else',
      'description':
          'Una instrucción if puede ser seguida por una instrucción else opcional, que se ejecuta cuando la condición se evalúa como falsa.',
      'example_code':
          'int edad = 30; \n \nif (edad <16) { \n\t System.out.println ("Demasiado joven"); \n} else { \n \tSystem.out.println ("¡Bienvenido!"); \n} \n// Salidas "¡Bienvenido!"',
      'result': '',
      'tip':
          'Como la edad es igual a 30, la condición en la instrucción if se evalúa como falsa y se ejecuta la instrucción else.',
    };

    Map<String, Object> subTopicsTopic22 = HashMap();
    subTopicsTopic22['Sub Tema 1'] = {
      'title': 'Anidado declaraciones if',
      'description':
          'Puede usar una declaración if-else dentro de otra declaración if o else.',
      'example_code':
          'int edad = 25; \n \nif (age> 0) { \n \tif (age> 16) { \n \tSystem.out.println ("¡Bienvenido!"); \n} else { \n \tSystem.out.println ("Demasiado joven"); \n} \n} else { \n \tSystem.out.println ("Error"); \n} \n// Salidas "¡Bienvenido!"',
      'result': '',
      'tip': 'Puede anidar tantas declaraciones if-else como desee.',
    };

    Map<String, Object> subTopicsTopic23 = HashMap();
    subTopicsTopic23['Sub Tema 1'] = {
      'title': 'Declaraciones if-else',
      'description':
          'En lugar de usar instrucciones if-else anidadas, puede usar la declaración else if para verificar múltiples condiciones.',
      'example_code':
          'int edad = 25; \n \nif (edad <= 0) { \n \tSystem.out.println ("Error"); \n} else if (edad <= 16) { \n \tSystem.out.println ("Demasiado joven"); \n} else if (edad <100) { \nSystem.out.println ("¡Bienvenido!"); \n \t} else { \n \tSystem.out.println ("¿En serio"); \n} \n// Salidas "¡Bienvenido!"',
      'result':
          'El código verificará la condición para evaluar a verdadero y ejecutar las declaraciones dentro de ese bloque.',
      'tip': 'Puede incluir tantas otras declaraciones if como necesite.',
    };

    Map<String, Object> subTopicsTopic24 = HashMap();
    subTopicsTopic24['Sub Tema 1'] = {
      'title': 'Operadores lógicos',
      'description':
          'Los operadores lógicos se utilizan para combinar múltiples condiciones. Digamos que desea que su programa muestre "¡Bienvenido!" solo cuando la edad variable es mayor de 18 años y el dinero variable es mayor de 500.',
      'example_code':
          'if (edad> 18) { \nif (dinero> 500) { \n \tSystem.out.println ("¡Bienvenido!"); \n} \n}',
      'result':
          'Sin embargo, usar el operador lógico AND ( && ) es una mejor manera.',
      'tip':
          'Si ambos operandos del operador AND son verdaderos, entonces la condición se vuelve verdadera.',
    };
    subTopicsTopic24['Sub Tema 2'] = {
      'title': 'El operador OR',
      'description':
          'El operador OR (||) verifica si alguna de las condiciones es verdadera. La condición se vuelve verdadera, si alguno de los operandos se evalúa como verdadero.',
      'example_code':
          'int edad = 25; \nint dinero = 100; \n \nif (edad> 18 || dinero> 500) { \n \tSystem.out.println ("¡Bienvenido!"); \n} \n// Salidas "¡Bienvenido!"',
      'result':
          'El código anterior imprimirá "¡Bienvenido!" si la edad es mayor de 18 años o si el dinero es mayor de 500. \n \nEl operador lógico NOT ( ! ) se utiliza para invertir el estado lógico de su operando. Si una condición es verdadera, el operador NO lógico la hará falsa.',
      'tip': '!(edad> 18) se lee como "si la edad NO es mayor de 18".',
    };

    Map<String, Object> subTopicsTopic25 = HashMap();
    subTopicsTopic25['Sub Tema 1'] = {
      'title': 'La declaración switch',
      'description':
          'Una instrucción switch prueba la igualdad de una variable contra una lista de valores. Cada valor se llama un caso , y la variable que se activa se verifica para cada caso.',
      'example_code':
          'switch (expression) {\n \tcase value1 : \n//Declaraciones \nbreak; //opcional \ncase value2 : \n//Declaraciones \nbreak; //opcional \n//Puede tener cualquier número de declaraciones de caso. \ndefault : //Opcional \n \t//Declaraciones  \n}',
      'result':
          '- Cuando la variable que se activa es igual a un caso, las instrucciones que siguen a ese caso se ejecutarán hasta quese alcanza la declaración de ruptura. \n- Cuando una ruptura se alcanza comunicado, el interruptor termina, y el flujo de control salta a la siguiente línea después de que el interruptor de declaración. \n- No todos los casos deben contener un descanso. Si no aparece una interrupción, el flujo de control pasará a los casos posteriores hasta que se alcance una interrupción.',
      'tip':
          'Puede tener cualquier número de declaraciones de caso dentro de un interruptor. Cada caso es seguido por el valor de comparación y dos puntos.',
    };
    subTopicsTopic25['Sub Tema 2'] = {
      'title': 'La declaración default',
      'description':
          'Una declaración de cambio puede tener un caso predeterminado opcional. El caso predeterminado se puede utilizar para realizar una tarea cuando ninguno de los casos coincide.',
      'example_code':
          'int día = 3; \n \nswitch (día) { \n \tcaso 6: \n \tSystem.out.println("Sábado"); \nbreak; \ncaso 7: \nSystem.out.println("domingo"); \nbreak; \ndefault : \n \t System.out.println("Día de la semana"); \n} \n// Salidas "Entre semana"',
      'result': '',
      'tip':
          'No se necesita interrupción en el caso predeterminado, ya que siempre es la última instrucción en el conmutador.',
    };

    Map<String, Object> subTopicsTopic26 = HashMap();
    subTopicsTopic26['Sub Tema 1'] = {
      'title': 'Bucles while',
      'description':
          'Una declaración de bucle permite ejecutar repetidamente una declaración o grupo de declaraciones. \nUna instrucción de bucle while ejecuta repetidamente una instrucción de destino siempre que una condición dada sea verdadera.',
      'example_code':
          'int x = 3; \n \nwhile (x> 0) { \n \tSystem.out.println (x); \nX--; \n} \n/* \nSalidas \n \t3 \n2 \n1 \n*/',
      'result':
          'Las mientras que los bucles de verificación de la condición x> 0. Si se evalúa como cierta, se ejecutan las instrucciones dentro de su cuerpo. Luego verifica la declaración nuevamente y se repite.',
      'tip':
          'Observe la afirmación x--. Esto disminuye x cada vez que se ejecuta el ciclo y hace que el ciclo se detenga cuando x llega a 0. \nSin la instrucción, el ciclo se ejecutará para siempre.',
    };
    subTopicsTopic26['Sub Tema 2'] = {
      'title': 'Bucles while',
      'description':
          'Cuando se prueba la expresión y el resultado es falso, se omite el cuerpo del bucle y se ejecuta la primera instrucción después del bucle while.',
      'example_code':
          'int x = 6; \n \nwhile(x <10) \n{ \n \tSystem.out.println(x); \nx++; \n} \nSystem.out.println("Bucle terminado"); \n \n/* \n 6 \n7 \n8 \n9 \nBucle terminado \n*/',
      'result': '',
      'tip':
          'Observe que el último método de impresión está fuera del alcance while.',
    };

    Map<String, Object> subTopicsTopic27 = HashMap();
    subTopicsTopic27['Sub Tema 1'] = {
      'title': 'Bucles for',
      'description':
          'Otra estructura de bucle es el bucle for . Un bucle for le permite escribir eficientemente un bucle que necesita ejecutarse un número específico de veces.',
      'example_code':
          'for (inicialización; condición; incremento / decremento) { \n \tinstrucción(es)) \n}',
      'result':
          'Inicialización : la expresión se ejecuta solo una vez durante el comienzo del ciclo. \nCondición : se evalúa cada vez que el ciclo se repite. El bucle ejecuta la declaración repetidamente, hasta que esta condición devuelva falso. \nIncremento / Decremento : se ejecuta después de cada iteración del bucle.',
      'tip':
          'Observe el punto y coma (;) después de la inicialización y la condición en la sintaxis.',
    };
    subTopicsTopic27['Sub Tema 2'] = {
      'title': 'Bucles for',
      'description':
          'Puede tener cualquier tipo de condición y cualquier tipo de declaraciones de incremento en el ciclo for. \nEl siguiente ejemplo imprime solo los valores pares entre 0 y 10:',
      'example_code':
          'for ( int x = 0; x <= 10; x = x + 2) { \n \tSystem.out.println (x); \} \n/* \n 0 \n2 \n4 \n6 \n8 \n10 \n*/',
      'result': '',
      'tip':
          'Un bucle for es mejor cuando se conocen los números iniciales y finales.',
    };

    Map<String, Object> subTopicsTopic28 = HashMap();
    subTopicsTopic28['Sub Tema 1'] = {
      'title': 'Bucles for',
      'description':
          'Un bucle do...while  es similar a un tiempo de bucle, con la excepción de que un bucle do...while está garantizada para ejecutar al menos una vez.',
      'example_code':
          'int x = 1; \ndo { \n \tSystem.out.println(x); \nx++; \n} while (x < 5); \n \n/* \n 1 \n2 \n3 \n4 \n*/',
      'result':
          'Observe que la condición aparece al final del ciclo, por lo que las declaraciones en el ciclo se ejecutan una vez antes de que se pruebe.\nIncluso con una condición falsa, el código se ejecutará una vez',
      'tip':
          'Tenga en cuenta que en bucles do… while, el while es solo la condición y no tiene un cuerpo en sí mismo.',
    };
    subTopicsTopic28['Sub Tema 2'] = {
      'title': 'Declaraciones de control de bucle',
      'description':
          'Las instrucciones break y continue cambian el flujo de ejecución del ciclo.\nLa ruptura comunicado termina la ejecución del bucle y las transferencias a la cuenta inmediatamente después del bucle.',
      'example_code':
          'int x = 1;\n \nwhile(x > 0) { \n System.out.println(x); \n \tif (x == 4) { \n \tbreak; \n}\nx++; \n} \n \n/* Salidas \n1 \n2 \n3 \n4 \n*/',
      'result':
          'La declaración de continuación hace que el ciclo omita el resto de su cuerpo y luego vuelva a probar de inmediato su condición antes de reiterar. En otras palabras, hace que el ciclo salte a su próxima iteración.',
      'tip':
          'Como puede ver, el código anterior omite el valor de 30, como lo indica la instrucción continue.',
    };

    Map<String, Object> questionsUnit2 = HashMap();
    questionsUnit2['Pregunta 1'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=1 \n a=((a+b)*c2)/2 \n b=(b+a+c)/b \n c=(a+b+c+d)*2 \n d=(a*b)+(b*c)d+2 \n d=?',
      'response_correct': '4',
    };
    questionsUnit2['Pregunta 2'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=1,b=2,c=3 \n a=((a+b+c)*b)/c \n b=b+c+4b*c \n c=b+c+42/2 \n c=a+b+c \n c=?',
      'response_correct': '13',
    };
    questionsUnit2['Pregunta 3'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=5 \n a=((a*c)−(c*c))*c \n c=((a+c)*(c+c)*(c+d))3 \n c=((c+a+d+b)*3)/d \n d=a+b+c \n d=?',
      'response_correct': '13',
    };
    questionsUnit2['Pregunta 4'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=5 \n a=((a*c)−(c*c))*c \n c=((a+c)*(c+c)*(c+d))3 \n c=((c+a+d+b)*3)/d \n d=a+b+c \n d=?',
      'response_correct': '13',
    };

    Map<String, Object> topicsUnit2 = HashMap();
    topicsUnit2['Tema 1'] = {
      'title': 'Declaraciones condicionales',
      'sub_topics': subTopicsTopic21,
    };
    topicsUnit2['Tema 2'] = {
      'title': 'Anidando declaraciones if',
      'sub_topics': subTopicsTopic22,
    };
    topicsUnit2['Tema 3'] = {
      'title': 'Declaraciones if-else',
      'sub_topics': subTopicsTopic23
    };
    topicsUnit2['Tema 4'] = {
      'title': 'Declaraciones lógicas',
      'sub_topics': subTopicsTopic24
    };
    topicsUnit2['Tema 5'] = {
      'title': 'La declaración switch',
      'sub_topics': subTopicsTopic25
    };
    topicsUnit2['Tema 6'] = {
      'title': 'Bucles while',
      'sub_topics': subTopicsTopic26
    };
    topicsUnit2['Tema 7'] = {
      'title': 'Bucles for',
      'sub_topics': subTopicsTopic27,
    };
    topicsUnit2['Tema 8'] = {
      'title': 'Bucles do...while',
      'sub_topics': subTopicsTopic28
    };
    topicsUnit2['Tema 9'] = {
      'title': 'Módulo 2 Exámen',
      'questions': questionsUnit2,
      'total_score': 100,
      'score_user': 0,
      'approved': false,
    };

    Map<String, Object> subTopicsTopic31 = HashMap();
    subTopicsTopic31['Sub Tema 1'] = {
      'title': 'Matrices',
      'description':
          'Una matriz es una colección de variables del mismo tipo.\nCuando necesite almacenar una lista de valores, como números, puede almacenarlos en una matriz, en lugar de declarar variables separadas para cada número.\nPara declarar una matriz, debe definir el tipo de elementos con corchetes.\nEl nombre de la matriz es arr. El tipo de elementos que contendrá es int. \n \nAhora, necesitas definir la matrizLa capacidad o la cantidad de elementos que contendrá. Para lograr esto, use la palabra clave new.\n \nEl código anterior declara una matriz de 5 enteros.\nEn una matriz, los elementos están ordenados y cada uno tiene una posición específica y constante, que se denomina índice.\n \nPara hacer referencia a elementos en una matriz, escriba el nombre de la matriz seguido de la posición del índice dentro de un par de corchetes.',
      'example_code': 'int[] arr;\nint[] arr = new int[5];\narr[2] = 42; ',
      'result': '',
      'tip':
          'Tenga en cuenta que los elementos de la matriz se identifican con números de índice basados ​​en cero, lo que significa que el índice del primer elemento es 0 en lugar de uno. Entonces, el índice máximo de la matriz int [5] es 4.',
    };
    subTopicsTopic31['Sub Tema 2'] = {
      'title': 'Inicializando matrices',
      'description':
          'Java proporciona un acceso directo para crear instancias de matrices de tipos y cadenas primitivos. \nSi ya sabe qué valores insertar en la matriz , puede usar un literal de matriz.',
      'example_code':
          'String[] misNombres = { "A", "B", "C", "D"}; \nSystem.out.println(misNombres[2]); \n \n// Outputs "C"',
      'result':
          'Coloque los valores en una lista separada por comas , encerrada entre llaves. \nEl código anterior inicializa automáticamente una matriz que contiene 4 elementos y almacena los valores proporcionados.',
      'tip':
          'A veces puede ver los corchetes colocados después del nombre de la matriz, que también funciona, pero la forma preferida es colocar los corchetes después del tipo de datos de la matriz.',
    };
    Map<String, Object> subTopicsTopic32 = HashMap();
    subTopicsTopic32['Sub Tema 1'] = {
      'title': 'Longitud de la matriz',
      'description':
          'Puede acceder a la longitud de una matriz (el número de elementos que almacena) a través de su propiedad de longitud.',
      'example_code':
          'int[] intArr = new int [5];\nSystem.out.println(intArr.length); \n \n// Salidas 5',
      'result': '',
      'tip':
          'No olvide que en las matrices, los índices comienzan desde 0. Entonces, en el ejemplo anterior, el último índice es 4.',
    };
    subTopicsTopic32['Sub Tema 2'] = {
      'title': 'Matrices',
      'description':
          'Ahora que sabemos cómo establecer y obtener elementos de la matriz, podemos calcular la suma de todos los elementos en una matriz mediante el uso de bucles. \nEl bucle for es el bucle más utilizado cuando se trabaja con matrices, ya que podemos usar la longitud de la matriz para determinar cuántas veces ejecutar el bucle.',
      'example_code':
          'int[] myArr = {6, 42, 3, 7}; \nint suma = 0; \nfor ( int x = 0; x <myArr.length; x ++) { \n \tsum + = myArr [x]; \n} \nSystem.out.println (suma); \n \n// 58',
      'result':
          'En el código anterior, declaramos una suma de variables para almacenar el resultado y le asignamos 0. \n Luego, usamos un bucle for para iterar a través de la matriz y agregamos el valor de cada elemento a la variable.',
      'tip':
          'La condición del bucle for es x < myArr.length, ya que el índice del último elemento es myArr.length-1.',
    };
    Map<String, Object> subTopicsTopic33 = HashMap();
    subTopicsTopic33['Sub Tema 1'] = {
      'title': 'Mejorado para Loop',
      'description':
          'El bucle for mejorado (a veces llamado bucle "para cada") se usa para atravesar elementos en matrices. \nLas ventajas son que elimina la posibilidad de errores y hace que el código sea más fácil de leer.',
      'example_code':
          'int [] primos = {2, 3, 5, 7}; \n \nfor ( int t: primes) { \n \tSystem.out.println (t); \n} \n \n/* \n2 \n3 \n5 \n7 \n*/',
      'result':
          'El bucle for mejorado declara una variable de un tipo compatible con los elementos de la matriz a la que se accede. La variable estará disponible dentro del bloque for, y su valor será el mismo que el elemento de matriz actual. \nEntonces, en cada iteración del ciclo, la variable t será igual al elemento correspondiente en la matriz.',
      'tip': 'Observe los dos puntos después de la variable en la sintaxis.',
    };
    Map<String, Object> subTopicsTopic34 = HashMap();
    subTopicsTopic34['Sub Tema 1'] = {
      'title': 'Matrices Multidimensionales',
      'description':
          'Las matrices multidimensionales son matrices que contienen otras matrices. La matriz bidimensional es la matriz multidimensional más básica.\nPara crear matrices multidimensionales, coloque cada matriz dentro de su propio conjunto de corchetes.',
      'example_code': 'int [] [] muestra = {{1, 2, 3}, {4, 5, 6}}',
      'result':
          'Esto declara una matriz con dos matrices como sus elementos. \nPara acceder a un elemento en la matriz bidimensional, proporcione dos índices, uno para la matriz y otro para el elemento dentro de esa matriz.',
      'tip':
          'Los dos índices de la matriz se denominan índice de fila e índice de columna.',
    };
    subTopicsTopic34['Sub Tema 2'] = {
      'title': 'Matrices Multidimensionales',
      'description':
          'Puede obtener y establecer los elementos de una matriz multidimensional utilizando el mismo par de corchetes.',
      'example_code':
          'int [] [] myArr = {{1, 2, 3}, {4}, {5, 6, 7}}; \nmyArr [0] [2] = 42; \nint x = myArr [1] [0]; // 4',
      'result':
          'La matriz bidimensional anterior contiene tres matrices. El primer conjunto tiene tres elementos, el segundo tiene un solo elemento y el último tiene tres elementos.',
      'tip':
          'En Java, no está limitado a solo matrices bidimensionales. Las matrices se pueden anidar dentro de las matrices en tantos niveles como lo necesite su programa. Todo lo que necesita para declarar una matriz con más de dos dimensiones es agregar tantos conjuntos de corchetes vacíos como sea necesario. Sin embargo, estos son más difíciles de mantener. \nRecuerde que todos los miembros de la matriz deben ser del mismo tipo.',
    };
    Map<String, Object> questionsUnit3 = HashMap();
    questionsUnit3['Pregunta 1'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=1 \n a=((a+b)*c2)/2 \n b=(b+a+c)/b \n c=(a+b+c+d)*2 \n d=(a*b)+(b*c)d+2 \n d=?',
      'response_correct': '4',
    };
    questionsUnit3['Pregunta 2'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=1,b=2,c=3 \n a=((a+b+c)*b)/c \n b=b+c+4b*c \n c=b+c+42/2 \n c=a+b+c \n c=?',
      'response_correct': '13',
    };
    questionsUnit3['Pregunta 3'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=5 \n a=((a*c)−(c*c))*c \n c=((a+c)*(c+c)*(c+d))3 \n c=((c+a+d+b)*3)/d \n d=a+b+c \n d=?',
      'response_correct': '13',
    };
    questionsUnit3['Pregunta 4'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=5 \n a=((a*c)−(c*c))*c \n c=((a+c)*(c+c)*(c+d))3 \n c=((c+a+d+b)*3)/d \n d=a+b+c \n d=?',
      'response_correct': '13',
    };

    Map<String, Object> topicsUnit3 = HashMap();
    topicsUnit3['Tema 1'] = {
      'title': 'Matrices',
      'sub_topics': subTopicsTopic31,
    };
    topicsUnit3['Tema 2'] = {
      'title': 'Sumar elementos en matrices',
      'sub_topics': subTopicsTopic32,
    };
    topicsUnit3['Tema 3'] = {
      'title': 'Bucle for mejorado',
      'sub_topics': subTopicsTopic33,
    };
    topicsUnit3['Tema 4'] = {
      'title': 'Matrices Multidimensionales',
      'sub_topics': subTopicsTopic34,
    };
    topicsUnit2['Tema 6'] = {
      'title': 'Módulo 3 Exámen',
      'questions': questionsUnit3,
      'total_score': 100,
      'score_user': 0,
      'approved': false,
    };

    Map<String, Object> subTopicsTopic41 = HashMap();
    subTopicsTopic41['Sub Tema 1'] = {
      'title': 'Orientación a objetos',
      'description':
          'Java utiliza Programación Orientada a Objetos (POO), un estilo de programación que se pretende hacer pensar en la programación más cerca de pensar en el mundo real. \nEn OOP, cada objeto es una unidad independiente con una identidad única, tal como lo son los objetos en el mundo real.\nLos objetos también tienen características , que se utilizan para describirlos. En el mundo real, cada objeto se comporta a su manera. El auto se mueve, suena el teléfono, etc. Lo mismo se aplica a los objetos: el comportamiento es específico del tipo de objeto.',
      'example_code': '',
      'result':
          'Una clase describe cuál será el objeto, pero está separada del objeto mismo. En otras palabras, las clases se pueden describir como planos, descripciones o definiciones para un objeto. Puede usar la misma clase que un plano para crear varios objetos. El primer paso es definir la clase, que luego se convierte en un plan para la creación de objetos.',
      'tip':
          'En resumen, en la programación orientada a objetos, cada objeto tiene tres dimensiones: identidad, atributos y comportamiento. Los atributos describen el estado actual del objeto, y lo que el objeto es capaz de hacer se demuestra a través del comportamiento del objeto.',
    };
    Map<String, Object> subTopicsTopic42 = HashMap();
    subTopicsTopic42['Sub Tema 1'] = {
      'title': 'Métodos',
      'description':
          'Los métodos definen el comportamiento. Un método es una colección de declaraciones que se agrupan para realizar una operación. System.out.println() es un ejemplo de un método. Puede definir sus propios métodos para realizar sus tareas deseadas.',
      'example_code':
          'class MyClass { \n \nstatic void sayHello() { \n \tSystem.out.println("Hello World!"); \n} \n \n public static  void main ( String [] args) { \n \tsayHello(); \n } \n } \n // Salidas "¡Hola, mundo!"',
      'result':
          'El código anterior declara un método llamado "sayHello", que imprime un texto y luego se llama en main.',
      'tip':
          'Para llamar a un método, escriba su nombre y luego siga el nombre con un paréntesis.',
    };
    subTopicsTopic42['Sub Tema 2'] = {
      'title': 'Métodos de llamada',
      'description':
          'Puede llamar a un método tantas veces como sea necesario.\nCuando se ejecuta un método, el código salta a donde está definido el método, ejecuta el código dentro de él, luego regresa y pasa a la siguiente línea.',
      'example_code':
          'class MyClass { \n \n \tstatic  void sayHello () { \n \tSystem.out.println ("Hello World!"); \n} \npublic static void main ( String [] args) { \n \tsayHello(); \nsayHello(); \nsayHello(); \n} \n} \n \n// ¡Hola mundo! \n// ¡Hola Mundo! \n// ¡Hola Mundo!',
      'result': '',
      'tip':
          'En casos como el anterior, donde se repite lo mismo una y otra vez, puede lograr el mismo resultado utilizando bucles (while o for).',
    };
    subTopicsTopic42['Sub Tema 3'] = {
      'title': 'Parámetros del método',
      'description':
          'También puede crear un método que tome algunos datos, llamados parámetros, junto con él cuando lo llame. Escriba los parámetros dentro del paréntesis del método.\nPor ejemplo, podemos modificar nuestro método sayHello() para tomar y generar un parámetro String.',
      'example_code':
          'class MyClass { \n \nstatic void sayHello(String name) { \n \tSystem.out.println("Hello" + name);\n} \n \npublic static void main(String[] args) { \n \tsayHello ("David"); \nsayHello("Amy"); \n} \n \n} \n// Hola David \n// Hola Amy',
      'result':
          'El método anterior toma un String llamado nombre como parámetro, que se usa en el cuerpo del método. Luego, al llamar al método, pasamos el valor del parámetro dentro de los paréntesis. Los métodos pueden tomar múltiples parámetros separados por comas.',
      'tip':
          'Las ventajas de usar métodos en lugar de declaraciones simples incluyen las siguientes: \n- reutilización de código : puede escribir un método una vez y usarlo varias veces, sin tener que volver a escribir el código cada vez.\n- parámetros : en función de los parámetros pasados, los métodos pueden realizar diversas acciones.',
    };
    Map<String, Object> subTopicsTopic43 = HashMap();
    subTopicsTopic43['Sub Tema 1'] = {
      'title': 'El tipo de retorno',
      'description':
          'La palabra clave return se puede usar en métodos para devolver un valor.\nObserve que en la definición del método, definimos el tipo de retorno antes de definir el nombre del método. Para nuestro método de suma, es int, ya que toma dos parámetros del tipo int y devuelve su suma, que también es un int.\nAhora, podemos usar el método en nuestro principal.',
      'example_code':
          'class MyClass { \n \nstatic int sum(int val1, int val2) { \n \t return val1 + val2; \n} \n \npublic static void main(String[] args) { \n \tint x = sum(2, 5); \nSystem.out.println(x); \n} \n} \n// Salidas "7"',
      'result':
          'A medida que el método devuelve un valor, podemos asignarlo a una variable.',
      'tip':
          'Cuando no necesite devolver ningún valor de su método, use la palabra clave void.\nObserve la palabra clave nula en la definición del método main; esto significa que main no devuelve nada.',
    };
    subTopicsTopic43['Sub Tema 2'] = {
      'title': 'El tipo de retorno',
      'description':
          'Eche un vistazo al mismo código de nuestra lección anterior con la explicación de los comentarios, para que pueda comprender mejor cómo funciona:',
      'example_code':
          '//Devuelve un valor int 5 \nstatic int returnFive() { \n \treturn 5; \n} \n \n//Tiene un parámetro \nstatic void sayHelloTo(String name) { \n \tSystem.out.println ("Hello" + name); \n} \n \n//Simplemente imprime "Hello World!" \nstatic void sayHello() { \n \t System.out.println("Hello World!"); \n}',
      'result':
          'Habiendo adquirido conocimiento de los tipos y parámetros de retorno de métodos, echemos otro vistazo a la definición del método principal.',
      'tip':
          'Esta definición indica que el método main toma una matriz de Strings como parámetros y no devuelve un valor.',
    };
    subTopicsTopic43['Sub Tema 3'] = {
      'title': 'El tipo de retorno',
      'description':
          'Creemos un método que tome dos parámetros de tipo int y devuelva el mayor, luego llámelo en main :',
      'example_code':
          'public static void main(String[] args) { \nint res = max (7, 42); \nSystem.out.println (res); // 42 \n} \n \nstatic int max(int a, int b) { \n \tif (a> b) { \n \treturn a; \n} \nelse { \n \treturn b; \n} \n}',
      'result': '',
      'tip':
          'Un método puede tener un tipo de parámetro (o parámetros) y devolver otro tipo diferente. Por ejemplo, puede tomar dos dobles y devolver un int.',
    };
    Map<String, Object> subTopicsTopic44 = HashMap();
    subTopicsTopic44['Sub Tema 1'] = {
      'title': 'Creando clases',
      'description':
          'Para crear sus propios objetos personalizados, primero debe crear las clases correspondientes. Esto se logra haciendo clic derecho en la carpeta src en Eclipse y seleccionando Crear-> Nuevo-> Clase. Asigne un nombre a su clase y haga clic en Finalizar para agregar la nueva clase a su proyecto: Como puede ver, Eclipse ya ha agregado el código inicial para la clase. Ahora creemos un método simple en nuestra nueva clase. Animal.java',
      'example_code':
          'public class Animal { \n \tvoid bark() { \n \tSystem.out.println("Woof-Woof");\n}\n}',
      'result': 'Declaramos un método bark() en nuestra clase Animal.',
      'tip':
          'Ahora, para usar la clase y sus métodos, necesitamos declarar un objeto de esa clase.',
    };
    subTopicsTopic44['Sub Tema 2'] = {
      'title': 'Creando objetos',
      'description':
          'Pasemos a nuestra página principal y creemos un nuevo objeto de nuestra clase.\nMyClass.java',
      'example_code':
          'class MyClass { \n \tpublic static void main(String [] args) { \n \tAnimal dog = new Animal(); \ndog.bark(); \n} \n} \n// Salidas "Woof-Woof"',
      'result':
          'Ahora, el perro es un objeto de tipo animal. Por lo tanto, podemos llamar a su método bark(), utilizando el nombre del objeto y un punto. La notación de puntos se usa para acceder a los atributos y métodos del objeto.',
      'tip': '¡Acabas de crear tu primer objeto!',
    };
    Map<String, Object> subTopicsTopic45 = HashMap();
    subTopicsTopic45['Sub Tema 1'] = {
      'title': 'Definiendo atributos',
      'description':
          'Una clase tiene atributos y métodos . Los atributos son básicamente variables dentro de una clase. \nCreemos una clase llamada Vehículo , con sus atributos y métodos correspondientes.',
      'example_code':
          'public class Vehiculo { \n \tint maxVelocidad; \nint ruedas; \nString color; \ndouble combustibleCapacidad; \n \nvoid bocina() { \n \tSystem.out.println("Beep!");\n}  \n}',
      'result':
          'maxVelocidad, ruedas, color, y combustibleCapacidad son los atributos de la clase de vehículo, y el bocina() es el único método.',
      'tip': 'Puede definir tantos atributos y métodos como sea necesario.',
    };
    subTopicsTopic45['Sub Tema 2'] = {
      'title': 'Creando objetos',
      'description':
          'A continuación, podemos crear múltiples objetos de nuestra clase Vehículo y usar la sintaxis de puntos para acceder a sus atributos y métodos.',
      'example_code':
          'class MyClass { \n \tpublic static void main(String[] args) { \n \tVehiculo v1 = new Vehiculo(); \nVehiculo v2 = new Vehiculo(); \nv1.color = "rojo"; \nv2.bocina();\n}\n}',
      'result': '',
      'tip': '',
    };
    Map<String, Object> subTopicsTopic46 = HashMap();
    subTopicsTopic46['Sub Tema 1'] = {
      'title': 'Modificadores de acceso',
      'description':
          'Ahora hablemos de la palabra clave pública frente al método principal.\npublic es un modificador de acceso, lo que significa que se usa para establecer el nivel de acceso. Puede usar modificadores de acceso para clases, atributos y métodos.\n \nPara las clases, los modificadores disponibles son públicos o predeterminados (se dejan en blanco), como se describe a continuación:\npublic : cualquier otra clase puede acceder a la clase.\ndefault : solo se puede acceder a la clase por las clases en el mismo paquete.\n \nLas siguientes opciones están disponibles para atributos y métodos:\ndefault: Una variable o método declarado sin modificador de control de acceso está disponible para cualquier otra clase en el mismo paquete.\npublic : Accesible desde cualquier otra clase.\nprotected : Proporciona el mismo acceso que el modificador de acceso predeterminado, con la adición de que las subclases pueden acceder a métodos y variables protegidos de la superclase (las subclases y las superclases se tratan en las próximas lecciones).\nprivate : accesible solo dentro de la clase declarada.',
      'example_code':
          'public class Vehiculo { \n \tprivate int maxVelocidad;\nprivate int ruedas;\nprivate String color;\nprivate double combustibleCapacidad;\n\npublic void bocina() {\n \tSystem.out.println("Beep!");\n}\n}',
      'result': '',
      'tip':
          'Es una buena práctica mantener privadas las variables dentro de una clase. Las variables son accesibles y modificadas usando Getters y Setters.',
    };
    Map<String, Object> subTopicsTopic47 = HashMap();
    subTopicsTopic47['Sub Tema 1'] = {
      'title': 'Getters y Setters',
      'description':
          'Getters y Setters se utilizan para proteger eficazmente sus datos, especialmente al crear clases. Para cada variable, el método get devuelve su valor, mientras que el método set establece el valor. Los captadores comienzan con get , seguido del nombre de la variable, con la primera letra del nombre de la variable en mayúscula. Los setters comienzan con set , seguidos del nombre de la variable, con la primera letra del nombre de la variable en mayúscula.',
      'example_code':
          'public class Vehiculo {\n \tprivate String color; \n \n// Getter \npublic String getColor() {\n \treturn color;\n}\n \n// Setter \npublic void setColor(String c) { \n \tthis.color = c; \n}\n}',
      'result':
          'El método getter devuelve el valor del atributo.\nEl método setter toma un parámetro y lo asigna al atributo.',
      'tip':
          'La palabra clave this se usa para referirse al objeto actual. Básicamente, this.color es el atributo de color del objeto actual.',
    };
    subTopicsTopic47['Sub Tema 2'] = {
      'title': 'Getters y Setters',
      'description':
          'Una vez que nuestro getter y setter han sido definidos, podemos usarlo en nuestro principal:',
      'example_code':
          'public static void main(String[] args) { \n \tVehiculo v1 = new Vehiculo (); \nv1.setColor("Rojo"); \nSystem.out.println(v1.getColor()); \n} \n \n// Salidas "rojas"',
      'result':
          'Getters y setters nos permiten tener control sobre los valores. Puede, por ejemplo, validar el valor dado en el setter antes de establecer realmente el valor.',
      'tip':
          'Los captadores y establecedores son bloques de construcción fundamentales para la encapsulación, que se tratarán en el próximo módulo.',
    };
    Map<String, Object> subTopicsTopic48 = HashMap();
    subTopicsTopic48['Sub Tema 1'] = {
      'title': 'Constructores',
      'description':
          'Los constructores son métodos especiales que se invocan cuando se crea un objeto y se utilizan para inicializarlos.\nSe puede usar un constructor para proporcionar valores iniciales para atributos de objeto.\n \n- Un nombre de constructor debe ser el mismo que su nombre de clase. \n- Un constructor no debe tener ningún tipo de retorno explícito.',
      'example_code':
          'public class Vehiculo {\n \tprivate String color;\nVehículo() {\n \tcolor = "Rojo";\n}\n}',
      'result':
          'El método Vehiculo() es el constructorde nuestra clase, por lo que cada vez que se crea un objeto de esa clase, el atributo de color se establecerá en "Rojo".\nUn constructor también puede tomar parámetros para inicializar atributos.',
      'tip':
          'Puede pensar en los constructores como métodos que configurarán su clase de forma predeterminada, por lo que no necesita repetir el mismo código cada vez.',
    };
    subTopicsTopic48['Sub Tema 2'] = {
      'title': 'Usando constructores',
      'description':
          'Se llama al constructor cuando crea un objeto utilizando la nueva palabra clave.',
      'example_code':
          'class public MyClass {\n \tpublic static void main(String [] args) { \n \tVehiculo v = new Vehiculo("Blue");\n}\n}',
      'result': '',
      'tip':
          'Esto llamará al constructor, que establecerá el atributo de color en "Azul".',
    };
    subTopicsTopic48['Sub Tema 3'] = {
      'title': 'Constructores',
      'description':
          'Una sola clase puede tener múltiples constructores con diferentes números de parámetros.\nLos setter métodos dentro de los constructores se pueden utilizar para ajustar los valores de atributo.',
      'example_code':
          'public class Vehiculo {\n \tprivate String color;\n \nVehiculo() {\n \tthis.setColor("Red");\n}\nVehiculo(String c) {\n \tthis.setColor(c);\n}\n \n// Setter\npublic void setColor(String c) {\n \tthis.color = c;\n}\n}',
      'result':
          'La clase anterior tiene dos constructores, uno sin ningún parámetro que establezca el atributo de color en un valor predeterminado de "Rojo", y otroconstructor que acepta un parámetro y lo asigna al atributo.',
      'tip':
          'Java proporciona automáticamente un constructor predeterminado, por lo que todas las clases tienen un constructor, ya sea que uno esté específicamente definido o no.',
    };
    Map<String, Object> subTopicsTopic49 = HashMap();
    subTopicsTopic49['Sub Tema 1'] = {
      'title': 'Tipos de valor',
      'description':
          'Los tipos de valor son los tipos básicos e incluyen byte, short, int, long, float, double, boolean y char.\nEstos tipos de datos almacenan los valores asignados a ellos en las ubicaciones de memoria correspondientes.\nEntonces, cuando los pasa a un método , básicamente opera en el valor de la variable, en lugar de hacerlo en la propia variable.',
      'example_code':
          'class public MyClass { \npublic static void main(String [] args) { \n \tint x = 5;\naddOneTo(x);\nSystem.out.println(x);\n} \nstatic void addOneTo(int num) {\n \tnum = num + 1;\n}\n }\n // Salidas "5"',
      'result': '',
      'tip':
          'El método del ejemplo anterior toma el valor de su parámetro, por lo que la variable original no se ve afectada y 5 permanece como su valor.',
    };
    subTopicsTopic49['Sub Tema 2'] = {
      'title': 'Tipos de referencia',
      'description':
          'Un tipo de referencia almacena una referencia (o dirección) en la ubicación de la memoria donde se almacenan los datos correspondientes.\nCuando crea un objeto utilizando el constructor, crea una variable de referencia.\nPor ejemplo, considere tener una clase de Persona definida:',
      'example_code':
          'public class MyClass { \n \tpublic static void main(String[] args) {\n \tPerson j;\nj = new Person("John");\nj.setAge(20);\ncelebrateBirthday(j);\nSystem.out.println(j.getAge());\n}\nstatic void celebrateBirthday(Person p) {\n \tp.setAge(p.getAge() + 1);\n}\n}\n//Salidas "21"',
      'result':
          'El método celebrateBirthday toma un objeto Person como parámetro e incrementa su atributo.\nDebido a que j es un tipo de referencia, el método afecta al objeto en sí mismo y puede cambiar el valor real de su atributo.',
      'tip':
          'Las matrices y las cadenas también son tipos de datos de referencia.',
    };
    Map<String, Object> subTopicsTopic50 = HashMap();
    subTopicsTopic50['Sub Tema 1'] = {
      'title': 'La clase Math',
      'description':
          'El JDK define una serie de clases útiles, una de ellas es la clase Math, que proporciona métodos predefinidos para operaciones matemáticas.\nNo necesita crear un objeto de la clase Math para usarlo. Para acceder a él, simplemente escriba Math. y el método correspondiente.',
      'example_code':
          'Math.abs() devuelve el valor absoluto de su parámetro.\nint a = Math.abs(10); // 10\nMath.ceil() redondea un valor de coma flotante al valor entero más cercano.\ndouble c = Math.ceil(7.342); //8.0\nMath.floor() redondea un valor de coma flotante al valor entero más cercano.\ndouble f = Math.floor(7.343); // 7.0\nMath.max() devuelve el mayor de sus parámetros.\nint m = Math.max(10, 20); // 20\nMath.min () devuelve el parámetro más pequeño.\nint m = Math.min(10, 20); // 10\nMath.pow() toma dos parámetros y devuelve el primer parámetro elevado a la potencia del segundo parámetro.\ndouble p = Math.pow(2, 3); // 8.0',
      'result': '',
      'tip':
          'Hay una serie de otros métodos disponibles en la clase Math, que incluyen:sqrt() para raíz cuadrada, sin() para seno, cos() para coseno y otros.',
    };
    Map<String, Object> subTopicsTopic51 = HashMap();
    subTopicsTopic51['Sub Tema 1'] = {
      'title': 'Static',
      'description':
          'Cuando declara una variable o un método como estático, pertenece a la clase, en lugar de a una instancia específica. Esto significa que solo existe una instancia de un miembro estático, incluso si crea varios objetos de la clase o si no crea ninguno. Será compartido por todos los objetos. La variable COUNT será compartida por todos los objetos de esa clase.\nAhora, podemos crear objetos de nuestra clase Counter en main y acceder avariable estática',
      'example_code':
          'public class Contador {\n \tpublic static int COUNT=0;\nContador() {\n \tCOUNT++;\n}\n}\n \n public class MyClass { \n \tpublic static void main(String[] args) {\n \tContador c1 = new Contador();\nContador c2 = new Contador(); System.out.println(Contador.COUNT);\n}\n }\n// Salidas "2"',
      'result':
          'El resultado es 2, porque la variable COUNT es estática y se incrementa en uno cada vez que se crea un nuevo objeto de la clase Counter. En el código anterior, creamos 2 objetos.\nTambién puede acceder a la variable estática utilizando cualquier objeto de esa clase, como c1.COUNT.',
      'tip':
          'Es una práctica común usar mayúsculas al nombrar una variable estática, aunque no es obligatorio.',
    };
    subTopicsTopic51['Sub Tema 2'] = {
      'title': 'Static',
      'description':
          'El mismo concepto se aplica a los métodos estáticos.\nAhora, se puede llamar al método de la bocina sin crear un objeto.',
      'example_code':
          'public class Vehiculo {\npublic static void bocina() {\n \tSystem.out.println("Beep");\n}\n}\n \npublic class MyClass { \n \tpublic static void main(String[] args) {\nVehiculo.bocina();\n}\n}',
      'result':
          'Otro ejemplo de métodos estáticos son los de la clase Math, por lo que puede llamarlos sin crear un objeto Math.',
      'tip': 'Además, el método principal siempre debe ser estático.',
    };
    Map<String, Object> subTopicsTopic52 = HashMap();
    subTopicsTopic52['Sub Tema 1'] = {
      'title': 'Final',
      'description':
          'Use la palabra clave final para marcar una constante variable, de modo que pueda asignarse solo una vez.',
      'example_code':
          'class MyClass {\n \tpublic static final double PI = 3.14;\npublic static void main(String [] args) {\n \tSystem.out.println(PI);\n}\n}',
      'result':
          'PI es ahora una constante. Cualquier intento de asignarle un valor causará un error.',
      'tip':
          'Los métodos y las clases también se pueden marcar como finales. Esto sirve para restringir los métodos para que no se puedan anular y las clases para que no se puedan subclasificar.\nEstos conceptos serán cubiertos en el próximo módulo.',
    };
    Map<String, Object> subTopicsTopic53 = HashMap();
    subTopicsTopic53['Sub Tema 1'] = {
      'title': 'Paquetes',
      'description':
          'Los paquetes se utilizan para evitar conflictos de nombres y controlar el acceso a las clases.\n Un paquete se puede definir como un grupo formado por tipos similares de clases, junto con subpaquetes.\nCuando mueve/crea una clase en su paquete, el siguiente código aparecerá en la parte superior de la lista de archivos.\nEsto indica el paquete al que pertenece la clase.\nAhora, necesitamos importar las clases que están dentro de un paquete en nuestro main para poder usarlas.\nEl siguiente ejemplo muestra cómo usar la clase Vehículo del paquete de muestras.',
      'example_code':
          'package ejemplos;\n \nimport ejemplos.Vehiculo;\n \nclass MyClass {\n \tpublic static void main(String[] args) {\n \tVehiculo v1 = new Vehiculo();\nv1.bocina();\n}\n}',
      'result':
          'Dos resultados principales ocurren cuando una clase se coloca en un paquete. Primero, el nombre del paquete se convierte en parte del nombre de la clase. En segundo lugar, el nombre del paquete debe coincidir con la estructura del directorio donde reside el archivo de clase correspondiente.',
      'tip':
          'Use un comodín para importar todas las clases en un paquete.\nPor ejemplo, import muestras.* importará todas las clases en el paquete de muestras.',
    };
    Map<String, Object> questionsUnit4 = HashMap();
    questionsUnit4['Pregunta 1'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=1 \n a=((a+b)*c2)/2 \n b=(b+a+c)/b \n c=(a+b+c+d)*2 \n d=(a*b)+(b*c)d+2 \n d=?',
      'response_correct': '4',
    };
    questionsUnit4['Pregunta 2'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=1,b=2,c=3 \n a=((a+b+c)*b)/c \n b=b+c+4b*c \n c=b+c+42/2 \n c=a+b+c \n c=?',
      'response_correct': '13',
    };
    questionsUnit4['Pregunta 3'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=5 \n a=((a*c)−(c*c))*c \n c=((a+c)*(c+c)*(c+d))3 \n c=((c+a+d+b)*3)/d \n d=a+b+c \n d=?',
      'response_correct': '13',
    };
    questionsUnit4['Pregunta 4'] = {
      'description': 'Escriba un código para resolver el siguiente ejercicio.',
      'question':
          'a=2,b=3,c=4,d=5 \n a=((a*c)−(c*c))*c \n c=((a+c)*(c+c)*(c+d))3 \n c=((c+a+d+b)*3)/d \n d=a+b+c \n d=?',
      'response_correct': '13',
    };

    Map<String, Object> topicsUnit4 = HashMap();
    topicsUnit4['Tema 1'] = {
      'title': 'Programación Orientada a Objetos',
      'sub_topics': subTopicsTopic41,
    };
    topicsUnit4['Tema 2'] = {
      'title': 'Métodos',
      'sub_topics': subTopicsTopic42,
    };
    topicsUnit4['Tema 3'] = {
      'title': 'Método Tipos de retorno',
      'sub_topics': subTopicsTopic43,
    };
    topicsUnit4['Tema 4'] = {
      'title': 'Creando Clases y Objetos',
      'sub_topics': subTopicsTopic44,
    };
    topicsUnit4['Tema 5'] = {
      'title': 'Atributos de Clases',
      'sub_topics': subTopicsTopic45,
    };
    topicsUnit4['Tema 6'] = {
      'title': 'Modificadores de acceso',
      'sub_topics': subTopicsTopic46,
    };
    topicsUnit4['Tema 7'] = {
      'title': 'Getters y Setters',
      'sub_topics': subTopicsTopic47,
    };
    topicsUnit4['Tema 8'] = {
      'title': 'Constructores',
      'sub_topics': subTopicsTopic48,
    };
    topicsUnit4['Tema 9'] = {
      'title': 'Valor y tipos de referencia',
      'sub_topics': subTopicsTopic49,
    };
    topicsUnit4['Tema 10'] = {
      'title': 'La clase Math',
      'sub_topics': subTopicsTopic50,
    };
    topicsUnit4['Tema 11'] = {
      'title': 'Static',
      'sub_topics': subTopicsTopic51,
    };
    topicsUnit4['Tema 12'] = {
      'title': 'Final',
      'sub_topics': subTopicsTopic52,
    };
    topicsUnit4['Tema 13'] = {
      'title': 'Paquetes',
      'sub_topics': subTopicsTopic53,
    };
    topicsUnit4['Tema 14'] = {
      'title': 'Módulo 4 Exámen',
      'questions': questionsUnit4,
      'total_score': 100,
      'score_user': 0,
      'approved': false,
    };

    Map<String, Object> unit = HashMap();
    unit['Unidad 1'] = {
      'title': 'Conceptos Básicos',
      'topics': topicsUnit1,
    };
    unit['Unidad 2'] = {
      'title': 'Condicionales y Bucles',
      'topics': topicsUnit2,
    };
    unit['Unidad 3'] = {
      'title': 'Matrices',
      'topics': topicsUnit3,
    };
    unit['Unidad 4'] = {
      'title': 'Clases y Objetos',
      'topics': topicsUnit4,
    };
    unit['Unidad 5'] = {
      'title': 'Más sobre clases',
      'topics': [],
    };
    unit['Unidad 6'] = {
      'title': 'Excepciones, Listas, Hilos y Archivos',
      'topics': [],
    };

    Course course = Course(
      name: 'Dart',
      qualification: '0',
      units: unit,
      userId: user.id,
      progress: 0,
      points: 0,
    );

    _firebaseCourseRepository.addNewCourse(course);
  }
}
