class Mycounter
  def make_counter(ini)
    c = ini
    inc = Proc.new { c = c+1 }
    dec = Proc.new { c = c-1 }
    val = Proc.new { c }
    [inc, dec, val]
  end
end

@o = Mycounter.new

@procs = @o.make_counter(1001)

p 'inc'
p @procs[0].call # increment
p @procs[2].call # value
p 'inc'
p @procs[0].call # inclrement
p @procs[2].call # value
p 'dec'
p @procs[1].call # decrement
p @procs[2].call # value

p 'procs2 new'
@procs2 = @o.make_counter(-1001)

p 'procs val'
p @procs[2].call # value

p '2-inc'
p @procs2[0].call # increment
p @procs2[2].call # value
p '2-inc'
p @procs2[0].call # inclrement
p @procs2[2].call # value
p '2-dec'
p @procs2[1].call # decrement
p @procs2[2].call # value
