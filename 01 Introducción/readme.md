# Introducción

Las nuevas tecnologías han irrumpido en nuestras vidas y las han cambiado para siempre. Dentro de este nuevo entorno, los diseñadores, artistas, ilustradores, tenemos una amplia gama de ofertas entre las cuales elegir para utilizar como medio creativo.

Una de esas herramientas es Processing, un potente lenguaje de programación basado en Java, creado por diseñadores, que nos permite aprender las bases de los lenguajes de programación dibujando.

Processing es un entorno de programación de código abierto y basado en Java, para gente creativa, que no es necesario que sean programadores informáticos. Su principal punto fuerte es su facilidad de uso y permite a los creadores empezar rápidamente a generar sofisticadas aplicaciones gráficas e interactivas al tiempo que minimiza la dificultad asociada a la compilación y generación de código.

rocessing es un software que te introducirá en los principios de programación de formas visuales, movimiento e interacción. Es un sistema integrado de programación, lenguaje y aprendizaje. Processing fue creado para enseñar los fundamentos de la programación computacional dentro de un contexto visual, para servir como software sketch book, (bocetos de software), y para ser usado como una herramienta de producción.

Estudiantes, artistas, diseñadores usan Processing para aprender, crear prototipos y producir.

## ¿Por qué aprender programación?

Uno de los lugares donde más afectan las nuevas tecnologías es a los mercados laborales. Mientras los diseñadores en los 90’s, pensábamos en carteles, tarjetas de visita, cartas, tampones, etc. En el cambio de siglo ya estábamos pensando en banners, webs, animando flash, etc. 

Los profesionales del diseño, en su gran mayoría, hemos tenido que aprender a dominar nuevas tecnologías, nuevos medios y nuevas herramientas a medida que han ido apareciendo en nuestras vidas. Los perfiles se difuminan, hoy por hoy, ya existen programadores que diseñan y diseñadores que programan. Es muy posible que en el futuro, estas diferencias se difuminen aún más, y la programación y el diseño, se complementen, o conviertan en asignaturas formativas básicas. Es posible.

Las aplicaciones que solemos utilizar los diseñadores entienden lenguajes de programación. Como Processing sigue las mismas estructuras que siguen otros lenguajes de programación, todo este aprendizaje, servirá cuando mañana queramos aplicar nuestros conocimientos en programación en After Effect, Photoshop, UNITY 3D, CINEMA 4D, etc. Todas nuestras aplicaciones comprenden y aceptan código.

El lenguaje de programación es considerado un medio creativo. Y más abajo veremos como el MIT y el C3 son pioneros en considerar al lenguaje de programación como medio creativo a la altura de la música, la danza o la pintura.

Algo de lo que debemos comenzar a ser conscientes, es de la universalidad que estos lenguajes tienen, los lenguajes de programación podrían ser entendidos como nuevo esperanto, como estándar internacional. Podemos crear en cualquier parte del mundo, para cualquier parte del mundo.

En este libro, veremos las bases de Processing. No necesitas tener ningún tipo de conocimiento anterior para seguirlo con facilidad. Vamos a ir realizando pequeños programas y explicando cómo funcionan. El temario que vamos a seguir es el siguiente:

01. Introducción
02. Processing
03. Dibujo
04. Variables
05. Interactivo
06. Medios
07. Movimiento
08. Funciones
09. Objetos
10. Arrays
11. Extensiones

## 1.1 Teoría vs Práctica
Imagínate inscribirse en una clase para aprender un nuevo deporte, por ejemplo, tenis. (Este tipo de deporte implica una pelota y una raqueta.) Llegas a clase el primer día emocionado a sumergirse en esta exótica nueva actividad, sólo para ser confrontado por una larga conferencia sobre los fundamentos de la teórica sobre la física que se esconde detrás del lanzamiento. Durante las siguientes catorce semanas, el curso se desarrolla en una manera similar, con un par de ejercicios artificiales sobre el terreno para reforzar las conferencias.

No sé vosotros, pero después de unas semanas, ¿dónde queda aquella primera idea de jugar al tenis? Esto es lo que muchos estudiantes experimentan cuando toman su primera clase de informática.
 
Por supuesto, el aprendizaje de la teoría detrás del tenis podría proporcionarte información muy interesante y en última instancia valiosa, especialmente si tu objetivo es convertirse en un jugador de tenis internacional. Sin embargo, para la mayoría de nosotros, el buceo directamente en los aspectos teóricos de una actividad como el tenis, o ciencias de la computación, antes de conseguir una aproximación en qué la teoría en realidad podría ser útil puede ser bastante difícil y desagradable (y muy pocos de nosotros estamos destinados para el Salón de la Fama del tenis) lo peor de todo, este enfoque puede conducir a ideas erróneas sociales más amplias, tales como: la informática es oscura, difícil, e incluso aburrida. 

Estas ideas erróneas también pueden convertirse en profecías auto-cumplidas, en última instancia, la atracción de sólo el tipo de estudiantes que cumplen con un patrón muy concreto, como buenos con las matemáticas, y con aspecto de empollones. Lo que lleva a una población de estudiantes y profesionales que carecen de la diversidad y variada perspectiva. 

En los últimos años, algunos científicos informáticos y otros profesionales de la informática, el autor de este libro de este libro incluido, han empezado a cuestionar el enfoque arraigado y estrecho con la enseñanza de la informática. Este libro aboga por una nueva manera de aproximación-codificación creativa, en la que podrás aprender haciendo. Con la construcción de bocetos de código creativo, aprenderás los principios detrás de la informática, pero en el contexto de la creación y el descubrimiento.  Volviendo a la analogía del tenis, primero aprenderás cómo pegarle a la bola con la raqueta; a continuación, aprenderás la física que funciona detrás. O, para usar un poco la jerga informática, primero aprenderás a codificar una aplicación de frío, a continuación, aprenderás acerca de los principios fundamentales detrás de ella. No sólo esta marca de codificación es más fácil y divertida para aprender, sino que hará que la parte teórica sea mucho más relevante y es de esperar incluso fascinante. 

En este capítulo se ofrece sólo un poco de contexto y los antecedentes para el resto del libro. Aprenderás acerca de la historia de la producción, incluyendo sus orígenes en el famoso MIT Media Lab. Vamos a discutir el enfoque de codificación creativa en más detalle, incluyendo algunas investigaciones relevantes en su eficacia.

## 1.2 Programación vs Ciencies de la Computación
La programación no es la informática. Pero, desde nuestra perspectiva, es a menudo la parte más divertida de la misma. Sin embargo, hay científicos de la computación que no hacen en realidad programas. Estos son los teóricos que ven el cálculo más como las matemáticas aplicadas que como aplicación práctica. Un teórico de este tipo podría estar interesado en probar algo acerca de la informática, con pruebas matemáticas. Sin embargo, para el usuario final promedio, programación a menudo se equipara con la informática.
 
Según Dictionary.com, la informática se define como:
 
“la ciencia que se ocupa de la teoría y los métodos de tratamiento de la información en las computadoras digitales, el diseño de hardware y software, y las aplicaciones de las computadoras.” 

La primera parte de la definición, la teoría y los métodos de tratamiento de la información, se refiere a los principios matemáticos más fundamentales detrás de la computación. Esta es quizás la parte científica más pura de la informática. La investigación en este área afecta a cosas como la velocidad, la eficiencia y fiabilidad de los equipos. Podría decirse que esta área de investigación proporciona la base para todos los demás aspectos y aplicaciones de la informática. Aunque la programación es una parte de esta rama de la ciencia de la computación, su papel es principalmente para probar y verificar la teoría. Esta área es la investigación de la informática.

La segunda parte de la definición dictionary.com, el diseño de hardware y software, es donde la ciencia da paso a la ingeniería y se aplica la teoría de que el diseño, creando sistemas tangibles. Una compañía como Apple gasta una gran cantidad de tiempo y recursos que investigan cómo los clientes sienten y miran su hardware y software, así como la funcionalidad en las manos de sus usuarios. Otra forma de describir esta área podría ser: la relación entre los aspectos matemáticos y teóricos de la informática y las cosas increíbles que podemos hacer con ella. La programación es una gran parte de esta zona y se conoce comúnmente como la ingeniería de software.

La última parte de la definición, aplicaciones de computadoras (que no debe confundirse con las aplicaciones informáticas) se trata de cómo las computadoras (en realidad la programación) se puede aplicar en el mundo. Esta parte de la definición puede ser demasiado general, como computadoras impactan en casi todos los aspectos de la vida, y es muy probable que este impacto sólo se incrementará en el futuro. No es un salto tan grande a día de hoy imaginar nuestros coches conduciéndose ellos mismos, nuestras paredes y encimeras actuando como pantallas táctiles inteligentes, y nuestros dispositivos de comunicación reduciéndose y consiguiendo estar aún más integrados, incluso, puede que en nuestros cuerpos físicos. La programación es muy relevante para esta parte de la informática, sobre todo en el desarrollo de software y hardware especializado de aplicaciones específicas. 

Google ha desarrollado y puesto para su libre descarga el Kit de desarrollo de software de Android, que incluye bibliotecas de código y aplicaciones de software para la creación de aplicaciones de Android personalizadas. Apple tiene su propia plataforma de desarrollo similar, al igual que muchas otras compañías. Estos entornos de desarrollo para que las personas puedan programar de manera eficiente las aplicaciones, sin la necesidad de años de entrenamiento formal en informática.

Claramente, esta evolución en el desarrollo de software está desafiando las nociones que se tienen de los conocimientos técnicos necesarios. Hay estudiantes de secundaria que escriben aplicaciones móviles altamente exitosas, artistas que programan obras de arte interactivas y muchas otros “no expertos” creando de pequeñas empresas de software durante la noche. Así que no, la programación no es informática, pero al parecer, la informática tampoco se requiere necesariamente para programar. 

## 1.3 Arte + ciencia = código creativo
En la Universidad Metodista del Sur en Dallas hay un Centro de Cómputo Creativo (C3) que explora la computación como un medio creativo fundamental. C3 considera código de computadora (así como otros aspectos de la computación) de la misma forma en que un pintor piensa acerca de la pintura, o en un sonido un músico o incluso cómo una bailarina piensa gesto. C3 está menos preocupado con qué cómputo resuelve un problema específico y más interesados en la forma en que se resuelve, y lo más importante, ¿cómo se puede resolver de una manera más interesante y novedosa?. Sin embargo, a pesar de este enfoque creativo, C3 requiere que los estudiantes tomen cursos muy exigentes en ciencias de la computación, matemáticas y física. También requiere una cantidad igual de rigurosos cursos creativos. Esta integración de material cuantitativo con la práctica creativa puede ser un desafío de enormes proporciones para algunos estudiantes, especialmente aquellos que fueron etiquetados en una edad temprana: “el artista” o “geek”, pero probablemente no tanto. 

C3 ha sido un éxito (como tiene un enfoque interdisciplinario similares en el Bryn Mawr College) la integración de material cuantitativo difícil con la práctica creativa en el aula y el laboratorio de investigación, utilizando un enfoque de “Programación creativa”.
 
Este enfoque fue desarrollado originalmente en el Instituto de Tecnología (MIT) Media Lab de Massachusetts, por el anterior director del laboratorio, John Maeda, de quien escucharás más acerca de él en breve.
 
La Programación creativa combina enfoques de la clase de artes, como las críticas, el desarrollo de portafolio y el énfasis en la estética y la expresión personal, con los principios fundamentales de la informática. Codificación creativa utiliza código de computadora como medio creativo por el cual los estudiantes puedan desarrollar un cuerpo de arte, mientras que el desarrollo de competencias básicas en la programación aumenta. 

En 2010, investigadores de Bryn Mawr College y C3 en la Universidad Metodista del Sur recibieron una ayuda que la Fundación Nacional para la Ciencia concedió por explorar el uso de la introducción a la codificación creativa en el aula de informática. Sobre la base de los resultados de investigación en el tiempo, el resultado es muy prometedor, los estudiantes aprenden el método de codificación creativa y desarrollan significativamente un mayor interés personal en la programación, en comparación con los estudiantes en una clase de ciencias de la computación más tradicional.
 
Para ayudar a facilitar esta integración en el aula, el enfoque de codificación creativa se basa en algunos lenguajes de programación innovadores y entornos de desarrollo, especialmente de Processing, que crecieron directamente del trabajo realizado en el Media Lab del MIT.

## 1.4 MIT Media lab
El MIT Media Lab fue fundado por el profesor del MIT Nicholas Negroponte y el entonces presidente del MIT Jerome Wiesner en 1985. Su misión, como se indica en el sitio Media Lab (http://www.media.mit.edu/about), consiste en: prever el impacto de las nuevas tecnologías en la vida cotidiana-tecnologías que prometen transformar radicalmente nuestras nociones más básicas de las capacidades humanas.

Aunque un laboratorio académico del MIT dentro de la Escuela de Arqui- tectura y Planificación, el Media Lab tiene siempre que irradiar disciplinas claramente cruzadas y borrosas distinciones entre la teoría y la aplicación, la academia y la industria, y la ciencia y el arte. Ha estado involucrada en los avances fundamentales de la era digital desde su fundación, incluyendo la World Wide Web y las redes inalámbricas. El laboratorio también ha sido pionero en la investigación innovadora y el desarrollo de maneras radical- mente nuevas áreas, tales como juguetes inteligentes, computación ubicua y la estética y la computación.
 
El Grupo de Computación + Estética (ACG) en el MIT fue creado en 1996 por John Maeda, un científico de la computación entrenado formalmente y diseñador gráfico. Maeda y ACG exploran nuevos enfoques de herramientas de software y el desarrollo del lenguaje, así como práctica artística computacional. Uno de los proyectos desarrollados en el Media Lab fue un nuevo entorno de lenguaje de programación y programación llamado “Design by Numbers” (DBN). DBN es un lenguaje de programación muy simplificado construido sobre el lenguaje de programación Java (se explica un poco más adelante en este capítulo). DBN simplifica enormemente el proceso de programación de gráficos en Java mediante la creación de una sintaxis simplificada idioma (los comandos y las reglas utilizadas para el programa) y un entorno de desarrollo que permitió la creación de prototipos rápidos de patrones simples gráficos, arte código y diseños. DBN nunca fue pensado como un lenguaje de programación con todas las funciones, sino más bien una prueba de concepto para un enfoque radicalmente nuevo diseño del lenguaje; se probó principalmente en el aula artes del diseño para enseñar programación a los principiantes.

DBN como una prueba de concepto fue un gran éxito, aunque como una lengua útil, que no era mucho más que un ejercicio académico. Dos de los estudiantes de Maeda en el Media Lab, Ben Fry y Casey Reas, trabajaron en DBN. Después de terminar sus estudios en el Media Lab, Fry y Reas decidie- ron tomar las lecciones aprendidas en desarrollo DBN y construir un lengua- je más completo. Llamaron a su nuevo proyecto Processing, que se inició en en 2001.

## 1.5 ¿Qué es Processing?

En el sentido más simple, Processing es una aplicación de software que le permite escribir, editar, compilar (que se explicará en breve), y ejecutar código Java. Sin embargo, antes sumergirnos en Processing , te ayudará entender un poco acerca de Java, pero incluso antes de hablar de Java, tenemos que hablar brevemente acerca de la computación en general. (Ten en cuenta que este será uno de los pocos lugares en el libro donde nos tiramos un poco de teoría sin una diversión, la actividad práctica.)

## 1.7 Nemotécnica

La manipulación de bits individuales para representar todo lo que hace una computadora, aunque es teóricamente posible, es muy poco práctico. El lenguaje de la computadora es puramente matemático-respira de 0 y 1 de. Nosotros, los humanos, sin embargo, no somos tan numéricos como nuestras máquinas, y nosotros dependemos de los sistemas más descriptivos, simbólicos para comunicarnos, como nuestras lenguas habladas y escritas naturales. Mientras que una computadora podría ser feliz con el código binario 0110011 para significar una operación como la adición de dos números, los seres humanos prefieren algo más en la línea de la palabra “sumar”. A pesar que una serie de 0 y 1s es eficiente, es difícil para la mayoría de nosotros descifrar eficientemente patrones binarios y luego recordar lo que significa cada patrón único. Esta brecha entre cómo los ordenadores procesan la información en comparación con la forma en que comprendemos los humanos ha llevado al desarrollo de lenguajes de programación.

En un nivel fundamental del proceso de la información, nuestros cerebros funcionan de forma bastante similar a nuestras computadoras. En vez de un complejo conjunto de transistores, tenemos una red interconectada de neuronas. Las neuronas individuales pueden considerarse de forma análoga como transistores individuales. Aunque en lugar de puertas, las neuronas utilizan algo llamado un potencial de acción. El potencial de acción, como la puerta de un transistor, está controlado por un impulso eléctrico, la determinación de cuando la neurona transmite información, o incendios. La respuesta es un todo o nada, como una puerta abierta o cerrada. Procesar, ya sea de la información en el cerebro o una computadora es muy distinta de la comprensión humana.

El ordenador es una especie de cerebro de silicio en una caja brillante. Como se mencionó anteriormente se asimila el 1 y 0, o lo que más técnicamente se llama lenguaje de máquina. Cuando las computadoras se desarrollaron, si realmente querías hacer algo con ellas, era necesario aprender a hablar su idioma nativo de la máquina. Este fue un proceso muy difícil, tedioso y lento. Los informáticos rápidamente se dieron cuenta que necesitaban lenguajes para simplificar el proceso de programación y comenzaron a desarrollar lenguajes de alto nivel. Por nivel más alto, nos referimos a las lenguas que se acercan más a la forma que entendemos los humanos la información y se alejan del lenguaje de máquina. Uno de los primeros lenguajes desarrollados era el lenguaje Assembly (ensamblador).

El lenguaje Assembly para los estándares de hoy en día sigue siendo un maldito lenguaje de muy bajo nivel, muy cerca de los 1 de y de los 0 - pero fue un gran paso adelante en la simplificación de la programación. El lenguaje Assembly convierte los comandos de lenguaje de máquina, números en estado puro a estados, incluyendo palabras conocidas como: conjunto, almacenar, cargar, y saltar. En el contexto de la lengua materna de la máquina, podemos hacer referencia a estos términos con un de lenguaje más natural como mnemotécnicos, o dispositivos para ayudarnos a entender y recordar los comandos de máquina subyacentes.

Aunque Assembly fue un gran paso adelante en la simplificación de la programación, es todavía un enfoque denso y complejo. Debido a que los mapas de comando de Assembly de lenguaje de máquina individuales con la mnemotecnia, todavía tiene un montón de código para hacer cosas relativamente sencillas. Por ejemplo, el siguiente es el código de la Assembly da como salida la frase: “Feliz codificación creativa” 

; código basado en el ejemplo: http://michaux.ca/articles/assembly-

````java
hello-world-for-os-x
; A “Feliz codificación creativa!” programa con NASM
sección .text
mundial c3Start
c3Start:
     empujar msglen dword
     empujar mymsg dword
     empuje dword 1
     mov eax, 0x4
     sub esp, 4
     int 0x80
     añadir esp, 20
     empuje dword 0
mov eax, 0x1
        sub esp, 4
        int 0x80
    sección .data
      mymsg db “Feliz codificación creativa!”, 0xa
      msglen equ $ -mymsg

````

En comparación, aquí está el código para hacer lo mismo en Java: 
````Java    
// A “Feliz codificación creativa!” programa en Java
    public class feliz {
        main (String [] args) {static void públicos
            System.out.println (“Feliz codificación creativa!”);
	}
} 

````
Y, por último, aquí está el mismo programa en Processing: 

````Java
// A “Feliz codificación creativa!” programa usando Processing
    println (“Feliz codificación creativa!”);
````
Si no era obvio, Java, y especialmente Processing, reduce en gran medida el número de líneas en el código. Además, si usted lee el código de ejemplo, sospechamos que fueron capaces de entender mucho más de el código Java y Processing que de Assembly.

Los primeros ensambladores de idiomas, el software que convierte el código Assembly a lenguaje de máquina, surgieron en torno a 1950. Java fue lanzado a mediados de la década de 1990. En los cuarenta años entre Assembly y Java, se desarrollaron muchos otros lenguajes de programación. Uno de los lenguajes más importantes que surgieron, que influenció fuertemente a Java y en última instancia, a Processing, era el lenguaje de programación C.

Para nuestra discusión, no es necesario decir mucho más acerca de C, aparte de eso, es un nivel considerablemente más alto que Assembly, y se adoptó muy ampliamente. En comparación con Assembly, C reduce en gran medida las líneas de código necesaria para programar un ordenador. La gramática del lenguaje de programación Java, más comúnmente conocida como la sintaxis del lenguaje, se basa en gran medida en C, pero como aprenderás, Java es un lenguaje con un enfoque, incluso de más alto nivel que C.

## 1.8 Java

El desarrollo de Java era, por algunos estándares, un fracaso. Java fue desarrollado inicialmente para televisión interactiva y en última instancia para conectar dispositivos “inteligentes”, que en realidad no capturan hasta unos quince años después de la liberación de Java. Damos por sentado ahora que nuestros televisores de pantalla plana más nuevos y lisos se conectan a Internet, lo que nos permite navegar por la red mientras vemos series por demanda y revisamos nuestro correo electrónico. Ya en 1995, se trataba de una quimera en manos de unos pocos fanáticos tecnológicos.

Java, podría decirse que se salvó gracias a la proliferación de Internet y Java es hoy uno de los lenguajes de programación más populares del mundo, según el Índice de Comunidad TIOBE Programación (http://blog.uchceu.es/informatica/ranking-de-lenguajes-de-programacion-mas-usados-para-2014/).
 
Java fue diseñado como un lenguaje de programación con todas las funciones, como C, pero con una portabilidad diferencial universal muy grande. El lema original de Java era “escribe una vez, ejecuta en todas partes.” La idea era que un programador podría escribir un programa Java en cualquier máquina, y el programa se ejecute constantemente en cualquier otra máquina. Esto puede no parecer una gran cosa a primera vista, pero las computadoras no son simplemente las palabras de moda que las que hemos reducido: Mac, Windows, Linux. Las computadoras están compuestas por una gran cantidad de piezas complejas, tales como unidades centrales de Proceso (CPU), las unidades de procesamiento gráfico (GPU) y la memoria de acceso aleatorio (RAM), sólo para nombrar algunos. Estas piezas, especialmente la CPU, el cerebro principal de la computadora, se basan en instrucciones específicas, el lenguaje de máquina, para hacer su magia. Por desgracia, estas instrucciones de la máquina varían mucho de no sólo las de informática, sino también componentes específicos de hardware como CPU.

Pensando en nuestra discusión sobre el lenguaje de programación de la Assembly, se enteró de que la Assembly envuelve lenguaje de máquina con la mnemotecnia añadiendo un poco más comandos de lo normal, sonando lingüísticos a las matemáticas binarias subyacentes. El lenguaje C lleva el proceso un paso más allá, en un sentido envolviendo el lenguaje ensamblador con una construcción de lenguaje de alto nivel tanto, lo que simplifica enormemente la programación. Por ejemplo, una línea de código C podría reemplazar diez líneas de Assembly. El problema con la forma en que este enfoque funciona es que el código (sin tener en cuenta si se trata de la Assembly o C) todo se sigue reduciendo a lenguaje de máquina, y como se mencionó anteriormente, el código de lenguaje de máquina es específico para el hardware de la máquina que está trabajando. Para ejecutar un programa en C, es necesario convertir explícitamente el código C a lenguaje de máquina para su CPU específica.

Nos referimos a este proceso como compilación. Compilador de lenguaje de CA es un software que hace que la conversión a partir del código fuente en C que se escribe en el idioma nativo de la máquina, el código binario (de 1 y 0).

Entonces, ¿cómo Java mejora esta situación? Java incorpora una capa adicional de software, llamado un intérprete de lenguaje, o para usar la jerga de Java, una Máquina Virtual Java (comúnmente abreviado como JVM). El código Java, como el código C, se compila. Sin embargo, el código de Java no se compila hasta el nivel de máquina nativo, que a su vez sería específica de hardware. Más bien, el código Java se compila a una forma universal superior, llamado código de bytes. El código de bytes de Java es universal, ya que debe ser capaz de funcionar en cualquier máquina, independientemente del hardware subyacente de la arquitectura, siempre que el producto incluya una máquina virtual Java.

Si piensas de nuevo a nuestra discusión anterior, el lenguaje Java era un fracaso inicial salvado por la proliferación de Internet. Internet es una vasta red de computadoras, con una amplia variedad de configuraciones de hardware, ejecutando varios sistemas operativos. La declaración de Java, incluyendo su compilador (a byte code) y su intérprete (JVM), se convirtió en la solución perfecta para conectar todos estos dispositivos dispares. Además, algunos navegadores web incluyen su propia máquina virtual de Java, permitiendo que los programas Java (conocidos como applets en este contexto) funcionar también en la Web. Para saber más sobre la interesante historia interesante de Java, consulta:

http://www.oracle.com/technetwork/java/javase/overview/javahistory-index-198355.html. 

Además de Internet, Java también está teniendo un impacto dramático en la informática móvil, y más en general, en todas partes, con máquinas virtuales Java ampliamente disponibles para la mayoría de nuestros dispositivos portátiles y de mano. Por ejemplo, el sistema operativo Android de Google está basado en Java.

Así que al final, parece que Java, al igual que otras ideas revolucionarias, no era tanto un fracaso como adelantado a su tiempo.

Eso no quiere decir que Java está exento de críticas. Java sigue siendo un lenguaje complejo, y es un reto difícil aprender el medio ambiente para trabajar y también es un reto para enseñar en el aula como introducción informática. Algunos críticos también culpan a Java por ser más lento que un lenguaje puramente compilado como C, que no necesita ser ejecutado a través de un intérprete del lenguaje. (Es un tema muy caliente en cuanto a cuánto más lento es Java en realidad comparado con un lenguaje puramente compilado como C) Desde la liberación de Java, muchas otras nuevas lenguas se han desarrollado y apuntan a reducir aún más la complejidad de la programación. Una de ellas es Processing, que no ha dejado de crecer en popularidad desde su lanzamiento en el año 2001. A pesar de que Processing es de hecho un entorno de programación independiente, con su propio lenguaje, aprenderás que también está indisolublemente ligado a Java.
 
How to draw with code | Casey Reas
https://www.youtube.com/watch?v=_8DMEHxOLQE

Hello Word! Processing
http://vimeo.com/61191770


Este documento es un resumen del primer capítulo del TALLER DE PROGRAMACIÓN CREATIVA CON PROCESSING de AIR ROOM subido en YOUTUBE.
