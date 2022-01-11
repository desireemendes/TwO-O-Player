class Questions

  attr_accessor :num1, :num2, :solution
  def initialize
    @num1 = rand(1..30)
    @num2 = rand(1..30)
    @solution = @num1 + @num2
  end

end

