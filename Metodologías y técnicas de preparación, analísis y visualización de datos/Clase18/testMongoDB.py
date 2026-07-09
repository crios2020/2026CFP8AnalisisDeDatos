print("-- Test MongoBD --")

#pip install pymongo

from pymongo import MongoClient
client=MongoClient("mongodb://user:java@192.168.20.80/")    #conexión
db=client["mi_base"]                                        #BD
coleccion=db["usuarios"]                                    #Tabla

print("---------------------------------------------------------")
print(db)
print("---------------------------------------------------------")
print(coleccion)
print("---------------------------------------------------------")
print(db.list_collection_names)
print("---------------------------------------------------------")

coll=db.get_collection("usuarios")
print(coll.estimated_document_count())
print("---------------------------------------------------------")

#ingresamos un documento (registro)
informacionUsuario={
    "nombre" : "Carlos Rios",
    "direccion" : "Medrano 162",
    "codigo_postal" : "1445",
    "ciudad" : "Buenos Aires"
}
#coll.insert_one(informacionUsuario)

informacionUsuarios=[
    {
    "nombre" : "Laura Salinas",
    "direccion" : "Medrano 1",
    "codigo_postal" : "1445",
    "ciudad" : "Buenos Aires"
    },
    {
    "nombre" : "Cristian Molian",
    "direccion" : "Medrano 2",
    "codigo_postal" : "1445",
    "ciudad" : "Buenos Aires"
    },
    {
    "nombre" : "Mario Moretti",
    "direccion" : "Medrano 3",
    "codigo_postal" : "1445",
    "ciudad" : "Buenos Aires"
    }                    
]
#coll.insert_many(informacionUsuarios)

informacionArticulo={
    "descripcion" : "Libro técnico",
    "stock" : 30,
    "precio" : 1260
}
#coll.insert_one(informacionArticulo)

print("---------------------------------------------------------")
#select * from usuarios
#mostrar todos los registros
for doc in coll.find():
    print(doc)
print("---------------------------------------------------------")