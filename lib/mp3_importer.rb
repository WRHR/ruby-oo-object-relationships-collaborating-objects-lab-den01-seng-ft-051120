require 'pry'
class MP3Importer
    attr_reader :path, :file

    def initialize path
        @path = path
    end

    def files
        Dir.entries(@path).delete_if {|string| string.length < 3}
    end

    def import 
        self.files.map { |file| Song.new_by_filename(file) }
    end
end