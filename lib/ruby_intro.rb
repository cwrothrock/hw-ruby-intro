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
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
