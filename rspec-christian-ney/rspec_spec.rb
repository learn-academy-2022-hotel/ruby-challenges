require 'rspec'
require_relative 'rspec'

# 📚 User Stories
# As a developer, I can create a Task.
# As a developer, I can give a Task a title and retrieve it.
# As a developer, I can give a Task a description and retrieve it.

describe 'Task' do 
    it 'logs task info' do
        expect{ Task.new('washing and drying clothes') }.to_not raise_error
    end


    it 'has a title' do 
        laundry = Task.new('washing and drying clothes')
        # p laundry
        expect(laundry.title).to be_a(String)
        expect(laundry.title).to eq('washing and drying clothes')
    end

    it 'gives descritpion' do
        laundry = Task.new('washing and drying clothes')
        p laundry
        expect(laundry.description).to be_a(String)
        expect(laundry.description).to eq('white and is a square')
    end
   

end


# As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
# As a developer, when I print a Task that is done, its status is shown.
# As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.