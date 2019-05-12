class BonusDrink
  def self.total_count_for(amount)
    amount += self.bonus_count_for(amount)
  end
  def self.bonus_count_for(amount)
    (amount - 1).abs / 2
  end
end
