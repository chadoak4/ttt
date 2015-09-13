class Board


  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
    @count = 0  # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @winning_combo = [[1,2,3], [4,5,6], [7,8,9],[1,4,7],[2,5,8],[3,6,9],[3,5,7],[1,5,9]]
  end


  def welcome
    print "Welcome to Tic-Tac-Toe"                                                                                       # => nil
    print "Users must select a number 1 - 9. Numbers align with designated position on the board(see gameboard below)."  # => nil
    puts """
    1 | 2 | 3
    ---------
    4 | 5 | 6
    ---------
    7 | 8 | 9 """
  end                                                                                             # => nil

  def board_image
    puts """
    #{@board[0]}| #{@board[1]} | #{@board[2]}
    ---------
    #{@board[3]} | #{@board[4]} | #{@board[5]}
    ---------
    #{@board[6]} | #{@board[7]} | #{@board[8]}
    """
  end

  def users
    print "Now we need our competitors."                                    # => nil
    print "Please enter name of Player One : "                              # => nil
    @name1 = gets.chomp                                                     # ~> NoMethodError: undefined method `chomp' for nil:NilClass
    print "Please enter name of Player Two : "
    @name2 = gets.chomp
  end

  def valid_move?(position)
    @board[position-1] != 'o' && @board[position-1] != "x"
  end

  def player1
    print "#{@name1.capitalize}'s turn! Where would user like to go? : "
    choice1 = gets.chomp.to_i
    until valid_move?(choice1)
      puts "Invalid positioning, please pick another"
      choice1 = gets.chomp.to_i
    end
    @board[choice1 - 1] = "x"
    board_image
    @count +=1
  end


  def player2
    print "#{@name2.capitalize}'s turn! Where would user like to go? : "
    choice2 = gets.chomp.to_i
    until valid_move?(choice2)
      puts "Invalid positioning, please pick another"
      choice2 = gets.chomp.to_i
    end
    @board[choice2 - 1] = "o"
    board_image
    @count +=1
  end


  def wins (choices)
    if @winning_combo.any? {|winning_combo| winning_combo.all? {|position| @board[position-1]== choices}}
      puts "We have a winner! Come back again!"
      exit
    end
  end

  def play
    welcome
    users
    while @count < 9
      player1
         if wins("x")
         end
      player2
        if wins("o")
        end
    end

  print "Tie Game!"
  end

end

game = Board.new  # => #<Board:0x007ffa2b186258 @board=[1, 2, 3, 4, 5, 6, 7, 8, 9]>
game.play
