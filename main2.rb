class Board

  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
  end
  # def initialize
  #   @winningcombo = [[0],[1],[2]]
  # end
  def menu
    welcome
    users
    game
  end


  def welcome
    print "Welcome to Tic-Tac-Toe"
    print "Users must select a number 1 - 9. Numbers align with designated position on the board(see gameboard below)."
    puts """
    1 | 2 | 3
    ---------
    4 | 5 | 6
    ---------
    7 | 8 | 9 """
  end

  def users
    print "Now we need our competitors."
    print "Please enter name of Player One : "
    @name1 = gets.chomp
    print "Please enter name of Player Two : "
    @name2 = gets.chomp
  end
  def game
    loop do
      print "#{@name1.capitalize}'s turn! Where would user like to go? : "
      choice1 = gets.chomp.to_i
      @board[choice1 - 1] = "x"
      puts """
      #{@board[0]}| #{@board[1]} | #{@board[2]}
      ---------
      #{@board[3]} | #{@board[4]} | #{@board[5]}
      ---------
      #{@board[6]} | #{@board[7]} | #{@board[8]}
      # """

      print "#{@name2.capitalize}'s turn! Where would user like to go? : "
      choice2 = gets.chomp.to_i #unless @board.includes? ("x"|| "o")
      @board[choice2 - 1] = "o"
      puts """
      #{@board[0]}| #{@board[1]} | #{@board[2]}
      ---------
      #{@board[3]} | #{@board[4]} | #{@board[5]}
      ---------
      #{@board[6]} | #{@board[7]} | {#{@board[8]}
      """
    #     until choice1 == @winningcombo
    #  end
  end
end
end

game = Board.new
game.menu
