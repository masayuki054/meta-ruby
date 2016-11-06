class MegaGreeter
  attr_accessor :names

  #create the object
  def initialize(names="world")
    @name = names
  end

  #say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end

    #say bye to everybody
    def say_hi
      if @names.nil?
        puts "..."
      elsif @names.respond_to?("join")
      # Join the list elements with commas
        puts "Goodby #{@names.join(", ")}. come back soon!"
      else
        puts "Goodby #{@names}. come back soon!"
      end
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeTer.new
  mg.say_hi
  mg.say_bye

  mg.names = "zeke"
  mg.say_hi
  mg.say_bye

  mg.names = ["Albert", "Brenda", "Charles"]
  mg.say_hi
  mg.say_bye
end
