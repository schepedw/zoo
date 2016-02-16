describe Visitor do
  # TODO 4: read through these tests, then make them pass
  subject {described_class.new}
  describe '#favorite_animal' do
    context 'visitor not admitted' do
      it 'does not know about favorite animal' do
        expect(subject).to_not respond_to(:favorite_animal)
        expect(subject).to_not respond_to(:favorite_animal=)
      end
    end

    context 'visitor admitted' do
      let(:favorite_animal) { 'Llama' }

      before do
        subject.admit!
        subject.favorite_animal = favorite_animal
      end

      it 'does know about favorite animal' do
        expect(subject).to respond_to(:favorite_animal)
        expect(subject).to respond_to(:favorite_animal=)
      end

      it 'knows its favorite animal' do
        expect(subject.favorite_animal).to eql favorite_animal
      end
    end
  end
end
