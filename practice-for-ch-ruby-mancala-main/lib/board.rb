class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each

    cups_arr = []

    (0..13).each do |cup|
      if cup.between?(0, 5) || cup.between?(7, 12)
        cups_arr << [:stone, :stone, :stone, :stone]
      else
        cups_arr << []
      end

      
    end

    cups_arr
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos < 1 || start_pos > 12 || start_pos == 6
    # raise 'Invalid starting cup' if !start_pos.between?(7, 12)
    p @cups
    raise 'Starting cup is empty' if @cups[start_pos].length == 0
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..5].all?{|cup| cup.length == 0} || cups[7..12].all?{|cup| cup.length == 1}
  end

  def winner
    return draw if cups[6].count == cups[13].count 
    if cups[13].count > cups[6].count
      return 1
    else
      return 2
    end
  end
end