
class Myclass_1

  @@myclass_1 = 'myclass_1'

  def m_1; 'm_1'; end

  def self.m_1; 'self.m_1'; end
end

class Myclass_2 < Myclass_1
  
  @@myclass_2 = 'myclass_2'

  def m_2; 'm_2'; end

  def self.m_2; 'self.m_2'; end
end


p o1 = Myclass_1.new
p o2 = Myclass_2.new

# class 階層
p o1.class
p o1.class.ancestors
p o2.class
p o2.class.ancestors

p o1.class.singleton_class
p o1.class.singleton_class.superclass
p o2.class.singleton_class
p o2.class.singleton_class.superclass
p o2.class.singleton_class.superclass.superclass

def o1.m1; end;

p o1.class.singleton_class
p o1.class.singleton_class.ancestors
p o2.class.singleton_class
p o2.class.singleton_class.ancestors

def class_hi(c)
  if c == BasicObject
     [BasicObject]
  else
    [c] + class_hi(c.superclass)
  end
end

p class_hi(o2.class)
p class_hi(o2.class.singleton_class)
