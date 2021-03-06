# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = Unicorn.create(name: "Happicorn", shoe: 5, horn: 7)
u2 = Unicorn.create(name: "Mr. Sparkle Face", shoe: 6, horn: 3)
u3 = Unicorn.create(name: "Peter", shoe: 12, horn: 1)
u4 = Unicorn.create(name: "Kissinger", shoe: 12, horn: 12)
u5 = Unicorn.create(name: "Longhorn", shoe: 1, horn: 0)

u1 = Leprechaun.create(name: "Lucky", gold_count: 5, height: 7)
u2 = Leprechaun.create(name: "Elbert", gold_count: 6, height: 3)
u3 = Leprechaun.create(name: "Sneezy", gold_count: 12, height: 1)
u4 = Leprechaun.create(name: "Doc", gold_count: 12, height: 12)
u5 = Leprechaun.create(name: "Bashful", gold_count: 1, height: 0)
