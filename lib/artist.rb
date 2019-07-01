require 'pry'
require_relative './song.rb'

class Artist

    attr_accessor :name

    @@songs = []
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.find_or_create_by_name(aname)
        # if self.artist.nil?
        #     self.artist = Artist.new(name)
        # else
        #     self.artist.name = name
        # end
        Artist.all.each do |x|
            if x.name == aname
                x
            else
                Artist.new(name)
            end
        end
    end

    def save
        @@all << self
    end

    def print_songs

    end

    def add_song(song)
        Song.all.each do |song|
            song.artist = self
            @@songs << song
        end
    end

    def self.all
        @@all
    end

    def self.songs
        @@songs
    end
end
