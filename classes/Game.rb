class Game 
  attr_accessor :current_player, :game_over

  def initialize(p1, p2) 
    @p1 = p1
    @p2 = p2
    @current_player = @p1
    @game_over = false
    @winner = nil
  end

  def round 
    player = @current_player
    question = Question.new

    puts "Player #{player.name}: #{question.question_text}"
    player_answer = gets.chomp.to_i
  

    if player_answer == question.answer
      puts "Player #{player.name}: Yes! You're correct"
    else 
      puts "Player #{player.name}: Seriously? No! You lose a life!"
      player.lose_life

      if player.lives == 0
        @game_over = true
        @current_player == @p1 ? @winner = @p2 : @winner = @p1
      end
    end
  end

  def switch_player
    @current_player == @p1 ? @current_player = @p2 : @current_player = @p1
  end

  def current_standings
    "P1: #{@p1.lives}/3 VS P2: #{@p2.lives}/3"
  end

  def final_standings
    "Player #{@winner.name} wins with a score of #{@winner.lives}/3!"
  end
  
end 