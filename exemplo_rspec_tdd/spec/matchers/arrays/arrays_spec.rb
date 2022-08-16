RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([5,3,4]) do
  it '#include' do 
    expect(subject).to include(3)
    expect(subject).to include(5,4)
  end

  it "should exclude 4" do
    expect(subject).to exclude(9)
  end
  

  it '#contain_exactly' do
    expect(subject).to contain_exactly(3,4,5)
  end

  it '#match_array' do
    expect(subject).to match_array([5,3,4])
  end
end