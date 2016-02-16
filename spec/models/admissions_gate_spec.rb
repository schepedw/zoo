describe AdmissionsGate do
  context 'modifying admission prices' do
    subject(:prices) { AdmissionsGate::PRICES }
    it 'disallows changing existing price' do
      expect{prices[:child_price] = 0}.to raise_error(RuntimeError)
    end

    it 'disallows adding price' do
      expect{prices[:pet_price] = 100.00}.to raise_error(RuntimeError)
    end

    it 'disallows removing price' do
      expect{prices.delete(:child_price)}.to raise_error(RuntimeError)
    end
  end
end
