require 'string_nao_vazia'

describe 'Classes / Tipos' do
  it 'be_instance_of' do
    expect(9.0).to be_instance_of Float #Exatament a classe
  end

  it 'be_kind_of' do
    expect(StringNaoVazia.new).to be_kind_of(String) # Pode ser por herança
  end
  
  it 'be_an / be_a' do
    str = StringNaoVazia.new
    expect("Lucas").to be_a(String)
    expect(str).to be_a(StringNaoVazia)

    expect("Lucas").to be_an(String)
    expect(str).to be_an(StringNaoVazia) # Pode ser por herança
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:upcase)
  end
end