install.packages("dplyr")
install.packages("ggplot2")

library(dplyr)
library(ggplot2)

data <- read.csv("Impact_of_Remote_Work_on_Mental_Health.csv")

head(data)
str(data)

data <- na.omit(data)

View("Impact_of_Remote_Work_on_Mental_Health.csv")

affected_jobs <- data %>%
  group_by(job_type) %>%
  summarise(affected_count = sum(mental_health == "High")) %>%
  arrange(desc(affected_count))
install.packages("dplyr")
library(dplyr)
View(data)

affected_jobs <- data %>%
  group_by(job_type) %>%
  summarise(affected_count = sum(mental_health == "High", na.rm = TRUE)) %>%
  arrange(desc(affected_count))

str(data)
colnames(data)

affected_jobs <- data %>%
  group_by(Job_Role) %>%
  summarise(affected_count = sum(Mental_Health_Condition == "High", na.rm = TRUE)) %>%
  arrange(desc(affected_count))
View(data)

# Verificar valores perdidos
sum(is.na(data$Mental_Health_Condition))
sum(is.na(data$Stress_Level))

data_clean <- data %>%
  na.omit(c("Mental_Health_Condition", "Stress_Level"))

# Gráfico de barras
ggplot(data_clean, aes(x = Mental_Health_Condition, fill = Stress_Level)) +
  geom_bar(position = "dodge") +
  labs(title = "Relación entre Condición de Salud Mental y Nivel de Estrés",
       x = "Condición de Salud Mental",
       y = "Número de Respuestas") +
  theme_minimal()

# Gráfico de puntos
ggplot(data_clean, aes(x = Stress_Level, y = Mental_Health_Condition)) +
  geom_point(aes(color = Mental_Health_Condition), alpha = 0.6) +
  labs(title = "Relación entre Nivel de Estrés y Condición de Salud Mental",
       x = "Nivel de Estrés",
       y = "Condición de Salud Mental") +
  theme_minimal()

# Gráfico de caja
ggplot(data_clean, aes(x = Mental_Health_Condition, y = Stress_Level)) +
  geom_boxplot() +
  labs(title = "Distribución del Nivel de Estrés por Condición de Salud Mental",
       x = "Condición de Salud Mental",
       y = "Nivel de Estrés") +
  theme_minimal()
# Verificar valores perdidos
sum(is.na(data$Work_Location))
sum(is.na(data$Stress_Level))

# Limpiar datos
data_clean <- data %>%
  na.omit(c("Work_Location", "Stress_Level"))

# Crear tabla de conteo
table_work_stress <- data_clean %>%
  group_by(Work_Location, Stress_Level) %>%
  summarise(count = n()) %>%
  ungroup()
View(table_work_stress)

# Gráfico de barras
ggplot(table_work_stress, aes(x = Work_Location, y = count, fill = Stress_Level)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Relación entre Ubicación de Trabajo y Nivel de Estrés",
       x = "Ubicación de Trabajo",
       y = "Número de Respuestas") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Para mejorar la legibilidad

data_clean <- data %>%
  na.omit(c("Work_Location", "Productivity_Change"))
# Crear tabla de conteo
table_work_productivity <- data_clean %>%
  group_by(Work_Location, Productivity_Change) %>%
  summarise(count = n()) %>%
  ungroup()

# Ver la tabla
print(table_work_productivity)
View(table_work_productivity)

# Gráfico de barras
ggplot(table_work_productivity, aes(x = Work_Location, y = count, fill = Productivity_Change)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Relación entre Ubicación de Trabajo y Cambio en Productividad",
       x = "Ubicación de Trabajo",
       y = "Número de Respuestas") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Para mejorar la legibilidad

# Limpiar datos
data_clean <- data %>%
  na.omit(c("Work_Location", "Region"))

# Crear tabla de conteo
table_work_region <- data_clean %>%
  group_by(Work_Location, Region) %>%
  summarise(count = n()) %>%
  ungroup()
View(table_work_region)

# Gráfico de barras
ggplot(table_work_region, aes(x = Work_Location, y = count, fill = Region)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Relación entre Ubicación de Trabajo y Región",
       x = "Ubicación de Trabajo",
       y = "Número de Respuestas") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Para mejorar la legibilidad

data_clean <- data %>%
  na.omit(c("Work_Location", "Job_Role"))

# Crear tabla de conteo
table_work_role <- data_clean %>%
  group_by(Work_Location, Job_Role) %>%
  summarise(count = n()) %>%
  ungroup()
View(table_work_role)

# Gráfico de barras
ggplot(table_work_role, aes(x = Work_Location, y = count, fill = Job_Role)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Relación entre Ubicación de Trabajo y Rol Laboral",
       x = "Ubicación de Trabajo",
       y = "Número de Respuestas") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Para mejorar la legibilidad

data_clean <- data %>%
  na.omit(c("Work_Location", "Years_of_Experience"))

# Agrupar años de experiencia en categorías
data_clean <- data_clean %>%
  mutate(Experience_Category = case_when(
    Years_of_Experience < 1 ~ "< 1 año",
    Years_of_Experience >= 1 & Years_of_Experience < 3 ~ "1-2 años",
    Years_of_Experience >= 3 & Years_of_Experience < 5 ~ "3-4 años",
    Years_of_Experience >= 5 ~ "5+ años"
  ))

# Crear tabla de conteo
table_work_experience <- data_clean %>%
  group_by(Work_Location, Experience_Category) %>%
  summarise(count = n()) %>%
  ungroup()
View(table_work_experience)

# Gráfico de barras
ggplot(table_work_experience, aes(x = Work_Location, y = count, fill = Experience_Category)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Relación entre Ubicación de Trabajo y Años de Experiencia",
       x = "Ubicación de Trabajo",
       y = "Número de Respuestas") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Para mejorar la legibilidad

# Resumen general de los datos
summary(data_clean)

# Estadísticas descriptivas para Years_of_Experience
mean_experience <- mean(data_clean$Years_of_Experience, na.rm = TRUE)
sd_experience <- sd(data_clean$Years_of_Experience, na.rm = TRUE)
min_experience <- min(data_clean$Years_of_Experience, na.rm = TRUE)
max_experience <- max(data_clean$Years_of_Experience, na.rm = TRUE)
quantiles_experience <- quantile(data_clean$Years_of_Experience, na.rm = TRUE)

# Imprimir resultados
cat("Media de Años de Experiencia:", mean_experience, "\n")
cat("Desviación Estándar de Años de Experiencia:", sd_experience, "\n")
cat("Mínimo de Años de Experiencia:", min_experience, "\n")
cat("Máximo de Años de Experiencia:", max_experience, "\n")
cat("Cuartiles de Años de Experiencia:\n")
print(quantiles_experience)

# Estadísticas descriptivas por ubicación de trabajo
stats_by_location <- data_clean %>%
  group_by(Work_Location) %>%
  summarise(
    mean_experience = mean(Years_of_Experience, na.rm = TRUE),
    sd_experience = sd(Years_of_Experience, na.rm = TRUE),
    min_experience = min(Years_of_Experience, na.rm = TRUE),
    max_experience = max(Years_of_Experience, na.rm = TRUE),
    median_experience = median(Years_of_Experience, na.rm = TRUE)
  )

# Ver resultados
print(stats_by_location)
View(stats_by_location)

data_clean <- data %>%
  na.omit(c("Work_Location", "Stress_Level"))

# Convertir Stress_Level a factor y luego a numérico (si es necesario)
data_clean$Stress_Level <- as.numeric(factor(data_clean$Stress_Level))

# Estadísticas descriptivas por ubicación de trabajo
stats_by_location <- data_clean %>%
  group_by(Work_Location) %>%
  summarise(
    mean_stress = mean(Stress_Level, na.rm = TRUE),
    sd_stress = sd(Stress_Level, na.rm = TRUE),
    min_stress = min(Stress_Level, na.rm = TRUE),
    max_stress = max(Stress_Level, na.rm = TRUE),
    median_stress = median(Stress_Level, na.rm = TRUE),
    count = n()  # Número de respuestas
  )
# Ver resultados
print(stats_by_location)

View(stats_by_location)
# Gráfico de barras para la media del estrés
ggplot(stats_by_location, aes(x = Work_Location, y = mean_stress, fill = Work_Location)) +
  geom_bar(stat = "identity") +
  labs(title = "Media del Nivel de Estrés por Ubicación de Trabajo",
       x = "Ubicación de Trabajo",
       y = "Media del Nivel de Estrés") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Para mejorar la legibilidad
data_clean <- data %>%
  na.omit(c("Work_Location", "Productivity_Change"))
# Convertir Productivity_Change a factor y luego a numérico (si es necesario)
data_clean$Productivity_Change <- as.numeric(factor(data_clean$Productivity_Change))

# Estadísticas descriptivas por ubicación de trabajo
stats_by_location_productivity <- data_clean %>%
  group_by(Work_Location) %>%
  summarise(
    mean_productivity = mean(Productivity_Change, na.rm = TRUE),
    sd_productivity = sd(Productivity_Change, na.rm = TRUE),
    min_productivity = min(Productivity_Change, na.rm = TRUE),
    max_productivity = max(Productivity_Change, na.rm = TRUE),
    median_productivity = median(Productivity_Change, na.rm = TRUE),
    count = n()  # Número de respuestas
  )



View(stats_by_location_productivity)

# Gráfico de barras para la media del cambio en productividad
ggplot(stats_by_location_productivity, aes(x = Work_Location, y = mean_productivity, fill = Work_Location)) +
  geom_bar(stat = "identity") +
  labs(title = "Media del Cambio en Productividad por Ubicación de Trabajo",
       x = "Ubicación de Trabajo",
       y = "Media del Cambio en Productividad") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Para mejorar la legibilidad

data_clean <- data %>%
  na.omit(c("Work_Location", "Satisfaction_with_Remote_Work"))

# Convertir Satisfaction_with_Remote_Work a factor y luego a numérico (si es necesario)
data_clean$Satisfaction_with_Remote_Work <- as.numeric(factor(data_clean$Satisfaction_with_Remote_Work))

# Estadísticas descriptivas por ubicación de trabajo
stats_by_location_satisfaction <- data_clean %>%
  group_by(Work_Location) %>%
  summarise(
    mean_satisfaction = mean(Satisfaction_with_Remote_Work, na.rm = TRUE),
    sd_satisfaction = sd(Satisfaction_with_Remote_Work, na.rm = TRUE),
    min_satisfaction = min(Satisfaction_with_Remote_Work, na.rm = TRUE),
    max_satisfaction = max(Satisfaction_with_Remote_Work, na.rm = TRUE),
    median_satisfaction = median(Satisfaction_with_Remote_Work, na.rm = TRUE),
    count = n() 
  )

print(stats_by_location_satisfaction)

View(stats_by_location_satisfaction)

stats_by_location_satisfaction <- data_clean %>%
  group_by(Work_Location) %>%
  summarise(
    mean_satisfaction = mean(Satisfaction_with_Remote_Work, na.rm = TRUE),
    sd_satisfaction = sd(Satisfaction_with_Remote_Work, na.rm = TRUE),
    min_satisfaction = min(Satisfaction_with_Remote_Work, na.rm = TRUE),
    max_satisfaction = max(Satisfaction_with_Remote_Work, na.rm = TRUE),
    median_satisfaction = median(Satisfaction_with_Remote_Work, na.rm = TRUE),
    count = n()  # Número de respuestas
  )
View(stats_by_location_satisfaction)

# Gráfico de barras para la media de satisfacción
ggplot(stats_by_location_satisfaction, aes(x = Work_Location, y = mean_satisfaction, fill = Work_Location)) +
  geom_bar(stat = "identity") +
  labs(title = "Media de Satisfacción con el Trabajo Remoto por Ubicación de Trabajo",
       x = "Ubicación de Trabajo",
       y = "Media de Satisfacción") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Para mejorar la legibilidad

data_clean <- data %>%
  na.omit(c("Work_Location", "Physical_Activity"))

Convertir Physical_Activity a factor y luego a numérico (si es necesario)
data_clean$Physical_Activity <- as.numeric(factor(data_clean$Physical_Activity))

# Estadísticas descriptivas por ubicación de trabajo
stats_by_location_activity <- data_clean %>%
  group_by(Work_Location) %>%
  summarise(
    mean_activity = mean(Physical_Activity, na.rm = TRUE),
    sd_activity = sd(Physical_Activity, na.rm = TRUE),
    min_activity = min(Physical_Activity, na.rm = TRUE),
    max_activity = max(Physical_Activity, na.rm = TRUE),
    median_activity = median(Physical_Activity, na.rm = TRUE),
    count = n()  # Número de respuestas
  )

View(stats_by_location_activity)
# Gráfico de barras para la media de actividad física
ggplot(stats_by_location_activity, aes(x = Work_Location, y = mean_activity, fill = Work_Location)) +
  geom_bar(stat = "identity") +
  labs(title = "Media de Actividad Física por Ubicación de Trabajo",
       x = "Ubicación de Trabajo",
       y = "Media de Actividad Física") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Para mejorar la legibilidad
data_clean <- data %>%
  na.omit(c("Employee_ID", "Region"))

# Estadísticas descriptivas por región
stats_by_region <- data_clean %>%
  group_by(Region) %>%
  summarise(
    total_employees = n(),  # Número total de empleados por región
    unique_employees = n_distinct(Employee_ID)  # Número de IDs únicos por región
  )
View(stats_by_region)

get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
# Calcular estadísticas descriptivas por región
stats_by_region <- data_clean %>%
  group_by(Region) %>%
  summarise(
    mean_employees = mean(Number_of_Employees, na.rm = TRUE),
    median_employees = median(Number_of_Employees, na.rm = TRUE),
    mode_employees = get_mode(Number_of_Employees),
    count = n()  # Número de entradas por región
  )

data_clean <- data %>%
  na.omit(c("Region", "Number_of_Employees"))

get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Calcular estadísticas descriptivas por región
stats_by_region <- data_clean %>%
  group_by(Region) %>%
  summarise(
    mean_employees = mean(Number_of_Employees, na.rm = TRUE),
    median_employees = median(Number_of_Employees, na.rm = TRUE),
    mode_employees = get_mode(Number_of_Employees),
    count = n()  # Número de entradas por región
  )



install.packages("ggplot2")
install.packages("dplyr")
library(ggplot2)
library(dplyr)

data <- read.csv("Impact_of_Remote_Work_on_Mental_Health.csv")

head(data)
str(data)

data <- na.omit(data)

# Ver nombres de columnas
colnames(data)

# Gráfico de violín
ggplot(data, aes(x = Work_Location, y = Age)) +
  geom_violin(fill = "lightblue", alpha = 0.7) +
  labs(title = "Distribución de la Edad según Ubicación de Trabajo", 
       x = "Ubicación de Trabajo", 
       y = "Edad") +
  theme_minimal()

# Boxplot
ggplot(data, aes(x = Work_Location, y = Age)) +
  geom_boxplot(fill = "lightcoral", alpha = 0.7) +
  labs(title = "Distribución de la Edad según Ubicación de Trabajo", 
       x = "Ubicación de Trabajo", 
       y = "Edad") +
  theme_minimal()

print(colnames(data))
remote_data <- data %>% filter(Work_Location == "Remote")

# Boxplot para Age
ggplot(remote_data, aes(x = Work_Location, y = Age)) +
  geom_boxplot(fill = "lightcoral", alpha = 0.7) +
  labs(title = "Distribución de la Edad para Trabajo Remoto", 
       x = "Trabajo Remoto", 
       y = "Edad") +
  theme_minimal()

# Histograma para Age
ggplot(remote_data, aes(x = Age)) +
  geom_histogram(bins = 30, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de la Edad para Trabajo Remoto", 
       x = "Edad", 
       y = "Frecuencia") +
  theme_minimal()

# Filtrar para incluir solo filas con trabajo remoto
remote_data <- data %>% filter(Work_Location == "Remote")


# Histograma para Hours_Worked_Per_Week
ggplot(remote_data, aes(x = Hours_Worked_Per_Week)) +
  geom_histogram(bins = 30, fill = "green", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Horas de Trabajo por Semana para Trabajo Remoto", 
       x = "Horas de Trabajo por Semana", 
       y = "Frecuencia") +
  theme_minimal()


# Filtrar para incluir solo filas con trabajo remoto
remote_data <- data %>% filter(Work_Location == "Remote") 

# Histograma para Years_of_Experience
ggplot(remote_data, aes(x = Years_of_Experience)) +
  geom_histogram(bins = 30, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Años de Experiencia para Trabajo Remoto", 
       x = "Años de Experiencia", 
       y = "Frecuencia") +
  theme_minimal()

# Histograma para Number_of_Virtual_Meetings
ggplot(remote_data, aes(x = Number_of_Virtual_Meetings)) +
  geom_histogram(bins = 30, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución del Número de Reuniones Virtuales para Trabajo Remoto", 
       x = "Número de Reuniones Virtuales", 
       y = "Frecuencia") +
  theme_minimal()

# Histograma para Hours_Worked_Per_Week
ggplot(remote_data, aes(x = Hours_Worked_Per_Week)) +
  geom_histogram(bins = 30, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Horas Trabajadas por Semana para Trabajo Remoto", 
       x = "Horas Trabajadas por Semana", 
       y = "Frecuencia") +
  theme_minimal()


# Filtrar para incluir solo filas con trabajo remoto
remote_data <- data %>% filter(Work_Location == "Remote") 

# Filtrar NA en Hours_Worked_Per_Week
remote_data <- remote_data %>% filter(!is.na(Hours_Worked_Per_Week))

# Histograma para Hours_Worked_Per_Week
ggplot(remote_data, aes(x = Hours_Worked_Per_Week)) +
  geom_histogram(bins = 30, fill = "lightcoral", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Horas Trabajadas por Semana para Trabajo Remoto", 
       x = "Horas Trabajadas por Semana", 
       y = "Frecuencia") +
  theme_minimal()

remote_hours <- remote_data %>% select(Work_Location, Hours_Worked_Per_Week)
# Ver los datos filtrados
print(remote_hours)

# Si prefieres ver los datos en una tabla más legible
View(remote_hours)

# Histograma para Hours_Worked_Per_Week
ggplot(remote_hours, aes(x = Hours_Worked_Per_Week)) +
  geom_histogram(bins = 30, fill = "lightcoral", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Horas Trabajadas por Semana para Trabajo Remoto", 
       x = "Frecuencia", 
       y = "Horas Trabajadas por Semana") +
  theme_minimal()

# Crear un conteo de las horas trabajadas
hour_counts <- remote_data %>%
  group_by(Hours_Worked_Per_Week) %>%
  summarise(count = n())

# Gráfico de barras
ggplot(hour_counts, aes(x = as.factor(Hours_Worked_Per_Week), y = count)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Horas Trabajadas por Semana para Trabajo Remoto", 
       x = "Horas Trabajadas por Semana", 
       y = "Frecuencia") +
  theme_minimal()

group_by(data)
unique(data)

head(data)

table(data$variable)

# Crear un conteo de los años de experiencia
experience_counts <- remote_data %>%
  group_by(Years_of_Experience) %>%
  summarise(count = n())

# Gráfico de barras
ggplot(experience_counts, aes(x = as.factor(Years_of_Experience), y = count)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Años de Experiencia para Trabajo Remoto", 
       x = "Años de Experiencia", 
       y = "Frecuencia") +
  theme_minimal()

# Crear un conteo de las edades
age_counts <- remote_data %>%
  group_by(Age) %>%
  summarise(count = n())
# Gráfico de barras
ggplot(age_counts, aes(x = as.factor(Age), y = count)) +
  geom_bar(stat = "identity", fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Edad para Trabajo Remoto", 
       x = "Edad", 
       y = "Frecuencia") +
  theme_minimal()
