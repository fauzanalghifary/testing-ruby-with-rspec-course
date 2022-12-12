RSpec.describe 'contain_exactly matcher' do
    subject { [1, 2, 3] }
    describe 'long form syntax' do
        it 'should check for the presence of all elements' do
        expect(subject).to contain_exactly(1, 2, 3)
        expect(subject).to contain_exactly(3, 2, 1)
        expect(subject).to contain_exactly(2, 1, 3)
        end
    end

    it { is_expected.to contain_exactly(1, 2, 3) }
    it { is_expected.to contain_exactly(3, 2, 1) }
    it { is_expected.to contain_exactly(2, 1, 3) }

    describe [1, 2, 3], :collection do
        it { is_expected.to contain_exactly(1, 2, 3) }
        it { is_expected.to contain_exactly(3, 2, 1) }
        it { is_expected.to contain_exactly(2, 1, 3) }
    end

    describe 'with Ruby objects' do
        it 'can check for class/type' do
        class SausageLink
            def ==(other)
            other.is_a?(SausageLink)
            end
        end

        expect([SausageLink.new, SausageLink.new]).to contain_exactly(be_a(SausageLink), be_a(SausageLink))
        end
    end

end