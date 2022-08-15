describe 'Matcher output' do
   it { expect { puts "Lucas" }.to output.to_stdout  } 
   it { expect { print "Lucas" }.to output("Lucas").to_stdout  } # Utilizado print por causa que o puts adiciona um \n ao final da string.
   it { expect { puts "Lucas Luan" }.to output(/Lucas/).to_stdout  } 

   it { expect { warn "Erro" }.to output.to_stderr  } 
   it { expect { warn "Erro" }.to output("Erro\n").to_stderr  }
   it { expect { warn "Erro em dobro" }.to output(/Erro/).to_stderr  } 
end
