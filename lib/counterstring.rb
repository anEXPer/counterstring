require 'thor'

class Ctrs < Thor
  desc '[LENGTH]', 'Generate a counterstring of LENGTH'
  def generate(length: 256)

    counterstring = String.new

    if length.is_a? Integer
      length.times do |x|
        counterstring << '*'
      end
    else
      raise 'Length not an integer!'
    end

    print counterstring
  end
  default_task :generate
end
