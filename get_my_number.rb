# Get My Number Game
# Written by: Shumskih

puts "Welcome to 'Get My Number!' game."
print "Type your name: "

username = gets.chomp!.to_s.to_sym

puts "Welcome, #{username}!"

puts "I've got a random number between 1 and 100. Can you guess it?"

target = rand(100) + 1

num_guesses = 0

guessed_it = false

until num_guesses == 10 || guessed_it

	puts "You've got #{10 - num_guesses} guesses left."

	print "Make a guess: "
	guess = gets.to_i
	
	num_guesses += 1


	if guess < target	
		puts "Oops. Your guess was LOW."
	elsif guess > target
		puts "Oops. Your guess was HIGH."
	elsif guess == target
		puts "Good job, #{usename}!"
		puts "You guessed my number in #{num_guesses} guesses!"
		guessed_it = true
	end
	
end

unless guessed_it
	puts "Sorry. You didn't get my number. It was #{target}."
end

 