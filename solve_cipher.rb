def solve_cipher(input)
  
  letters = input.split('')
  num = letters.map{ |n| n.ord - 1 }
  num.map! { |x| if (x == 96); x + 26 else x = x end}
  output = num.map { |x| x.chr}
  puts output.join

  
end

solve_cipher("ifmmp")
