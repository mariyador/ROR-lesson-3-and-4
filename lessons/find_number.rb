secret_number = rand(1..100)

puts 'Guess the number'
number_guess = 0

while true
    puts "Enter number from 1 to 100"
    number = gets.to_i
    number_guess += 1
    if number == secret_number
        puts "You guessed the number #{secret_number} in #{number_guess} try/tries."
        puts "Do you want to play again? Print Yes or No"
        if gets.chomp.upcase == "Yes"
            secret_number = rand(1..100)
            number_steps = 0
            next
        else
            puts "Good Bye!"
            break
        end
    elsif number > secret_number
        puts "Too big! Try the smaller one."
    else
        puts "Too small! Try the bigger one."
    end
end