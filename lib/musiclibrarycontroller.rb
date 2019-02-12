class MusicLibraryController
  
  def initialize(path = "./db/mp3s")
    x = MusicImporter.new(path)
    x.import 
  end
  
  def call 
    puts "Welcome to your music library!"
  end
  
  
end