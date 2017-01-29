def do_block
  x = "do block"
  yield("yield_block")
end

class Myclass
  C = "constant"
  def make_and_do_block
    x = "make block"
    do_block {|y| "Variables C:#{C} x:#{x}, y:#{y}" }
  end
end

puts block = (Myclass.new).make_and_do_block
