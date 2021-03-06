require 'pry'

class Artist
    attr_accessor :name, :songs

    @@song_count = 0

    
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end
    
    def self.song_count=(change)
        @@song_count = change
    end

    def self.song_count
        @@song_count
    end
end