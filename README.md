# PROYECTO FINAL DE DIPLOMADO ANÁLISIS Y CIENCIA DE DATOS
# 1.	SELECCIÓN Y JUSTIFICACIÓN DE LA BASE DE DATOS

# 5.1	Búsqueda de la Base de Datos
Actualmente vivimos en un mundo donde lo único constante es el cambio y tenemos que adaptarnos.
Hace un par de años una pandemia vino a retarnos y a incluir de manera constante en nuestro vocabulario el término trabajo remoto (home office), sin embargo, este tipo de trabajo tiene más años existiendo. 

El origen del teletrabajo se remonta a la década de 1970, en un contexto de crisis energética, cuando el alto costo del combustible y los largos desplazamientos al lugar de trabajo comenzaron a plantear serios desafíos económicos y ambientales. Jack Nilles, un ingeniero y excientífico de la NASA (frecuentemente citado como el padre del teletrabajo), comenzó a explorar la idea de trabajar a distancia como una solución a estos problemas, utilizando la tecnología de la información y las comunicaciones. Sin embargo, la expansión de Internet en la década de 1990 fue lo que realmente catalizó la adopción del teletrabajo, permitiendo a los empleados trabajar eficazmente desde cualquier lugar.

En los años 2000, el teletrabajo comenzó a ser visto no solo como una solución a problemas logísticos o económicos, sino también como una forma de mejorar la calidad de vida de los empleados, ofreciendo una mayor flexibilidad para equilibrar el trabajo y la vida personal.

La llegada de la década de 2020, marcada por la pandemia global de COVID-19, representó un punto de inflexión sin precedentes para el teletrabajo. Con las restricciones de movilidad y la necesidad de distanciamiento social, empresas de todo el mundo adoptaron rápidamente el trabajo remoto como medida de emergencia. Esta situación aceleró una transformación digital que, en muchos casos, se esperaba que tomara años en materializarse, demostrando la eficacia del teletrabajo incluso en circunstancias extremadamente desafiantes.

Este cambio en el tipo de trabajo retó a las empresas a cambiar su estructura organizacional, pero no sólo pensando en la funcionalidad y las ventajas hacia el negocio, sino también hacia el trabajador. 
La cultura global está siendo transformada tomando como estandarte la calidad de vida de las personas porque ante tanto cambio no sólo adicionamos el término trabajo remoto, también incluimos el estrés laboral (reacción que se produce ante exigencias y presiones laborales que no se ajustan a las capacidades y conocimientos de una persona). 
 
# 5.2	Justificación de la Selección
1.2.1	Descripción de la base de datos seleccionada
La base de datos a analizar es “Trabajo remoto y salud mental” (Remote Work & Mental Health), la cual muestra las respuestas de 5,000 personas entrevistadas respecto a preguntas clave que pueden dar conclusiones clave respecto a cómo es percibido el trabajo remoto, su beneficio para las empresas y sobre todo para los trabajadores. 

1.2.2	Justificación de la selección de la base de datos 
Seleccionamos esta base de datos porque nos parece interesante conocer las opiniones de personas alrededor del mundo respecto a una tendencia global, adicional, de que actualmente existen muchas empresas que han adoptado el trabajo remoto, sin embargo, también hay otras que después de haberlo tomado como base, no están logrando demostrar productivamente las ventajas esperadas, planteándose la posibilidad de regresar al antiguo estilo de trabajo en sitio o hacer una mezcla y tener un tipo de trabajo híbrido. 

1.2.3	Contexto del problema
Analizar si el trabajo remoto aporta cambios positivos para la empresa y para los trabajadores comparando las siguientes variables
­	Edad	­	Puesto	­	Tipo de industria
­	Tipo de trabajo	­	Niveles de estrés	­	Afectación a la salud
­	Acceso a cuidado de la salud	­	Productividad	­	Satisfacción
­	Actividad física	­	Calidad de sueño	

Para alcanzar el objetivo anterior, se analizaron respuestas de 5,000 personas encuestadas de diferentes regiones (África, Asia, Europa, Oceanía, América del Norte y América del Sur). 

1.2.4	Relevancia de los datos
Los datos son el activo más importante en la toma de decisiones, sin embargo, no basta con tener datos, hay que saber analizarlos y utilizarlos para poder optimizarlos. 

1.2.5	Objetivos esperados
Definir:
­	Cuál es la región (de las mencionadas) que realiza más trabajo remoto
­	Cuál es la industria que puede realizar trabajo remoto 
­	Cuál es el puesto que es más frecuente que realice trabajo remoto
­	Si el trabajo remoto incrementa los niveles de estrés 
­	Si el trabajo remoto genera alguna afectación a la salud mental
­	Si las personas que tienen alguna afectación mental tienen acceso al cuidado de la salud
­	Si el trabajo remoto impide la realización de actividad física
­	Si el trabajo remoto interfiere con la calidad del sueño de los trabajadores
­	Si las personas se sienten satisfechas con el desarrollo del trabajo remoto 
­	Si el trabajo remoto ha incrementado la productividad de los trabajadores

# 2.	PREPARACIÓN Y LIMPIEZA DE DATOS

5.1	Descripción de la Base de Datos

2.1.1	Número de registros y variables/campos
La base de datos seleccionada (archivo CSV) cuenta con 5,000 registros con 20 columnas (categorías).

Para fines de análisis de este proyecto, las columnas (categorías) utilizadas, fueron cambiando, dependiendo el requerimiento.

Las columnas (categorías) que no fueron utilizadas en el análisis fueron: 
­	Gender – no requerido
­	Work_Life_Balance_Rating – falta de información
­	Social_Isolation_Rating – falta de información
­	Company_Support_for_Remote_Work – falta de información

2.1.2	Tipos de datos (numéricos, categóricos, fechas, etc.)
Los datos por analizar en este proyecto son numéricos y categóricos dependiendo la categoría.

# 5.2	Limpieza de Datos
Para realizar la limpieza de datos se realizó de dos maneras: 
­	Excel. No se detecta necesidad de realizar limpieza.
•	Se seleccionan todos los datos y se activa el formato tabla. 
•	Se tomó como base el número de empleado y se revisó que no estuviera duplicado.
•	Se revisó por medio de filtros que no se tuvieran datos en blanco en cada una de las columnas (categorías).
­	R. No se detecta necesidad de realizar limpieza.
•	Se analiza mediante R por medio de códigos de limpieza, arrojando que no hay evidencia de datos nulos o faltantes 

# 3.	ANÁLISIS EXPLORATORIO DE DATOS (EDA)
5.1	Análisis Descriptivo (estadística descriptiva y distribución de variables)
Se realizó el análisis descriptivo utilizando el software Excel para el cálculo de la estadística básica. 
Para la sección de representación de las distribuciones de variables, se utilizó Excel y R para comparar el tipo de gráficos obtenidos. 

# 4. Herramientas de visualización
Para la visualización de datos utilizamos Tableau representando las principales gráficas

# 5.	INTERPRETACIÓN Y CONCLUSIONES

# 5.1	Resultados del Análisis
­	¿Cuál es la región (de las mencionadas) que realiza más trabajo remoto?
Las personas que más trabajo remoto realizan se encuentran en África, seguido de Asia y Oceanía

­	¿Cuál es la industria que puede realizar trabajo remoto? 
El tipo de industria que más realiza trabajo remoto es Manufacturing, seguido de Finance y Healthcare

­	¿Cuál es el puesto que es más frecuente que realice trabajo remoto?
La posición que más trabajo remoto realiza es Data Scientist seguido de Software Engineer

­	¿El trabajo remoto incrementa los niveles de estrés?
El trabajo remote genera mayores niveles de estrés (con 1% mayor). Los trabajos tipo en sitio e híbrido generan menores niveles de estrés (siendo ligeramente mejor en sitio)

­	¿El trabajo remoto genera alguna afectación a la salud mental?
El tipo de trabajo no está correlacionado con alguna afectación a la salud

­	¿Las personas que tienen alguna afectación mental tienen acceso al cuidado de la salud?
La mayoría de las personas que tienen alguna afectación a la salud no tienen acceso a atención médica


­	¿El trabajo remoto impide la realización de actividad física?
Al analizar todas las regiones, las personas que realizan trabajo remoto realizan más ejercicio diario que las que hacen trabajo híbrido o en sitio.

­	¿El trabajo remoto interfiere con la calidad del sueño de los trabajadores?
Considerando todas las regiones, la calidad de sueño no se ve afectada por el trabajo remoto (excepto en África en donde el trabajo remoto genera mejor calidad de sueño y Oceanía que el trabajo remoto general mala calidad de sueño). Detallando los datos, se puede concluir que el tipo de trabajo no afecta con la calidad del sueño.

­	¿Las personas se sienten satisfechas con el desarrollo del trabajo remoto?
La mayoría de las personas entrevistadas no están satisfechas con realizar trabajo remoto, a excepción de Europa.

­	¿El trabajo remoto ha incrementado la productividad de los trabajadores?
Las personas entrevistadas, consideran que al realizar actividades remotas su productividad ha disminuido.

# 5.2	Conclusiones
Después de realizar el análisis de los datos considerando el 80% de las variables presentadas se concluye que los datos no son completamente significativos puesto que no se tuvo una muestra homogénea de entrevistados por región, por industria y/o puesto. 
Con los datos analizados se concluye que el trabajo remoto no es la mejor opción para incrementar los niveles de producción del personal ni mejorar su calidad de vida, sin embargo, no se tiene evidencia suficiente para determinar que el trabajo remoto afecta la salud mental de los trabajadores. 
La finalidad del estudio es buena, pero se tienen áreas de oportunidad en la determinación de los datos a analizar, se recomienda se repita el estudio considerando los puntos mencionados. 

