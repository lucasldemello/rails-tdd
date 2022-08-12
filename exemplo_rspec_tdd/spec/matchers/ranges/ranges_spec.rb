describe (1..7), 'Ranges' do
  it '#cover' do
    is_expected.to cover(2) 
    expect(subject).to cover(3,6)
    expect(subject).not_to cover(0, 8)
  end

  it {is_expected.to cover(2)} 
  it {is_expected.to cover(3,5)} 
  it {is_expected.not_to cover(-1, 14)} 
end