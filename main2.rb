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


  def users
    print "Now we need our competitors."                                    # => nil
    print "Please enter name of Player One : "                              # => nil
    @name1 = gets.chomp                                                     # ~> NoMethodError: undefined method `chomp' for nil:NilClass
    print "Please enter name of Player Two : "
    @name2 = gets.chomp
  end

  def player1
    print "#{@name1.capitalize}'s turn! Where would user like to go? : "
    choice1 = gets.chomp.to_i
    @board[choice1 - 1] = "x"
    puts """
    #{@board[0]}| #{@board[1]} | #{@board[2]}
    ---------
    #{@board[3]} | #{@board[4]} | #{@board[5]}
    ---------
    #{@board[6]} | #{@board[7]} | #{@board[8]}
    """
    @count +=1
    wins("x")
    puts "Player 1 wins!"

  end

  def player2
    print "#{@name2.capitalize}'s turn! Where would user like to go? : "
    choice2 = gets.chomp.to_i
    @board[choice2 - 1] = "o"
    puts """
    #{@board[0]}| #{@board[1]} | #{@board[2]}
    ---------
    #{@board[3]} | #{@board[4]} | #{@board[5]}
    ---------
    #{@board[6]} | #{@board[7]} | #{@board[8]}
    """
    @count +=1
    wins("o")
    puts "Player 2 wins!"
  end

 def wins (choices)
   if @winning_combo.any? {|winning_combo| winning_combo.all? {|position| @board[position-1]== choices}}
   puts "We have a winner!"
   play
  end
 end

  def play
    welcome
    users
    while @count < 9
      player1
      player2
      print "Tie Game!"
    end
  end


end

  game = Board.new  # => #<Board:0x007ffa2b186258 @board=[1, 2, 3, 4, 5, 6, 7, 8, 9]>
  game.play


  # >> Welcome to Tic-Tac-ToeUsers must select a number 1 - 9. Numbers align with designated position on the board(see gameboard below).
  # >>     1 | 2 | 3
  # >>     ---------
  # >>     4 | 5 | 6
  # >>     ---------
  # >>     7 | 8 | 9
  # >> Now we need our competitors.Please enter name of Player One :

  # ~> NoMethodError
  # ~> undefined method `chomp' for nil:NilClass
  # ~>
  # ~> /Users/chadoakley/tiy/ttt/main2.rb:33:in `users'
  # ~> /Users/chadoakley/tiy/ttt/main2.rb:11:in `menu'
  # ~> /Users/chadoakley/tiy/ttt/main2.rb:67:in `<main>'
