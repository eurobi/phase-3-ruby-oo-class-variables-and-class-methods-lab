require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq()
    end
    def self.genres
        @@genres.uniq()
    end
    def self.genre_count
        genre_c = {}
        @@genres.uniq().each do |genre|
            genre_c[genre] = @@genres.count(genre)
        end
        genre_c
    end
    def self.artist_count
        artist_c = {}
        @@artists.uniq().each do |artist|
            artist_c[artist] = @@artists.count(artist)
        end
        artist_c
    end
    


end
