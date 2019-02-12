class MusicImporter
  attr_accessor :filepath
  
  def initialize(filepath)
    @filepath = filepath
  end
  
   def files
   Dir.chdir(@filepath) do | filepath |
        Dir.glob("*.mp3")
  end
end
  
  def import
    files.each { |file| Song.new_by_filename(file) }
  end
  
  
  def files 
    @files = [] 
    @files << filenames
    @files
  end
  
  def self.import
    self.files.each do |file|
    Song.new(file)
  end
end
  
end