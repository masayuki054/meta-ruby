class MyPrivateCounter
  def make_counter(ini)
    
    p = Proc.new { |c|
      [
        Proc.new { c = c+1 }, 
        Proc.new { c = c-1 },
        Proc.new { c }
      ]
    }
    p.call(ini)
  end
end

@o = MyPrivateCounter.new

@procs = @o.make_counter(1001)

p @procs[0].call # increment
p @procs[2].call # value
p @procs[0].call # inclrement
p @procs[1].call # decrement
p @procs[2].call # value

@procs2 = @o.make_counter(-1001)

p @procs[0].call # increment
p @procs[2].call # value
p @procs[0].call # inclrement
p @procs[1].call # decrement
p @procs[2].call # value
