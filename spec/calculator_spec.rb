require './calculator.rb'


RSpec.describe Calculator do

 it 'class exists' do
   calc = Calculator.new
   expect(calc).to match(a_kind_of(Calculator)) 
 end 

 it 'check for method #add' do
   calc = Calculator.new
   numbers = '12,3'
   expect(calc).to receive(:add).with(numbers) 
   calc.add(numbers)
 end
 
end
