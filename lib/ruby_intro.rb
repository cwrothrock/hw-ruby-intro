# When done, submit this entire file to the autograder.

# Part 1

#self-note: arrays have predefined summation function callable by using arr.sum
def sum arr
  sum, count = 0, arr.count
  while count > 0 
    sum = sum + arr[count-1]
    count = count - 1
  end
  return sum
end

def max_2_sum arr
  #if array has 0 or 1 elements, return 0 or that element, respectively
  arr.count == 0 ? (return 0) : (arr.count == 1 ? (return arr[0]) : nil) 
  #otherwise, find the sum of the max two elements
  a,b,index = arr[0], arr[1], 2
  while index < arr.count
    #if new value is > a, swap it with a; OR if new value > b, swap it with b; OR, do nothing
    arr[index] > a ? a = arr[index] : (arr[index] > b ? b = arr[index] : nil)
    index += 1
  end
  return a + b
end

def sum_to_n? arr, n
  #if array has 0 elements return false, 1 element return the boolean comparison of the single element and n
  arr.count <= 1 ? (return false) : nil
  #otherwise, make every possible pair and check for summation to n
  arr.combination(2).to_a.each { |pair| pair.sum == n ? (return true) : next }
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  #verify string starts with consonant (ignore case)
  (s =~ /\A[b-df-hj-np-tv-z]/i) != nil ? (return true) : (return false)
end

def binary_multiple_of_4? s
  #string must contain only 0s and 1s
  if s !~ /^[01]*$/
    return false
  #string is 0 or ends in two 0s
  elsif s == "0" || s.match(/^[01]*00$/)
    return true 
  #otherwise, false 
  else
    return false
  end
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
