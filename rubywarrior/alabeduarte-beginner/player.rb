class Player
  def play_turn(warrior)
    @health ||= warrior.health
    if taking_damage? warrior
      @health = warrior.health
      if warrior.feel.empty?
        warrior.walk!
      else
        warrior.attack!
      end
    elsif warrior.feel.empty?
      warrior.walk!
    else
      warrior.rest!
    end
  end

  def taking_damage?(warrior)
    @health - warrior.health != 0
  end

end
