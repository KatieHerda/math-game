require "./match"

player1 = Player.new("Crazy Ape")
player2 = Player.new("Dare Devil")
newGame = Match.new(player1, player2)
newGame.start_game()