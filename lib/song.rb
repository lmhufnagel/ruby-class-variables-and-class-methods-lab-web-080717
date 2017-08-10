require 'pry'
class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = []

  attr_accessor :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << @artist
    @@genre_count << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    genre_count = {}

      @@genres.each{ |genre| genre_count[genre]= @@genres.count(genre) }

    genre_count

  end

  def self.artist_count
    artist_count = {}

    @@artists.each{ |artist| artist_count[artist] = @@artists.count(artist)}

    artist_count

  end
end
