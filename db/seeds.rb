# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sprinkle.destroy_all
Category.destroy_all

work = Category.create(name: "Motivational Quotes For Work")
love = Category.create(name: "Motivational Quotes for your Lovelife")

work.sprinkles.create(quote: "Take pride in the fact that all your haters keep you relevant", author: "Timothy Sanders")
work.sprinkles.create(quote: "Continuous improvement is better than delayed perfection", author: "Mark Twain")
work.sprinkles.create(quote: "Don't count the days, make the days count", author: "Muhammad Ali")
work.sprinkles.create(quote: "It's hard to beat a person who never gives up", author: "Babe Ruth")

love.sprinkles.create(quote: "The measure of Love is when you love without measure", author: "Anonymous")
love.sprinkles.create(quote: "I want to do with you what spring does with the cherry trees", author: "Pablo Neruda")
love.sprinkles.create(quote: "I once had a thousand desires, But in my one desire to know you all else has melted away", author: "Rumi")
love.sprinkles.create(quote: "Never love anyone who treates you like you're ordinary", author: "Oscar Wilde")
