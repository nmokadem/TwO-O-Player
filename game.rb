class Game

  def initialize(parameters,question, p1, p2)
    @parameters = parameters
    @question = question
    @p1 = p1
    @p2 = p2
  end

  def start
    parameters = @parameters
    question = @question
    p1 = @p1
    p2 = @p2

    max_points = parameters.max_points
    game_over = false
    player = p1
  
    while (!game_over)
  
      question.generate_question()
  
      this_question = question.question
      correct_answer = question.correct_answer
      
      puts "#{player.name} : #{this_question}"
      user_answer = gets.chomp.to_i
  
      if user_answer != correct_answer
        puts "#{player.name}: Seriously? No!"
        player.points -= 1
      else
        puts "#{player.name}: YES! you are correct."
      end
  
      puts "#{p1.name}: #{p1.points}/#{max_points} vs #{p2.name}: #{p2.points}/#{max_points}"
  
      if p1.points == 0 || p2.points == 0
        if p1.points == 0
          puts "#{p2.name} wins with a score of #{p2.points}/#{max_points}"
        else
          puts "#{p1.name} wins with a score of #{p1.points}/#{max_points}"
        end
      
        puts "----- GAME OVER -----"
        puts "Good Bye!"
  
        game_over = true
      else
        if player == p1
          player = p2
        else
          player = p1
        end
      end
    end  
  end
end
