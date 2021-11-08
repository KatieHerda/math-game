require "./players"

class Match
  attr_accessor :winner, :turn, :player1, :player2, :current_player, :answer, :choice

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @winner = false
    @turn = @player1.handle
    @current_player = @player1.handle
    @answer = 0
    @choice = 0
  end

  def start_game
    puts "------ Let the game begin! ------" 
    puts "Both players start with 3 lives.\nIf you lose all your lives, you dead!\n "
    puts "#{@player1.handle} vs. #{@player2.handle}"
      while @player1.score > 0 && @player2.score > 0
        puts "#{@current_player}'s turn"
          ask_question()
          correct()
          puts "\n"
          switch_player()
          puts "#{@player1.handle}: (#{@player1.score}/3) vs. #{@player2.handle}: (#{@player2.score}/3)"
          puts " \n---- NEW TURN ----"
      end
      game_over()
  end

#-----Methods-----#
  def ask_question
    a = rand(1..20)
    b = rand(1..20)
    @answer = (a + b).to_s
    puts "What is #{a} + #{b}?"
    @choice = $stdin.gets.chomp.to_s
  end
    
  def correct
    if @choice == @answer
      puts "You are right! #{@answer} is the correct answer."
      puts "WOOHOO, you're still alive!" 
    else
      @current_player == @player1.handle ? @player1.score -= 1 : @player2.score -= 1
      puts "BOO, wrong answer!"
    end
  end

  def switch_player
    if @current_player == @player1.handle
      @current_player = @player2.handle
    else
      @current_player = @player1.handle
    end
  end


  def game_over
    puts "#{@current_player} wins!"
    switch_player()
    puts "#{@current_player}, you dead!"
  end
end

