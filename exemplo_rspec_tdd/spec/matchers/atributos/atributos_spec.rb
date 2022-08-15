require "pessoa"

describe 'Atributos' do

    before(:each) do 
      @pessoa = Pessoa.new()
      puts ">>>>> ANTES de cada teste de atributos"
    end

    after(:each) do 
      @pessoa.nome = "Sem nome!"
      puts @pessoa.inspect
      puts ">>>>> DEPOIS de cada teste de atributos"
    end

    it 'have_attributes of Belchior' do
      @pessoa.nome =  "Belchior"
      @pessoa.idade =  76
      # breve explicacao sobre alias de matchers https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86
      expect(@pessoa).to have_attributes(nome: "Belchior", idade: 76)
      expect(@pessoa).to have_attributes(nome: a_string_starting_with("B"), idade: a_value >= 70)
    end

    it 'have_attributes of Alceu' do
      @pessoa.nome =  "Alceu"
      @pessoa.idade =  85
      # breve explicacao sobre alias de matchers https://gist.github.com/JunichiIto/f603d3fbfcf99b914f86
      expect(@pessoa).to have_attributes(nome: "Alceu", idade: 85)
      expect(@pessoa).to have_attributes(nome: a_string_starting_with("A"), idade: a_value >= 70)
    end

end