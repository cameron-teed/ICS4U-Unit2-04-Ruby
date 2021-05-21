#!/usr/bin/ruby

##
# This program pushes a user input to a program with a class containing an
# arraylist. Then Pops and peeks it. Also clears it.
#
# @author  Cameron Teed
# @version 1.0
# @since   2021-05-21
# frozen_string_literal: true

# Loads the needed files
load 'mr_coxall_stack.rb'

begin
  # Calls the stack
  class_stack = MrCoxallStack.new

  counter = 0
  counter2 = 0
  # Asks  and gets for user input
  puts 'Enter how many numbers you want to add to a stack: '
  user_param = gets.chomp
  user_param = user_param.to_i unless user_param.match(/[^[:digit:]]+/)
  puts
  
  

  # Gets user input and stores in an array
  while counter < user_param
    # Asks user to enter number
    puts 'Enter an integer to push onto the stack: '
    number_chosen = gets.chomp.to_i
    # Pushes the chosen number to the method
    class_stack.push_arr(number_chosen)
    puts
    # Adds one to counters
    counter += 1
  end
  
  # Prints the top number in the stack
  puts "Peeked: #{class_stack.peek_stack}"
  puts "The numbers in the stack: #{class_stack.show_stack}"
  # Asks and gets for user input
  puts "\nEnter how many numbers you want to pop: "
  user_param2 = gets.chomp
  user_param2 = user_param2.to_i unless user_param2.match(/[^[:digit:]]+/)
  puts

  # Prints out the popped number
  while counter2 < user_param2
    puts "Popped: #{class_stack.pop_stack}"
    # Adds one to counters
    counter2 += 1
  end
  # Shows user whats in the stack
  puts "The numbers in the stack: #{class_stack.show_stack}"

  # Calls the clear method and prints out the array has been cleared
  puts "\nClearing the numbers in the stack"
  puts class_stack.clear_stack
  puts "The numbers in the stack: #{class_stack.show_stack}"

  # Tells user that the program is done
  puts "\nDone"
rescue ArgumentError
  # Catches if the array is empty
  puts "\nInvalid Input. More numbers Popped than in stack."
rescue StandardError
  # Catches errors
  puts "\nInvalid Input. Try again."
end
