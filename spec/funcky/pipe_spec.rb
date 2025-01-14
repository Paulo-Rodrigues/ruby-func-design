describe Pipe do
  it 'pipying' do
    double = ->(x) {  x * 2 }
    increment = ->(x) { x + 1 }

    result = 2
             .pipe(double)
             .pipe(increment)

    expect(result).to eq(5)
  end
end
