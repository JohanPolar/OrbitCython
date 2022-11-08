# OrbitCython

# RESUMEN


Este trabajo fue planteado con el objetivo de determinar cuál son las diferencias que existen entre Cython y Python, enfocándonos en las medidas de rendimientos de estas, así como en su transformación. Básicamente busca optimizar de una manera fácil y breve el rendimiento de cualquier algoritmo realizado en Python, atacando una de sus desventajas más grandes y es su tiempo de respuesta, aunque hoy en día es uno de los lenguajes de programación más usado a nivel mundial gracias a su facilidad a la hora de aprenderlo y la cantidad tan impresionante de herramientas que tiene este, yendo desde módulos para implementar de una manera más sencilla operaciones matemáticas, algebraicas y físicas; hasta módulos hechos para el trabajo con inteligencia artificial. Esta mejora lo hace a través de otro lenguaje de programación muy conocido, el cual es: C, este lenguaje prima su ventaja hacia el rendimiento de los algoritmos, por eso es el más usado para la creación de videojuegos. Así en el 2007 nace Cython, una combinación entre 2 de los lenguajes más populares y en competencia Python – C. En este caso en específico se hizo uso de un ejemplo muy característico e interesante. OrbitCython simula la órbita que realiza un planeta gracias a diferentes características propias concernientes a este cálculo.


# Como se usa


De primera mano se debera hacer la clonación del respositorio a sui maquina local, para poder ejecutar el programa en su totalidad, teniendo en cuenta que las herramientas necesarias para esto son: Python3, Cython3, algún editor de codigo y entorno de ejecución.

Para esto se hara uso del comando de git -> *git clone (Aqui vamos a pegar la url del respositorio a clonar)*

A continuación es necesario compilar los ficheros que se tienen, para esto se implemento una forma de que todo sea muy facil y sencillo -> *make all*

Esto ejecutara de inmediado lo que se necesite generando algunos objetos y ficheros para la ejecución del programa.

Por ultimo queda la ejecución del main, donde se tiene la experiemntación con cada carga del proyecto. Para esto unicamente tendremos que ejecutar -> *Python3 main.py*

Esto ejecutara el fichero principal que a su vez genera un archivo de formato .csv, que evidencia la toma de datos tanto de Python como de Cython. Estos datos fueron usado para realizar un breve analisis por medio de un Notebook de Coloab. Adunto el Link -> https://drive.google.com/file/d/1Y0DjNnEzFk9uz07rZ4hiijqpcEdsV-H4/view?usp=drive_web&authuser=0
