class BonusDrink
  def self.total_count_for(amount)
    amount += self.bonus_count_for(amount)
  end
  def self.bonus_count_for(amount)
    # 与えられた本数から求められるボーナスの本数
    bonus_count = amount / 3
    # ボーナスに変えられなかった余りの本数
    remainder = amount % 3
    if 3 <= bonus_count + remainder
      # ボーナスの本数＋余りの本数が3以上の場合は合算してさらにボーナスをもらう（再帰的呼び出し）
      bonus_count += self.bonus_count_for(bonus_count + remainder)
    end
    bonus_count
  end
end