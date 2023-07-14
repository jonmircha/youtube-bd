//Comandos
show dbs
use db_name
show collections

//Modelo de Datos

//Colección de Libros
db.books.insertMany([
  {
  _id: ObjectId("6152f6d15e91ab001c3ce336"),
  title: "El Gran Gatsby",
  author: "F. Scott Fitzgerald",
  publishedYear: 1925,
  genres: ["Ficción", "Clásico"],
  price: 12.99
  },
  {
  _id: ObjectId("6152f6d15e91ab001c3ce338"),
  title: "1984",
  author: "George Orwell",
  publishedYear: 1949,
  genres: ["Ficción", "Distopía"],
  price: 9.99
},
{
  _id: ObjectId("6152f6d15e91ab001c3ce33a"),
  title: "Orgullo y prejuicio",
  author: "Jane Austen",
  publishedYear: 1813,
  genres: ["Ficción", "Romance"],
  price: 10.99
}
])



//Colección de Autores
db.authors.insertMany([
  {
  _id: ObjectId("6152f6d15e91ab001c3ce337"),
  name: "F. Scott Fitzgerald",
  nationality: "Estadounidense",
  birthDate: ISODate("1896-09-24"),
  books: [
    ObjectId("6152f6d15e91ab001c3ce336"),
    ObjectId("6152f6d15e91ab001c3ce339")
  ]
},
{
  _id: ObjectId("6152f6d15e91ab001c3ce33b"),
  name: "George Orwell",
  nationality: "Británico",
  birthDate: ISODate("1903-06-25"),
  books: [
    ObjectId("6152f6d15e91ab001c3ce338")
  ]
},
{
  _id: ObjectId("6152f6d15e91ab001c3ce33c"),
  name: "Jane Austen",
  nationality: "Británica",
  birthDate: ISODate("1775-12-16"),
  books: [
    ObjectId("6152f6d15e91ab001c3ce33a")
  ]
}
])

//CRUD

db.books.insertOne({
  title: "Nuevo Libro",
  author: "Autor Desconocido",
  publishedYear: 2023,
  genres: ["Ficción", "Misterio"],
  price: 14.99
})
db.books.find()
db.books.findOne({ title: "El Gran Gatsby" })
db.books.updateOne({ title: "El Gran Gatsby" }, { $set: { price: 11.99 } })
db.books.deleteOne({ title: "Nuevo Libro" })

db.authors.insertOne({
  name: "Nuevo Autor",
  nationality: "Desconocida",
  birthDate: new Date("1990-01-01"),
  books: []
})
db.authors.findOne({ name: "F. Scott Fitzgerald" })
db.authors.updateOne({ name: "F. Scott Fitzgerald" }, { $set: { nationality: "Estadounidense" } })
db.authors.deleteOne({ name: "Nuevo Autor" })
