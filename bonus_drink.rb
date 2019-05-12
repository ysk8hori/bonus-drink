class BonusDrink
  def initialize(ratio, bonus)
    @ratio = ratio
    @bonus = bonus
  end
  def total_count_for(amount)
    amount += bonus_count_for(amount)
  end
  private
  def bonus_count_for(amount)
    (amount - 1).abs / (@ratio - 1) * @bonus
  end
end
