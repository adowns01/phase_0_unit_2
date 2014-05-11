# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode

# because I fixed the errors first and already had the empty methods written, I pseduo
# coded each method above the method itself


# Initial Solution
class Song

	# assign title and artist to instance variables
	def initialize(title, artist)
		@title = title 
		@artist = artist
	end

	# I'm not exactly sure what this is supposed to do
	# I'm just gunna make it print some onamonapias
	def play
		puts "#{@artist} says: la la la"
	end
end

class Playlist

	# create an array to hold the songs in 
	# puts all songs in array 
	def initialize(*songs)
		@playlist = songs
	end

	# add the song(s) to the array
	def add (*songs)
		@playlist += songs
	end

	# return the length of the array
	def num_of_tracks
		@playlist.length()
	end

	# delete a song from the list
	def remove(song)
		@playlist.delete(song)
	end

	# returns true or false depending if song is in the playlist
	def includes?(song)
		@playlist.include?(song)
	end

	# play every song in playlist
	def play_all
		#@playlist.each{|x| x.play }
	end

	# prints playlist
	def display
		@playlist.each{|x| puts x.instance_variable_get(:@title) }
	end

end

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

# create 3 songs
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")

# create playlist and add 3 songs
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

# check length of playlist
assert {my_playlist.num_of_tracks == 3}
 
# create 2 more songs and add to playlist
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
my_playlist.add(lying_from_you, angels)

# check length of playlist
assert {my_playlist.num_of_tracks == 5}


# remove song and check length
my_playlist.remove(angels)
assert {my_playlist.num_of_tracks == 4}
#assert {my_playlist.include?(angels) == false}

# see if this song is included
assert{ my_playlist.includes?(lying_from_you) == true}

# my_playlist.play_all
# my_playlist.display





# Reflection 