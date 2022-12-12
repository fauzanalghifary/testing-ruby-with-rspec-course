RSpec.describe Hash do
    subject(:bob) do
        {a: 1, b: 2}
    end

    # let(:bob) { {a: 1, b: 2} } # This is the same as the subject above

    it 'has two key-value pairs' do
        expect(subject.length).to eq(2)
        subject[:c] = 3
        expect(bob.length).to eq(3)
    end

    describe 'nexted example' do
        it 'has two key-value pairs' do
            expect(subject.length).to eq(2)
        end
    end
end