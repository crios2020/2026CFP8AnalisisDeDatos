import csv

#Recorrido normal como texto
with open('libros.csv', mode='r', encoding='utf-8') as file:
    csv_reader = csv.reader(file)
    header = next(csv_reader)            #lee la primer fila de encabezado
    print(f"Encabezado: {header}")
    for row in csv_reader:
        print(row)
        
#Recorrido como diccionario (más conveniente)
print('\nLeyendo como diccionario')
with open('libros.csv', mode='r', encoding='utf-8') as file:
    csv_reader = csv.DictReader(file)
    for row in csv_reader:
        #print(row)
        print(row['titulo'], row['autor'],  row['año_publicacion'], row['genero'], row['isbn'])
        

#Realizar un filtrado de registros

