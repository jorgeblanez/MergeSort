#Fibonnaci with loop
def fib_loop(n)
  fib = []
  (0..n).each do |i|
    fib.length <= 1 ? fib.push(i) : fib[i] = fib[i-1] + fib[i-2]
  end
  fib
end

#Fibonnaci with Recursion
def fib_rec(n)
   if n == 0
    [0]
   elsif n == 1
    [0,1]
   else
    array = fib_rec(n-1)
    array << array[-2] + array[-1]
  end
end

p fib_loop(8)
p fib_rec(8)