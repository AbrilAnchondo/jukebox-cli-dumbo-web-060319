songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:
        - help : displays this help message
        - list : displays a list of songs
        you can play
        - play : lets you choose a song to 
        play 
        - exit : exits this program"
  
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_name_input = gets.chomp
  user_number_input = gets.chomp
  songs.each_with_index do |song, index|
   if song == user_name_input || index = user_number_input
     puts "Playing #{song}"
   end
   if song != user_name_input || index != user_number_input
     puts "Invalid input, please try again"
   end
 end
end

def exit_jukebox
  puts "Goodbye"
end

def run 
  help 
  puts "Please enter a command:"
  command_input = gets.strip
  while command_input != "exit" do
    case command_input
    when "list"
      list
    when "play"
      play
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    end
  end
  
  
end
