require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  context '3本の瓶で1本貰える場合' do
    let(:bonus_drink) { BonusDrink.new(3, 1) }
    specify { expect(bonus_drink.total_count_for(0)).to eq 0 }
    specify { expect(bonus_drink.total_count_for(1)).to eq 1 }
    specify { expect(bonus_drink.total_count_for(2)).to eq 2 }
    specify { expect(bonus_drink.total_count_for(3)).to eq 4 }
    specify { expect(bonus_drink.total_count_for(4)).to eq 5 }
    specify { expect(bonus_drink.total_count_for(5)).to eq 7 }
    specify { expect(bonus_drink.total_count_for(6)).to eq 8 }
    specify { expect(bonus_drink.total_count_for(7)).to eq 10 }
    specify { expect(bonus_drink.total_count_for(8)).to eq 11 }
    specify { expect(bonus_drink.total_count_for(9)).to eq 13 }
    specify { expect(bonus_drink.total_count_for(10)).to eq 14 }
    specify { expect(bonus_drink.total_count_for(11)).to eq 16 }
    specify { expect(bonus_drink.total_count_for(12)).to eq 17 }
    specify { expect(bonus_drink.total_count_for(13)).to eq 19 }
    specify { expect(bonus_drink.total_count_for(14)).to eq 20 }
    specify { expect(bonus_drink.total_count_for(15)).to eq 22 }
    specify { expect(bonus_drink.total_count_for(100)).to eq 149 }
  end
  context '5本の瓶で1本貰える場合' do
    let(:bonus_drink) { BonusDrink.new(5, 1) }
    specify { expect(bonus_drink.total_count_for(0)).to eq 0 }
    specify { expect(bonus_drink.total_count_for(1)).to eq 1 }
    specify { expect(bonus_drink.total_count_for(2)).to eq 2 }
    specify { expect(bonus_drink.total_count_for(3)).to eq 3 }
    specify { expect(bonus_drink.total_count_for(4)).to eq 4 }
    specify { expect(bonus_drink.total_count_for(5)).to eq 6 }
    specify { expect(bonus_drink.total_count_for(6)).to eq 7 }
    specify { expect(bonus_drink.total_count_for(7)).to eq 8 }
    specify { expect(bonus_drink.total_count_for(8)).to eq 9 }
    specify { expect(bonus_drink.total_count_for(9)).to eq 11 }
    specify { expect(bonus_drink.total_count_for(10)).to eq 12 }
    specify { expect(bonus_drink.total_count_for(11)).to eq 13 }
    specify { expect(bonus_drink.total_count_for(12)).to eq 14 }
    specify { expect(bonus_drink.total_count_for(13)).to eq 16 }
    specify { expect(bonus_drink.total_count_for(14)).to eq 17 }
    specify { expect(bonus_drink.total_count_for(15)).to eq 18 }
    specify { expect(bonus_drink.total_count_for(100)).to eq 124 }
  end
  context '5本の瓶で2本貰える場合' do
    let(:bonus_drink) { BonusDrink.new(5, 2) }
    specify { expect(bonus_drink.total_count_for(0)).to eq 0 }
    specify { expect(bonus_drink.total_count_for(1)).to eq 1 }
    specify { expect(bonus_drink.total_count_for(2)).to eq 2 }
    specify { expect(bonus_drink.total_count_for(3)).to eq 3 }
    specify { expect(bonus_drink.total_count_for(4)).to eq 4 }
    specify { expect(bonus_drink.total_count_for(5)).to eq 7 }
    specify { expect(bonus_drink.total_count_for(6)).to eq 8 }
    specify { expect(bonus_drink.total_count_for(7)).to eq 9 }
    specify { expect(bonus_drink.total_count_for(8)).to eq 10 }
    specify { expect(bonus_drink.total_count_for(9)).to eq 13 }
    specify { expect(bonus_drink.total_count_for(10)).to eq 14 }
    specify { expect(bonus_drink.total_count_for(11)).to eq 15 }
    specify { expect(bonus_drink.total_count_for(12)).to eq 16 }
    specify { expect(bonus_drink.total_count_for(13)).to eq 19 }
    specify { expect(bonus_drink.total_count_for(14)).to eq 20 }
    specify { expect(bonus_drink.total_count_for(15)).to eq 21 }
    specify { expect(bonus_drink.total_count_for(100)).to eq 148 }
  end
end