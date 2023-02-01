require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0

    @@artists = []

    @@genres = []

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end

a1 = Song.new("song", "Beck", "rock")
a2 = Song.new("song", "Beck", "rock")