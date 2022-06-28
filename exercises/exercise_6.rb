require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Store[:has_many] = employees

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alex", last_name: "Lu", hourly_rate: 40)
@store2.employees.create(first_name: "Sarah", last_name: "Free", hourly_rate: 15)
@store2.employees.create(first_name: "Mina", last_name: "One", hourly_rate: 50)

p Employee.count