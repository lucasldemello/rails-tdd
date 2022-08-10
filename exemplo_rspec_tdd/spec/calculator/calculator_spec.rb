require 'calculator'

# ao inves de usar a classe posso, usar um texto e na linha 6, remover o described_class 
# para inserir a classe Calculator.
describe Calculator do
# describe Calculator, "Sobre a Calculadora" do #TIP: subject implicito
    context '#sum' do
        subject(:calc) {  described_class.new() }
        it 'with positive numbers' do 
            result = calc.sum(5, 7)
            expect(result).to eq(12)  
        end
        
        it 'with negative and positive numbers' do
            result = calc.sum(-5, 7)
            expect(result).to eq(2)  
        end

        it 'with negative numbers' do
            result = calc.sum(-5, -8)
            expect(result).to eq(-13)  
        end
    end
end
