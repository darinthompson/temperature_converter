class Temperature
  attr_accessor :temperature, :scale

  def initialize(temperature = nil, scale = nil)
    @temperature = temperature
    @scale = scale
    get_temperature
  end

  def get_temperature
    if @temperature.nil? && @scale.nil?
      puts "Temperature to be converted..."
      @temperature = gets.chomp.to_i
      puts "To Celcicus or to Farenheit (c/f)"
      @scale = gets.chomp.downcase
    elsif @temperature.nil?
      puts "Temperature to be converted..."
      @temperature = gets.chomp.to_i
    elsif @scale.nil?
      puts "To Celcicus or to Farenheit (c/f)"
      @scale = gets.chomp.downcase
    end
    if @scale.nil? == false
      if @scale == "f"
        to_fahrenheit
      else
        to_celsius
      end
    end
  end

  def to_fahrenheit
    fahrenheit = (@temperature * (9.0/5.0)) + 32
    puts fahrenheit
  end

  def to_celsius
    celsius = (@temperature - 32) * (5.0/9.0)
    puts celsius
  end

end

temp1 = Temperature.new
temp2 = Temperature.new(100, "f")
temp3 = Temperature.new(212, "c")
