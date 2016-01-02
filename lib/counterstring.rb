class Generator
  def generate(length: 256)

    counterstring = String.new

    if length.is_a? Integer
      length.times do |x|
        counterstring << "*"
      end
    else
      raise 'Length not an integer!'
    end

    counterstring
  end
end
