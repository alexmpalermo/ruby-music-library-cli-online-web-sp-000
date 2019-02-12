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
  
  def self.import
    self.files.each do |file|
    Song.new_from_filename(file)
  end
end
  
end