require 'httparty'
require 'pry'

# Constant - should not change
BASE_URL = "http://json-server.devpointlabs.com/api/v1"

# probably going to turn into an all_users method
users = HTTParty.get("#{BASE_URL}/users").parsed_response

users.each do |user|
  puts user['id']
  puts user['first_name']
  puts user['last_name']
  puts user['phone_number']

while true
    puts "1) View all Users"
    puts "2) View Single User"
    puts "3) Add User"
    puts "4) Update User"
    puts "5) Delete User"
    puts "6) Exit"
  
    choice = gets.to_i
  
    if choice == 1
      puts "Display Users"
      # Need to write a Get for all users (not sure how)
    
    elsif choice == 2
        puts "Single User"
        #I need to be able to call a single user by id using Get (not sure how)
  
    elsif choice == 3
      puts "Add User"
        #Need to write a server Post call (not sure how)

    elsif choice == 4
      puts "Update User"
        #Need to write a server Put call (not sure how)

    elsif choice == 5
      puts "Delete User"
        #Need to write a server Delete call (not sure how)
  
    elsif choice == 6
      exit (0)
  
    else
      puts "Invalid Choice Try Again"
    end
  end
end


