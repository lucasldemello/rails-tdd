describe 'all' do
    it { expect([2, 6, 8]).to all((be_even).and be_an(Integer)) }
    it { expect(['ruby', 'rails']).to all( be_an(String).and include('r')) }
end
