describe VisitorPresenter do
  let(:visitor) { FactoryGirl.build :visitor }
  subject { described_class.new(visitor) }
  it "has correct attributes for visitor" do
    attributes_for(:visitor).each do |attr, val|
      expect(subject.send(attr)).to eql val
    end
  end
end
