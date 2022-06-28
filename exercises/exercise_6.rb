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
@store1.employees.create(first_name: "Alex", last_name: "Lu", hourly_rate: 100)
@store2.employees.create(first_name: "Sarah", last_name: "Free", hourly_rate: 150)
@store2.employees.create(first_name: "Mina", last_name: "One", hourly_rate: 50)
@store2.employees.create(first_name: "Kiana", last_name: "Jan", hourly_rate: 40)
@store2.employees.create(first_name: "Mike", last_name: "Read", hourly_rate: 200)
@store2.employees.create(last_name: "b", hourly_rate: 50)
@store2.employees.create(first_name: "a",hourly_rate: 50)
@store2.employees.create(first_name: "a", last_name: "b", hourly_rate: 39)
@store2.employees.create(first_name: "a", last_name: "b", hourly_rate: 201)
@store2.employees.create(first_name: "a", last_name: "b", hourly_rate: "s")
# @store2.employees.create(first_name: "a", last_name: "b", hourly_rate: 50)

p Employee.count