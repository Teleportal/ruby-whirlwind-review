puts "Please give me 5 of your favorite foods."

food1 = gets.chomp
food2 = gets.chomp
food3 = gets.chomp
food4 = gets.chomp
food5 = gets.chomp 

favorite_foods = [food1, food2, food3, food4, food5]

p favorite_foods

number = 1

favorite_foods.each do | food |
  puts "#{number}. #{food}" 
  number += 1
end 

