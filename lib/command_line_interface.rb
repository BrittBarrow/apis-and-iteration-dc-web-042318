def welcome
  # puts out a welcome message here!
  puts "Welcome!!!!!!!!!"
end

def select_just_one_character
  all_characters = RestClient.get('http://www.swapi.co/api/people/')
  character_hash = JSON.parse(all_characters)
  character_profiles = character_hash.fetch('results')
  #select_just_one_character = character_profiles.find {|x| x["name"].downcase}
end

def get_character_from_user
  puts "please enter a character"
  # use gets to capture the user's input. This method should return that input, downcased.
  character = gets.chomp.downcase
end
