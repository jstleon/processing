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