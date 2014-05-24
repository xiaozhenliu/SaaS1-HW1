class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    strategy = ["R","P","S"]
    ps1 = strategy.index(player1[1])
    ps2 = strategy.index(player2[1])

    raise NoSuchStrategyError.new("Strategy must be one of R,P,S") if (ps1 == nil) or (ps2 == nil)
    return player1 if ps1 == ps2 
    
    case [ps1,ps2]
    when [1,0],[2,1],[0,2] then return player1
    when [0,1],[1,2],[2,0] then return player2
    else "Epic fail"
    end
  end

  def self.tournament_winner(tournament)
    #figure out how many player pairs are there
    r = tournament.flatten.length/2  #each player has 2 element in the array
    n = log2(r)
    #find the winner if there is only one pair
    if n == 1
        return winner(tournament[0],tournament[1])
    #recursive
    else
        return tournament.tornament_winner(tournament[0],tournament[1])
  end

end
