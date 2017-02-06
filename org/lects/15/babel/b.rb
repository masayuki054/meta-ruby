Myclass = Class.new do
  x = 'local'
  C = 'Myclass'
  def m(y)

    C+y
  end
end

@o = Myclass.new

p { @o.instance_eval do x end }
p { @o.instance_eval do m('y') end }
p { @o.instance_eval do x = 'locallocal' end }
session ruby
