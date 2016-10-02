# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DataBlog.create!(title:'Reading and Writing Data', content:'CRUD is an acronym for the four verbs we use to operate on data: Create, Read, Update and Delete. Active Record automatically creates methods to allow an application to read and manipulate data stored within its tables.')
DataBlog.create!(title:'Create', content:'Active Record objects can be created from a hash, a block or have their attributes manually set after creation. The new method will return a new object while create will return the object and save it to the database.')