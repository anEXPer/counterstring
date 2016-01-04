require 'thor'

class Ctrs < Thor
  option :length
  desc '[LENGTH]', 'Generate a counterstring of LENGTH'
  def generate
    counterstring = String.new

    if options[:length]
      length = options[:length].to_i
    else
      length = 256
    end

    unless length > 0
      raise 'Length must be an integer greater than 0'
    end

    length.times do
      counterstring << '*'
    end

    print counterstring
  end
  default_task :generate
end
