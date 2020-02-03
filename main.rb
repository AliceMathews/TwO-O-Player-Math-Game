require './classes/Player'
require './classes/Question'
require './classes/Game'

player1 = Player.new(1)
player2 = Player.new(2)
# player1.lose_life
# puts player1.lives
# puts player1.name

question = Question.new
# puts question.question_text
# puts question.answer

game = Game.new(player1, player2)

while (!game.game_over)
  game.round
  game.switch_player

  if game.game_over
    puts game.final_standings
  else
    puts puts game.current_standings
    puts "----- NEW TURN -----"
  end
  
end

puts "----- GAME OVER -----"
puts "Good bye!"


# puts game.current_player.inspect
# print ""
# game.round
# game.switch_player
# puts game.current_player.inspect

