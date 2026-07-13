// Select the database to use.
use('usuarios');


db.getCollection('usuarios').insertOne({
        "nombre": "Carlitos Rios",
        "direccion": "Medrano 162",
        "codigo_postal": "1445",
        "ciudad": "Buenos Aires"
});



db.getCollection('usuarios').insertMany([
{ 'nombre': 'mafalda', 'direccion': 'Lima 22', 'codigo postal': '1456', 'ciudad': 'CABA' },
{ 'nombre': 'Heidi', 'direccion': 'Abuelito 22', 'codigo postal': '1456', 'ciudad': 'CABA' },
{ 'nombre': 'Mazinger', 'direccion': 'Japon 22', 'codigo postal': '1456', 'ciudad': 'CABA' }
]);



print('----------------------------------------------------------------------------------');
print(db.getCollection('usuarios').find());
print('----------------------------------------------------------------------------------');
print(db.getCollection('usuarios').totalSize());
print('----------------------------------------------------------------------------------');
print(db.getCollection('usuarios').find().limit(2));
print('----------------------------------------------------------------------------------');
print(db.getCollection('usuarios').find({'ciudad': 'CABA'}))
print('----------------------------------------------------------------------------------');
print(db.getCollection('usuarios').find({'nombre': 'Carlitos Rios'}))

print('----------------------------------------------------------------------------------');
// db.getCollection('usuarios').remove({'ciudad':'CABA'})
db.getCollection('usuarios').deleteOne({'ciudad':'CABA'})
db.getCollection('usuarios').replaceOne({'nombre':'Carlitos Rios'},{'nombre':'Carlos Ríos'})