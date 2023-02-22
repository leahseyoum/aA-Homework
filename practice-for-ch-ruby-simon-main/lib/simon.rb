class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end

    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if !self.game_over
      self.round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
    end
  end

  def require_sequence
    puts "Enter the colors shown in the sequence"
    @seq.each do |color|
      res = gets.chomp
    end
    
    answers = %w(res)
    self.game_over = true if answers != self.seq
    self.game_over = false
  end

  def add_random_color
    seq << COLORS.shuffle[0]
  end

  def round_success_message
    puts "round successufull, next seq:"
  end

  def game_over_message
    puts "Game Over"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end