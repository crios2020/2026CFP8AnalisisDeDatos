import pandas as pd

# Instalar pandas

# Windows
# pip install pandas
# pip install openpyxl
# pip3 install lxml

# Linux
# python3 -m pip install pandas

# PIP: Python Installer Package


df=pd.read_xml('libros.xml')
#df=pd.read_csv('libros.csv', encoding='utf-8')
#df=pd.read_excel('libros.xlsx')

#Muestra las primeras filas
#print(df.head)

#Listado total de libros
#print(df)

#Libros del 2007
#print(df[df['anio_publicacion']>2007])

#Libros publicados entre 2000 y 2005
#print(df[(df['anio_publicacion'] >= 2000) & (df['anio_publicacion'] <= 2005)])
print(df[df['anio_publicacion'].between(2000, 2005)])

#Libros de Borges
print(df[df['autor'].str.contains('Borges', case=False)])
