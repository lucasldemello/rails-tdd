describe "Ruby on Rails" do
    it { is_expected.to start_with("Ruby").and end_with("Rails")}
    it { expect(fruta).to eq('banana').or eq('uva').or eq('manga')}

    def fruta
        %w(banana uva manga).sample
    end
end
