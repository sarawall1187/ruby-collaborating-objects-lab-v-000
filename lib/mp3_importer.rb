require "pry"
class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    files = Dir.glob("#{@path}/*.mp3")
    files.each {|file| file.gsub!("#{@path}/", "")}
    files
  end
  
  def import 
   files.each {|filename| Song.new_by_filename(filename)}
  end
end