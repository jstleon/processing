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