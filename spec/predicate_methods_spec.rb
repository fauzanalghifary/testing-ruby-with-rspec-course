puts 0.zero? # => true
puts 1.zero? # => false

puts 2.even? # => true
puts 3.even? # => false

puts 2.odd? # => false
puts 3.odd? # => true

puts 0.nil? # => false
puts nil.nil? # => true

puts [].empty? # => true
puts [1].empty? # => false

RSpec.describe 'predicate methods and predicate matchers' do
    it 'can be tested with Ruby methods' do
        result = 16 / 2
        expect(result.even?).to eq(true)
    end
    
    it 'can be tested with predicate matchers' do
        result = 15 / 3
        expect(result).to be_odd
        expect(result).to be >= 5
    end
    
    describe 0 do
        it { is_expected.to be_zero }
    end
end