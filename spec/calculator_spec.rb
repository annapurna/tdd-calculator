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

 it 'add method to return 0 if argument string is empty' do
  calc = Calculator.new
  numbers = ""
  expect(calc.add numbers).to eql(0) 
 end

  
 it 'add method to return sum of integers' do
   calc = Calculator.new
   numbers = '//;\n1;2;3'
   expect(calc.add numbers).to eql(6)  
 end
end
