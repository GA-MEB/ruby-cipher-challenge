require_relative '../lib/challenge.rb'

RSpec.describe 'Challenge: ' do
  describe '#encode' do
    context 'level 1' do
      it 'encodes text using ROT-13' do
        expect(encode('a')).to eq('n')
        expect(encode('abc')).to eq('nop')
        expect(encode('cat')).to eq('png')
        expect(encode('dog')).to eq('qbt')
      end
    end
    context 'level 2' do
      it 'properly encodes text with spaces' do
        expect(encode('hello world')).to eq('uryyb jbeyq')
        expect(encode('the quick brown fox jumped over the lazy dog')).to eq('gur dhvpx oebja sbk whzcrq bire gur ynml qbt')
      end
      it 'can encode at an arbitrary rotation (ROT-N)' do
        expect(encode('abc def', 13)).to eq('nop qrs')
        expect(encode('abc def', 3)).to eq('def ghi')
        expect(encode('abc def', 1)).to eq('bcd efg')
      end
    end
  end
  describe '#decode' do
    context 'level 1' do
      it 'decodes text encoded using ROT-13' do
        expect(encode('n')).to eq('a')
        expect(encode('nop')).to eq('abc')
        expect(encode('png')).to eq('cat')
        expect(encode('qbt')).to eq('dog')
      end
    end
    context 'level 2' do
      it 'properly decodes text with spaces' do
        expect(decode('uryyb jbeyq')).to eq('hello world')
        expect(decode('gur dhvpx oebja sbk whzcrq bire gur ynml qbt')).to eq('the quick brown fox jumped over the lazy dog')
      end
      it 'can decode at an arbitrary rotation (ROT-N)' do
        expect(decode('nop qrs', 13)).to eq('abc def')
        expect(decode('def ghi', 3)).to eq('abc def')
        expect(decode('bcd efg', 1)).to eq('abc def')
      end
    end
  end
end
