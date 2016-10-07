
def solve_cipher(input)
  
  letters = input.split('')
  num = letters.map{ |n| n.ord - 1 }
  output = num.map { |x| x.chr }
  puts output.join

  
end

solve_cipher("ifmmp")
