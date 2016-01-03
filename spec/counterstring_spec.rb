require 'spec_helper'
require 'thor_spec_helper'

require 'counterstring'

describe Ctrs do
  let(:output) { capture(:stdout) { subject.command 'foo' } }

  counterstring = Ctrs.new

  describe '#generate' do

    context 'when no arguments are provided' do
  
      it 'returns a default counterstring 256 characters long' do
        expect(counterstring.generate.length).to eq(256)
      end
    end

    context 'when a length argument is provided' do

      context 'when the length argument is valid' do

        it 'returns a counterstring of that length' do
          100.times do
            test_length = rand(1024)
            expect(counterstring.generate(length: test_length).length).to eq(test_length)
          end
        end
      end

      context 'when the length argument is not valid' do
        it 'raises an error' do
          test_length = 'one MILLION DOLLARS'
          expect {counterstring.generate(length: test_length)}.to raise_error('Length not an integer!')
        end
      end
    end
  end
end
