# greet
puts 'Welcome to the price is right!!'
puts ''
puts 'As our lucky contestant pick'
puts 'We have a brand new tv! Our easiest prize.'
puts ''
puts 'Or a new car!! Our medium prize.'
puts ''
puts 'Or the highest prize!! A new Playstation 5!!!'
puts ''
puts 'Please enter to continue: tv, car, or ps5.'
# create an option for prizes with a case
prizes = gets.chomp.downcase.to_s
# show prizes
case prizes
when 'tv'
  puts 'You choose Tv!'
  puts 'Guess a price between 1 and 10'
  price_to_guess = rand(1..10)
when 'car'
  puts 'You have chosen a new car!'
  puts 'Guess a price between 1 and 50'
  price_to_guess = rand(1..50)
when 'ps5'
  puts 'You have chosen a new PlayStation 5!'
  puts 'Guess a price between 1 and 100'
  price_to_guess = rand(1..100)
else
  puts "Please type 'tv', 'car', or 'ps5'as it is."
end
# get initialize user guess and total for loop
user_guess = 0
total_guess = 1
# create a loop for the guessing game
user_guess = gets.chomp.to_i
# loop till the price is right and guesses the count
until user_guess == price_to_guess
  print '> '
  total_guess += 1
  user_guess = gets.chomp.to_i
  next unless user_guess > price_to_guess
  puts 'This guess is too high.'
  print '> '
  total_guess += 1
  user_guess = gets.chomp.to_i
  if user_guess < price_to_guess
    puts 'This guess is too low.'
    total_guess += 1
    print '> '
    user_guess = gets.chomp.to_i
  else
    puts 'This is not the matching number.'
    total_guess += 1
    print '> '
  end
end
# feature 2: When we give the final results, tell the user how many guesses it took them 1to find the right answer
puts 'Congrats! You guessed correctly...'
print "Here is your total guess: #{total_guess}"
