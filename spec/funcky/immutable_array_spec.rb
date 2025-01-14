describe ImmutableArray do
  it 'does not mutate array' do
    arr = described_class.new([1, 2, 3])

    expect { arr << 4 }.to raise_error(NoMethodError)
    expect { arr.pop }.to raise_error(NoMethodError)
    expect(arr.reduce(&:+)).to eq(6)
  end
end
