# mermaid_spec.rb
#ensures rspec testing framework is avail
require 'rspec'
#allows the spec file to read contents of the mermaid file
require './lib/mermaid'

#describe block
describe Mermaid do
#it block for individual test
#string briefly describes what is being tested
  it 'is an instance of mermaid' do
#create mermaid obj instance
    mermaid = Mermaid.new('Sereia')
    #assert mermaid is from mermaid class
    expect(mermaid).to be_a Mermaid
  end

  it 'has a name' do
    mermaid = Mermaid.new('Sereia', 22)
    #assert the student has a name property which matches what was passed in
    expect(@name).to eq 'Sereia'
  end
  
  it 'has an age' do
    mermaid = Mermaid.new('Sereia', 22)
    #expect mermaid age to match the argument
    expect(@age).to eq 22
  end
  
  it 'has can get older' do
    mermaid = Mermaid.new('Sereia', 22)
    #creates method that ages mermaid 
    mermaid.get_older
    #assert mermaid age increase from method
    expect(@age).to eq 23
  end
end