import xml.etree.ElementTree as ET

#tree=ET.parse('libros.xml')

data=ET.parse('libros.xml').getroot()

lista_libros=[]
for libro in data:
    lista_atributos=[atributo.text for atributo in libro]
    lista_libros.append(lista_atributos)

print(lista_libros)
