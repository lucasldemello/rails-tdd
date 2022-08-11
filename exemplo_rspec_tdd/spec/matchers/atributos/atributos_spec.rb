require "pessoa"

describe 'Atributos' do
    it 'have_attributes' do
      pessoa = Pessoa.new()
      pessoa.nome =  "Belchior"
      pessoa.idade =  76
      # breve explicacao sobre alias de matchers https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86
      expect(pessoa).to have_attributes(nome: "Belchior", idade: 76)
      expect(pessoa).to have_attributes(nome: a_string_starting_with("B"), idade: a_value >= 70)
    end
    
end