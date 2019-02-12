class MusicImporter
  attr_accessor :filepath
  
  def initialize(filepath)
    @filepath = filepath
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