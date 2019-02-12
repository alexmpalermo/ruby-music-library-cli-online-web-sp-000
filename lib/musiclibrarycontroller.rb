class MusicLibraryController
  
  def initialize(path = "./db/mp3s")
    x = MusicImporter.new(path)
    x.import 
  end
  
  def call 
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts 
  end
  
  
end