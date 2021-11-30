# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Otter.create([{ name: 'Mr. Otter', age: 5, cuteness: 10, softness: 10 },
              { name: 'Mr. River Otter', age: 3, cuteness: 10, softness: 10 },
              { name: 'Random Q. Ottersby', age: 8, cuteness: 8, softness: 6 },
              { name: 'Xavier P. Ottersbottom', age: 12, cuteness: 7, softness: 7 },
              { name: 'Dan', age: 5, cuteness: 5, softness: 5 }])
