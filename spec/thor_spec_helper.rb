# For testing thor output, taken from 
# https://github.com/erikhuda/thor/blob/master/spec/helper.rb
# as described here http://bokstuff.com/blog/testing-thor-command-lines-with-rspec/

def capture(stream)
  begin
    stream = stream.to_s
    eval "$#{stream} = StringIO.new"
    yield
    result = eval("$#{stream}").string
  ensure
    eval("$#{stream} = #{stream.upcase}")
  end

  result
end
