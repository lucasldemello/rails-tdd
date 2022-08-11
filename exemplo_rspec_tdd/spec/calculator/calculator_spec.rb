require 'calculator'

# ao inves de usar a classe posso, usar um texto e na linha 6, remover o described_class 
# para inserir a classe Calculator.
describe Calculator do
# describe Calculator, "Sobre a Calculadora" do #TIP: subject implicito

    #TIP: Subject explicito com parametros.  
    # subject(:calc) { described_class.new(1,2,3)}
    
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

    context "#div" do
        it 'divided by 0' do
            #expect{subject.div(2, 0)}.to raise_exception # Muito genérico, vai levantar um warning.
            expect{subject.div(2, 0)}.to raise_error(ZeroDivisionError)
            expect{subject.div(2, 0)}.to raise_error("divided by 0")
            expect{subject.div(2, 0)}.to raise_error(ZeroDivisionError, "divided by 0") # Isola ainda mais o teste.
            expect{subject.div(2, 0)}.to raise_error(/divided/)
        end
    end
    
end
