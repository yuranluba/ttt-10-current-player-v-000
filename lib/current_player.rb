def turn_count(board)
   board.count do |token|
     token == "X" || token == "O"
   end
  count = 0
  board.each do |token|
    if token == "X" || token == "O"
      count += 1
    end
  end
  count
end

def current_player(board)
  if turn_count(board) % 2 == 0
     "X"
    else
     "O"
  end
end