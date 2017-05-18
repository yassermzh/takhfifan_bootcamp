class Science
  def self.add(x, y)
    x + y
  end

  def self.double(x)
    x * 2
  end

  def self.odd(x)
    x % 2 == 1
  end

  def self.double_a(x)
    x.map { |y| y * 2 }
  end

  def self.sum(x)
    x.reduce(0) { |a, y| a + y }
  end

  def self.sum_of_double(x)
    x.reduce(0) { |a, y| y * 2 + a }
  end
end
