require 'smallest_k_integers'

RSpec.describe SmallestKIntegers do

  describe 'find' do
    let(:SmallestKIntegers) { Class.new { include SmallestKIntegers } }

    it 'should return an array of the smallest 2 elements ' do
      expect(SmallestKIntegers.find [11,22,33,44,55],2).to eq [11,22]
    end

    it 'should return an array of the smallest 3 elements ' do
      expect(SmallestKIntegers.find [11,22,33,44,55],3).to eq [11,22,33]
    end

    it 'should return an array of the smallest 4 elements ' do
      expect(SmallestKIntegers.find [11,22,33,44,55],4).to eq [11,22,33,44]
    end

    it 'should return an array of the smallest 5 elements ' do
      expect(SmallestKIntegers.find [11,22,33,44,55,66],5).to eq [11,22,33,44,55]
    end
  end
end

RSpec.describe Array do
  describe 'median_of_medians' do
    it 'should return the 2nd smallest nuber' do
      expect([11,22,33,44,55].median_of_medians 2).to eq 22
    end

    it 'should return the 3rd smallest nuber' do
      expect([11,22,33,44,55].median_of_medians 3).to eq 33
    end

    it 'should return the 4th smallest nuber' do
      expect([11,22,33,44,55].median_of_medians 4).to eq 44
    end
  end
end