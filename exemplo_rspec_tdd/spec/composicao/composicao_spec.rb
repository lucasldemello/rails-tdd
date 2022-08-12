# Incluir dentro do teste ou no arquivo spec_helper.
# require_relative 'helper' 
# RSpec.configure do |conf|
#     conf.include Helper
# end

describe "Ruby on Rails" do
    it { is_expected.to start_with("Ruby").and end_with("Rails")}
    it { expect(fruta).to eq('banana').or eq('uva').or eq('manga')}

    # def fruta # helper method arbitrário.
    #     %w(banana uva manga).sample
    # end
end
