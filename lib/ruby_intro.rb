# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  for i in 0..arr.length()-1 do
    sum+=arr[i]
  end
  return sum  
end

def max_2_sum arr
  # YOUR CODE HERE
  sum=0
  if arr.length == 0
    sum= 0
  elsif arr.length == 1
    sum= arr[0]
  else
    arr = arr.sort
    sum = arr[arr.length-1]+arr[arr.length-2]
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0..arr.length()-2 do
    for j in i+1..arr.length()-1 do
      if n-arr[i]==arr[j]
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == ''
    return false
  end
  vowels = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
  if vowels.include? s[0]
    return true
  end
  return false
    
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.count('01') != s.size
    return false
  end
  if s[s.size-1]=='0' && s[s.size-2]=='0'
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn=='' || price<=0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    @isbn=isbn
  end
  def price=(price)
    @price=price
  end
  
  def price_as_string
    return "$"+sprintf("%.2f",@price)
  end
end