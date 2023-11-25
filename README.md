# Microarquitectura-v2
Trabajo Práctico de Microarquitectura | Sistemas de Computación

Este trabajo práctico aborda la microarquitectura en el contexto de Tecnología Digital II. El equipo de desarrollo está compuesto por Maico Grimaldi, Mateo Flynn y Luz Alba Posse.

## Descripción General del Trabajo:

### Ejercicio 1: Aspectos Fundamentales de la Microarquitectura

- **Tamaño de la Memoria:** Se analiza el tamaño de la memoria en bytes, considerando el número de palabras y bits por palabra.

- **Instrucciones sin Operandos:** Se examinan las posibilidades de agregar instrucciones sin operandos con distintos códigos de operación (OPCODEs).

- **Instrucciones con OPCODEs Existentes:** Se calcula la cantidad de instrucciones sin operandos que se pueden agregar al formato de instrucción, teniendo en cuenta los OPCODEs ya existentes.

- **Instrucción "SUB Rx, M":** Se evalúa la viabilidad de agregar una...

- **Detalles del PC y del IR:** Se proporciona información sobre el Contador de Programa (PC) y el Registro de Instrucción (IR), incluyendo sus tamaños.

- **Memoria de Microinstrucciones:** Se describen aspectos clave de la memoria de microinstrucciones, como su tamaño y unidad direccionable.

### Ejercicio 2: Funcionalidades de Componentes

- **PC (Contador de Programa):** Se detalla la función de la señal "inc" en el incremento del PC.

- **ALU (Unidad Aritmético Lógica):** Se explica la función de la señal "opW" en la habilitación de la escritura de flags.

- **ControlUnit (Unidad de Control):** Se describe cómo se resuelven los saltos condicionales en la UC, incluyendo las señales jc, jz, jn y jo.

- **microOrgaSmall (DataPath):** Se aborda la función de la señal "DE_enOutImm" y cómo indica el índice del registro a leer y escribir.

### Ejercicio 3: Programa y Comportamiento Esperado

- **Descripción del Programa:** Se proporciona una visión general del programa, destacando su estructura y el comportamiento esperado.

- **Direcciones de Memoria de Etiquetas:** Se identifican las direcciones de memoria correspondientes a las etiquetas del programa.

- **Ciclos de Clock para JMP:** Se detalla la cantidad de ciclos de clock necesarios para llegar a la instrucción JMP end.

- **Microinstrucciones para Instrucciones Específicas:** Se presenta el número de microinstrucciones necesarias para ejecutar las instrucciones ADD, JZ y JMP.

### Ejercicio 4: Implementación de Funciones

- **Función cantImpares:** Se describe el funcionamiento de la función que cuenta la cantidad de elementos impares en un array de enteros positivos en memoria.

- **Función modArray:** Se explana cómo la función modifica los valores de un array, dividiendo por 2, restando 2 a los múltiplos de 4 y multiplicando por 7 y sumando uno al resto.

### Ejercicio 5: Nuevas Instrucciones

- **Instrucción STRPOP:** Se presenta la nueva instrucción que almacena en la dirección pasada como parámetro el número almacenado en la pila, incrementando previamente en uno.

- **Instrucción ANDOR:** Se introduce la instrucción que realiza operaciones AND y OR entre los bits del registro pasado como parámetro, almacenando los resultados en el mismo registro.
