# Ejercicios bash 2

Ejercicios de bash del curso de DevOps de SoftServe

## Ejercicio 1: Funciones básicas
**Objetivo**: familiarizarse con la definición y el uso de funciones.

- Crear un script con una función llamada saludo.
- La función debe tomar un argumento (un nombre) e imprimir "¡Hola, ``<nombre>``!".
- Llamar a la función con diferentes nombres.

**Hints**:

Definir una función con function_name() { ... }.


## Ejercicio 2: Arrays
**Objetivo**: aprender a trabajar con array.

- Crear un array con cinco de sus películas favoritas.
- Escribir un script que imprima cada película en una nueva línea.
- Agregar una nueva película al array e imprimir el array completo nuevamente.

**Hints**:

- Declarar un array: movies=("Movie1" "Movie2" "Movie3").
- Acceder a los elementos con ${array[index]}.

## Ejercicio 3: Recorrer arrays en bucle
**Objetivo**: practicar recorriendo arraysen bucle.

- Utilice el array del ## Ejercicio 2.
- Escriba un bucle for que imprima cada película junto con su índice (p. ej., "1: Movie1").
**Hints**:

Use for i en "${!array[@]}" para obtener índices.
## Ejercicio 4: Uso de expresiones regulares
**Objetivo**: Practique la búsqueda de patrones con grep.

- Cree un archivo llamado emails.txt con una lista de correos electrónicos (válidos e inválidos).
- Escriba un script que use grep para extraer solo direcciones de correo electrónico válidas.
**Hints**:

Una expresión regular básica de correo electrónico: [a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}.
## Ejercicio 5: Aritmética y condiciones avanzadas
**Objetivo**: Explore las declaraciones condicionales avanzadas y la aritmética.

- Escriba un script que acepte dos números del usuario.
- Si el primer número es divisible por el segundo, imprima "Divisible"; de lo contrario, imprima "No divisible".
- Si el segundo número es cero, imprima "No se permite la división por cero".
**Hints**:

Use ``$((num1 % num2))`` para comprobar la divisibilidad.
## Ejercicio 6: Manipulación de archivos con bucles
**Objetivo**: Trabajar con archivos en un directorio.

- Escriba un script que cree un directorio llamado testdir y lo llene con 10 archivos vacíos llamados file1.txt, file2.txt, ..., file10.txt.
- Escriba un bucle para agregar el texto "Hola" a cada archivo.
**Hints**:

Use echo "Hello" > filename para escribir texto en un archivo.
## Ejercicio 7: Manejo de errores
**Objetivo**: Practique la comprobación de errores.

- Escriba un script que tome un nombre de archivo como argumento.
- Si el archivo existe, imprima su contenido.
- Si no existe, imprima "Error: Archivo no encontrado".
**Hints**:

Use if [ -f "$filename" ]; then.
## Ejercicio 8: Manipulación de fecha y hora
**Objetivo**: familiarizarse con la manipulación de fecha en Bash.

- Escribir un script que imprima la fecha y hora actuales.
- Calcular e imprimir la fecha dentro de 7 días.

**Hints**:

Usar date para la fecha actual y date -d "+7 days" para 7 días después.
## Ejercicio 9: Procesamiento de texto básico con AWK
**Objetivo**: familiarizarse con awk para el procesamiento de texto.

- Crear un archivo llamado students.txt con las columnas: Nombre, Edad, Grado.
- Escribir un script que use awk para imprimir solo los nombres y grados de los estudiantes.

**Hints**:

Usar awk '{print $1, $3}' students.txt.
## Ejercicio 10: Automatización básica
**Objetivo**: automatizar una tarea repetitiva.

- Escribir un script que haga una copia de seguridad de un directorio copiándolo a una nueva ubicación con la fecha actual adjunta (por ejemplo, backup_2023-07-14).
- Utilice tar para comprimir la carpeta de respaldo en un archivo .tar.gz.

**Hints**:

Use cp -r para copiar el directorio y tar -czf para comprimir.
## Ejercicio 11: Uso de Cron para programar
**Objetivo**: Automatizar la ejecución de scripts con cron.

- Crear un script que registre la fecha y hora actuales en un archivo cada minuto.
- Configurar un trabajo cron para ejecutar este script.

**Hints**:

Use echo "$(date)" >> logfile.txt.
Edite cron con crontab -e y use * * * * * /path/to/script.sh para cada minuto.
## Ejercicio 12: Ordenamiento y filtrado
**Objetivo**: Aprenda a ordenar y filtrar con sort y uniq.

- Cree un archivo names.txt con una lista de nombres (algunos duplicados).
- Escriba un script que ordene los nombres y elimine los duplicados.
- Guarde el resultado en sorted_names.txt.

**Hints**:

Use sort names.txt | uniq > sorted_names.txt.