require 'science'

describe Science do
  describe '.add' do
    it('do well given two numeric arguments') do
      expect(Science.add(1, 2)).to eql(3)
    end
  end

  describe '.double' do
    it('do well given a number') do
      expect(Science.double(2)).to eql(4)
    end
  end

  describe '.odd' do
    it('do well with integers') do
      expect(Science.odd(5)).to eql(true)
    end
  end

  describe '.double_a' do
    it('do well given array of numbers') do
      expect(Science.double_a([1, 2, 3])).to eql([2, 4, 6])
    end
  end

  describe '.sum' do
    it('do well with array of number') do
      expect(Science.sum([1, 2, 3])).to eql(6)
    end
  end

  describe '.sum_of_double' do
    it('returns the summation of array of numbers after doubling each') do
      expect(Science.sum_of_double([1, 2, 3])).to eql(12)
    end
  end
end
