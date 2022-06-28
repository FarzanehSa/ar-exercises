require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Please insert store name..."
@storeName = gets.chomp

# store = Store.create(name: @storeName, annual_revenue: 3, mens_apparel: false, womens_apparel: true)
# store = Store.create(name: @storeName, annual_revenue: 3, mens_apparel: false, womens_apparel: false)
# store = Store.create(name: @storeName, annual_revenue: 3)
store = Store.create(name: @storeName)

puts "Is it valid? #{store.valid?}"
errorList = store.errors.messages
errorList.each {|error| p error}

