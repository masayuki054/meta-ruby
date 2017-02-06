class Myclass
  def make_counter(ini)
    c = 0
    inc = Proc.new { c = c+1 }
    dec = Proc.new { c = c-1 }
    val = Proc.new { c }
    [inc, dec, clr]
  end
end


@o = Myclass.new

@procs = @o.make_counter

@procs[0].call
@procs[2].call
@procs[0].call
@procs[1].call
@procs[2].call





p { @o.instance_eval do x end }
p { @o.instance_eval do m('y') end }
p { @o.instance_eval do x = 'locallocal' end }
session ruby
