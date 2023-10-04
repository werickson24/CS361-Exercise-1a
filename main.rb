class Player
	attr_accessor :name, :score
	def initialize(name, score)
		@name = name
		@score = score
	end
end

def createPlayers
	print "create players called\n"
	player_array = []
	rand = Random.new
	for i in 0...50
		player_array[i] = Player.new("Player #{i + 1}", rand(10..300))
	end
	return player_array
end		

def outputPlayers(player_array)
	print "output players called\n"
	player_array.each do |player|
		print "Ready #{player.name}! Score: #{player.score}\n"
	end
end

def init
	print "Init called\n"

	print "create random players\n"
	randomPlayers = createPlayers
	print "output random players\n"
	outputPlayers(randomPlayers)
end

init
