# fibonacci.rb by Gregory Eglen
# Began coding this 09/30/2019 20:29 GMT -06

# fibonacci number sequence
# fib(0) = 0
# fib(1) = 1
# fib(n) = fib(n-1) + fib(n-2)
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

@previous_number = 0
@next_number = 1


def recursive_fib(num)
  sum = @previous_number + @next_number
  @previous_number = @next_number
  @next_number = sum
  num -= 1
  if num == 2
    puts sum
  else 
    recursive_fib(num)
  end
end

def iterative_fib(num)
  num -= 2
  previous_number = 0
  next_number = 1
  sum = previous_number + next_number
  num.times do
    sum = previous_number + next_number
    previous_number = next_number
    next_number = sum
  end
 puts sum   
end

recursive_fib(35)
iterative_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib") { iterative_fib(num) }
end