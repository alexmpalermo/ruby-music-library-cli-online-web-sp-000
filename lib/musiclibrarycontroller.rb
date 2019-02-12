class MusicLibraryController
  
  def initialize(path = "./db/mp3s")
    x = MusicImporter.new(path)
    x.import 
  end
  
  def call 
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts 
  end
  
  
end