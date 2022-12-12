RSpec.describe '#even? method' do
    context 'with even number' do
        it 'should return true' do
        expect(4.even?).to eq(true)
        end
    end
    
    context 'with odd number' do
        it 'should return false' do
        expect(5.even?).to eq(false)
        end
    end

    # it 'should return true if number is even' do
    #     expect(4.even?).to eq(true)
    # end

    # it 'should return false if number is odd' do
    #     expect(5.even?).to eq(false)
    # end
end
