# describe 'all', collection: true do
# describe 'all', type: 'collection' do
# acima são formas equivalentes para criar as tags
describe 'all', :collection do
    it { expect([2, 6, 8]).to all((be_even).and be_an(Integer)) }
    it { expect(['ruby', 'rails']).to all( be_an(String).and include('r')) }
end
