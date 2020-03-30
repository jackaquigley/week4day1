class Game

 def self.check_winner(player1, player2)
   if player1 == player2
     return "draw"
   elsif player1 == "rock" and player2 == "scissors"
     return "rock"
   elsif player1 == "rock" and player2 == "paper"
     return "paper"
   elsif player1 == "scissors" and player2 == "rock"
     return "rock"
   elsif player1 == "scissors" and player2 == "paper"
     return "scissors"
   elsif player1 == "paper" and player2 == "rock"
     return "paper"
   elsif player1 == "paper" and player2 == "scissors"
     return "scissors"
    end
  end

end
