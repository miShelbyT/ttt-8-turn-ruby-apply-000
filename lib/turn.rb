def turn(board)
  puts "Please enter 1-9:"
  gets.strip
  input_to_index(input)
    if !index.between?(0,8) || position_taken?(board, index)
    puts display_board(board)
    puts "Invalid move. Please enter 1-9:"
  end
end


board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "   "
    false
  elsif board[index] == "  " || board[index] == " " ||  board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
  #move(board, 0, "X")
  end
