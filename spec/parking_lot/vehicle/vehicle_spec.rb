describe Vehicles::Vehicle do
  context 'Base data class' do
    it 'attributes' do
      vehicle = described_class.new(license_no: 'abc1234')

      expect(vehicle.license_no).to eq('abc1234')
    end
  end
end
