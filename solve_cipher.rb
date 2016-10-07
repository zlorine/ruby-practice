
def solve_cipher(input, shift)
  
  shift = shift.to_i 
  letters = input.split('')
  num = letters.map{ |n| n.ord + shift }
  num.map! { |x| if (x - shift == 32); x = 32 else x = x end}
  num.map! { |x| if (x <= 96 && x != 32); x + 26 else x = x end}
  output = num.map { |x| x.chr}
  puts output.join

  
end

solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)

