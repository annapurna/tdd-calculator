require './calculator.rb'




RSpec.describe Calculator do

 it 'class exists' do
   calc = Calculator.new
   expect(calc).to match(a_kind_of(Calculator)) 
 end  
end
