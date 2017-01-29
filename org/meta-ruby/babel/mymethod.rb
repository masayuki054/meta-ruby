class Myclass
  def mymethod(a, b)
    if block_given?
      yield(a, b)
    else
      a + b
    end
  end
end
z=100
p @obj = Myclass.new
p @obj.mymethod(1,2) { |x,y| x+y+z  }
p @obj.mymethod(1,2) do |x,y| x+y+z; end
p @prc = Proc.new { |x,y| x+y+z }
p @prc.binding
p (@prc.binding).eval("z")
