# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #sum = 0
  #arr.each { |n| sum += n }
  #sum
  arr.reduce(0, :+)
end

def max_2_sum arr
  #sum = 0
  #arr.sort.reverse.first(2).each { |n| sum += n }
  #sum
  arr.sort.reverse.first(2).reduce(0, :+)
end

def sum_to_n? arr, n
  arr.combination(2).to_a.keep_if { |a| a[0]+a[1] == n }.length > 0
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s.upcase =~ /^[^AEIOU\W]/
end

def binary_multiple_of_4? s
  s =~ /^([01]*0|)0$/
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "#{'$%.2f' % @price}"
  end
end
