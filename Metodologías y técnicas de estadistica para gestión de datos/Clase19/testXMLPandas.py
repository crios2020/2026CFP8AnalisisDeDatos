import pandas as pd

# Instalar pandas
# pip install pandas
# pip3 install pandas
# python3 -m pip install pandas


#df=pd.read_xml('libros.xml')
#df=pd.read_csv('libros.csv', encoding='utf-8')
df=pd.read_excel('libros.xlsx')

#Muestra las primeras filas
#print(df.head)

#print(df)
print(df[df['anio_publicacion']>2007])
