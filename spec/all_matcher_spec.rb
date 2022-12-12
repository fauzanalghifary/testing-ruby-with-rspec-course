RSpec.describe 'all matcher' do
    it 'allows for aggregate checks' do
        expect([5,7,9]).to all( be_odd.and be_an(Integer) )
        expect([4,6,8,10]).to all( be_even.and be_an(Integer) )
        expect([[], [], []]).to all( be_empty.and be_an(Array) )
        expect([0,0,0,0,0]).to all( be_zero.and be_an(Integer) )
        expect([5, 7, 8]).to all( be < 10 )
    end

    describe [5,7,9] do
        it { is_expected.to all( be_odd.and be_an(Integer) ) }
    end
end