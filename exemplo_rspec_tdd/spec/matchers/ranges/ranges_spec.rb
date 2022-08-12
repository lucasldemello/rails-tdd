describe (1..7), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(3,6)
    expect(subject).not_to cover(0, 8)
  end
end