class Song

    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.new_by_filename(filename)
        song = self.new
        song.title = filename.split(" - ")[1]
        song
    end

    def artist(artist)
        @artist
    end

    def artist=(name)
        Artist.find_or_create_by_name(name)
        Artist.add_song(name)
    end

    def self.all
        @@all
    end
end