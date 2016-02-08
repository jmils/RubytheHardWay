class Song

  def initialize(lyrics, artist)
    @lyrics = lyrics
    @artist = artist
  end

  def sing_me_a_song
    @lyrics.each {|line| puts line}
  end

  def first_line
    puts @lyrics[1]
  end

  def artist
    puts "Song by: #{@artist}"
  end
end

sex_on_fire_begin = ["Lay where you're laying",
  "Don't make a sound", "I know they're watching"]

thunder_road_begin = ["The screen door slams",
     "Mary's dress waves", "Like a vision she dances across the porch",
     "as the radio plays"]
#
# happy_bday = Song.new(["Happy birthday to you",
#   "I don't want to get sued",
#   "So I'll stop right there"])
#
# bulls_on_parade = Song.new(["They rally around tha family",
#     "With pockets full of shells"])

sex_on_fire = Song.new(sex_on_fire_begin, "Kings of Leon")

thunder_road = Song.new(thunder_road_begin, "Bruce Springsteen")

#happy_bday.sing_me_a_song
#bulls_on_parade.sing_me_a_song
#sex_on_fire.sing_me_a_song
#thunder_road.sing_me_a_song

sex_on_fire.first_line
sex_on_fire.artist
thunder_road.first_line
thunder_road.artist
