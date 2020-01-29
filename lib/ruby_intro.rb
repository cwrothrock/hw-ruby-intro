# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  arr.max(2).inject(:+)
end

def sum_to_n? arr, n
  return false if arr.length <= 1
  #check sum of each pair in array against n and return/increment as needed
  arr.combination(2).to_a.each { |pair| pair.sum == n ? (return true) : next }
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  return true if s =~ /\A[b-df-hj-np-tv-z]/i
  false
end

def binary_multiple_of_4? s
  return false if s !~ /^[01]*$/
  return true if s == "0" || s =~ /^[01]*00$/
  false
end

# Part 3

class BookInStock
  #constructors
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  #isbn getter and setter
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  
  #price getter and setter
  def price
    @price
  end
  def price=(price)
    @price = price
  end
  
  #format string with 2 ending decimal places and lead with dollar sign
  def price_as_string 
    sprintf("$%.2f",price)
  end
end