import pandas as pd

# Instalar pandas

# Windows
# pip install pandas
# pip install openpyxl
# pip3 install lxml

# Linux
# python3 -m pip install pandas

# PIP: Python Installer Package


#df=pd.read_xml('libros.xml')
#df=pd.read_csv('libros.csv', encoding='utf-8')
df=pd.read_excel('libros.xlsx')

#Muestra las primeras filas
#print(df.head)

#print(df)
print(df[df['anio_publicacion']>2007])
