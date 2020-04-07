require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
  end

  def import

    files = Dir.glob(@path + "/*.mp3")


    files.each do {|song| Song.new_by_filename(filename)}
    end
  end
end
