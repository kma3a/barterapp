# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
sample_categories = ['videogames', 'movies', 'books']
sample_items = ["Lord the Rings", "Star Trek", "Harry Potter", "Firefly"]
name_elements = ['vanilla', 'bear', 'otter', 'poop']

sample_categories.each do |c|
  Category.create!(name: c)
end

sample_items.each do |i|
  Item.create!(name: i).category = Category.all.sample
end

User.create(email: 'vanillabear@gmail.com', password: 'otterpoop', password_confirmation: 'otterpoop')
User.create(email: 'otters@gmail.com', password: 'otterbots', password_confirmation: 'otterbots')
User.create(email: '#{name_elements.sample(2).join}@gmail.com', password: 'password', password_confirmation: 'password')

Item.all.each do |i|
  User.all.sample.available_item << i
  User.all.sample.wanted_item << i

end
