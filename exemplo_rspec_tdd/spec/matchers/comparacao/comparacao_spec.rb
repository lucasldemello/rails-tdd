describe 'Matchers de Comparação' do
  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 2 
    expect(5).to be >= 5
  end

  it '<' do
    expect(6).to be < 12
  end

  it '<=' do
    expect(6).to be <= 22 
    expect(6).to be <= 6
  end
  
  it 'be_between - inclusive' do
    expect(6).to be_between(3,8).inclusive 
    expect(3).to be_between(3,8).inclusive 
    expect(8).to be_between(3,8).inclusive 
  end

  # it 'be_between - inclusive / falhas agregadas', :aggregate_failures do
  #   # aggregate_failures do
  #     expect(6).to be_between(3,8).inclusive 
  #     expect(1).to be_between(3,8).inclusive 
  #     expect(2).to be_between(3,8).inclusive 
  #   # end
  # end

  # TIP: Exemplo com escopo global de falhas agregadas.
  # it 'be_between - inclusive / falhas agregadas' do
  #   # aggregate_failures do
  #     expect(6).to be_between(3,8).inclusive 
  #     expect(1).to be_between(3,8).inclusive 
  #     expect(2).to be_between(3,8).inclusive 
  #   # end
  # end
  
  it 'be_between - exclusive' do
    expect(6).to be_between(3,8).exclusive 
    expect(3).not_to be_between(3,8).exclusive 
    expect(8).not_to be_between(3,8).exclusive 
  end

  it 'match' do
    expect("fulano@com.br").to match(/..@../)
  end

  it 'start_with' do
    expect("Adoniran Barbosa").to start_with("Adoniran")
    expect([1, 2, 3]).to start_with(1)
  end

  it 'end_with' do
    expect("Joao Gilberto").to end_with("berto")
    expect([1, 2, 3]).to end_with(3)
  end
end