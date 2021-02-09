# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |element| sum += element }
  return sum
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  
  max1 = -(2**(0.size*8 - 2))
  max2 = -(2**(0.size*8 - 2))
  
  arr.each do |element|
    max2 = element if element > max2
    if max2 >= max1
      max1, max2 = max2, max1
    end
  end
  
  return max1+max2
end

def sum_to_n? arr, n
  two_sum = []
  arr.each do |element|
    return true if two_sum.include?(element)
    two_sum.push(n-element)
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return true if (s =~ /^[a-zA-Z]/ && !(s =~ /^[aeiou]/i))
  return false
end

def binary_multiple_of_4? s
  return true if s.match(/^[10]*00$/)
  return true if s.match(/^[0]*0$/)
  return false
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
    @price = price
    @isbn = isbn
  end
  
  def price_as_string
    return "$#{'%.2f' % price}"
  end
end
