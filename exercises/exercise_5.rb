require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@sum = Store.sum(:annual_revenue)
@avg = Store.average(:annual_revenue)
@overMCount = Store.where("annual_revenue > ?", 1000000).count

puts "Sum of Annual Revenues: #{@sum}"

puts "Average of Annual Revenues: #{@avg}"

puts "Number of Annual Revenues more than 1M: #{@overMCount}"
