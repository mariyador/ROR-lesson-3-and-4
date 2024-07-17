require 'faker'

flag = true

puts 'True fact about Chuck Norris'

while flag
    puts Faker::ChuckNorris.fact
    puts 'Do you want more? Yes or No'
    if gets.chomp.upcase == 'No'
        puts "Good NoBye!"
        flag = false        
    end
end