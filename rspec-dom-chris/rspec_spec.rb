# User Stories
# As a developer, I can create a Task.
# As a developer, I can give a Task a title and retrieve it.
# As a developer, I can give a Task a description and retrieve it.
# As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
# As a developer, when I print a Task that is done, its status is shown.
# As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.

require 'rspec'
require_relative 'rspec'
require 'date'

describe 'Task' do
    it 'has to be real' do
        expect{Task.new('Dishes', 'Wash Dishes', 'Due Date')}.to_not raise_error
    end
    it 'can have a title and description' do
        dishes = Task.new('Dishes','Wash Dishes', Date.new(2023,1,13)) 
        expect(dishes.title).to be_a(String)
        expect(dishes.title).to eq('Dishes')
        expect(dishes.description).to be_a(String)
        expect(dishes.description).to eq('Wash Dishes')  
    end
    it 'can be marked as done' do
        laundry = Task.new('Laundry','Fold Laundry', Date.new(2023,1,14))
        expect{laundry.complete}.to change{laundry.done_yet}.from('In Progress').to('done')
        # p laundry.complete
    end
    it 'has a due date' do
        mow_yard = Task.new('Mow Yard', 'Mow The Yard', Date.new(2023,1,11))
        expect(mow_yard.due_date).to eq(Date.new(2023,1,11))
        # p mow_yard.due_date
    end
end