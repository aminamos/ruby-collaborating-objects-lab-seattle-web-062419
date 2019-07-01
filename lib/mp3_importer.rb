class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end
    
    def files
        Dir["./spec/fixtures/mp3s/*.mp3"].map do |x|
            x.split("/").last
        end
    end

    def import
        self.files.each do |filename|
            Song.new_by_filename(filename)
        end
    end
end