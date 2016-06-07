# random number generator for 2 numbers 1-52 and 1-4
# switchcase that assigns a suit
# deal function
# player hand function
# dealer hand function
# hit function
# player move function
# dealer move function
# check for winner
# score/bank counter
# bet function
# play game function
# handling aces
# double down
# insurance
# split

require "pry"
require "./card"
require "./deck"

def welcome
	puts "Welcome to Black Jack 21. Please choose an option below:"
	puts "======================================================="
	puts "| 1. Easy Mode                                        |"
	puts "|     No bets. Player with the highest point total    |"
	puts "|     without going over 21 wins.                     |"
	puts "| 2. Normal Mode                                      |"
	puts "|     One deck shoe with betting. Your game ends when |"
	puts "|     you run out of money or you break the bank.     |"
	puts "| 3. Nightmare Mode                                   |"
	puts "|     Infinite cards in the shoe. Your game ends when |"
	puts "|     you run out of money or you break the bank      |"
	puts "| 4. Instructions                                     |"
	puts "| 5. About                                            |"
	puts "======================================================="
end

def selection
	@choice = gets.chomp.to_i
	until (1..5).include?(@choice)
		puts "Please select an option 1 - 5."
		@choice = gets.chomp.to_i
	end
	@choice
end

def instructions
	puts "Instructions go here"
end

def about
	puts "about goes here"
end



def play_game
	welcome
	selection
	puts @choice
end

play_game