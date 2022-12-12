RSpec.describe 'spies' do
    let(:animal) { spy('animal') }
    it 'confirms that a message has been received' do
        animal.eat_food
        expect(animal).to have_received(:eat_food)
        animal.eat_food
        expect(animal).to have_received(:eat_food).twice
        animal.eat_food("sushi")
        expect(animal).to have_received(:eat_food).with("sushi")
        expect(animal).not_to have_received(:eat_human)
    end

    it 'resets between example' do
        expect(animal).not_to have_received(:eat_food)
    end
end