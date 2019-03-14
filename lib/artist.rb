require 'pry'

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def self.song_count
    @@song_count
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(song_title)
    song = Song.new(song_title)
    @songs << song
    @@song_count += 1
    song.artist = self
  end


end
