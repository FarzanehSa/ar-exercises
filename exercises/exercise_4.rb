require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
Store.create(name: "abc", annual_revenue: 1000, mens_apparel: false, womens_apparel: false  )
Store.create(name: "abc", annual_revenue: "a", mens_apparel: true, womens_apparel: true)
Store.create(name: "abc", annual_revenue: -10, mens_apparel: true, womens_apparel: true)
Store.create(name: "", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
Store.create(name: "a", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
Store.create(name: "ab", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts Store.count

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each {|store| puts "name: #{store.name}, annual_revenue: #{store.annual_revenue}"}

@womens_stores_low_revenue = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)