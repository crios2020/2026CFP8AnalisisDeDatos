// Actividad Practica

// Paso 1 -
use('biblioteca')
db.libros.deleteMany({})
// Paso 2 -

db.libros.insertMany([
    {
        titulo: "El Principito",
        autor: "Antoine de Saint-Exupéry",
        anio: 1943,
        stock: 10
    },
    {
        titulo: "Don Quijote de la Mancha",
        autor: "Miguel de Cervantes",
        anio: 1605,
        stock: 5
    },
    {
        titulo: "Cien años de soledad",
        autor: "Gabriel García Márquez",
        anio: 1967,
        stock: 8
    },
    {
        titulo: "Rayuela",
        autor: "Julio Cortázar",
        anio: 1963,
        stock: 3
    },
    {
        titulo: "Martín Fierro",
        autor: "José Hernández",
        anio: 1872,
        stock: 6
    }
])


// Paso 3 -
db.libros.find()
//db.libros.find().pretty()

// Paso 4 -
//1. Mostrar todos los libros.
db.libros.find()
//2. Mostrar únicamente el libro "Rayuela".
db.libros.find({ 'titulo': 'Rayuela' })
//3. Mostrar los libros con stock mayor a 5.
db.libros.find({ stock: { $gt: 5 } })
//4. Mostrar los libros publicados después de 1950.
db.libros.find({ anio: { $gt: 1950 } })
db.libros.find({ anio: { $lte: 1950 } })
//5. Mostrar únicamente el título y el autor de todos los libros.
db.libros.find({}, { titulo: 1, autor: 1 })
db.libros.find({ stock: { $lte: 5 } }, { titulo: 1, autor: 1 })
//select titulo, autor from libros where stock<=5;

//6. Mostrar los libros cuyo autor contenga la letra 'z'
db.libros.find({ autor: { $regex: "z", $options: "i" } })

/*
$regex: "z": busca autores que contengan la letra z.
$options: "i": hace que la búsqueda sea insensible a mayúsculas y minúsculas (encuentra tanto z como Z).

*/

//Paso 5: Actualización de documentos
//1. Modificar el stock de "Rayuela" a 7.
db.libros.updateOne({ 'titulo': 'Rayuela' }, { $set: { 'stock': 7 } })
//2. Modificar el año de publicación de "Martín Fierro" a 1873.
db.libros.updateOne({ 'titulo': 'Martín Fierro' }, { $set: { 'anio': 1873 } })
//Verificar los cambios mediante consultas.
db.libros.find()

//Paso 6: Eliminación de documentos
//1. Eliminar el libro "Don Quijote de la Mancha".
db.libros.deleteOne({ 'titulo': 'Don Quijote de la Mancha' })
//2. Mostrar nuevamente todos los documentos para verificar la eliminación.
db.libros.find()

//Desafío adicional
//Agregar tres nuevos libros utilizando insertMany().
db.libros.insertMany([
    {
        título: "1984",
        autor: "George Orwell",
        anio: 1949,
        stock: 12
    },
    {
        titulo: "Pinocho",
        autor: "El carpintero",
        anio: 1949,
        stock: 12
    },
    {
        titulo: "El principito",
        autor: "Saint Supery",
        anio: 1949,
        stock: 12
    },
    {
        cliente: "Juan Perez",
        autor: "Saint Supery",
        anio: 1949,
        stock: 12
    }
])
db.libros.find()
