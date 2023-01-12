# Process: Copy the story into your RSpec file. Write the test FIRST. Ensure the test fails correctly. Then write the code that will make the test pass.

require 'rspec'
require_relative 'rspec'

# 📚 User Stories
# As a developer, I can create a Task.
# As a developer, I can give a Task a title and retrieve it.
# As a developer, I can give a Task a description and retrieve it.

describe 'Task' do
    it 'has to be real' do
        expect{ Task.new('Do laundry') }.to_not raise_error
    end  
    it 'has a title' do
        task = Task.new('Do laundry')
        expect( task.title ).to be_a(String)
        expect( task.title ).to eq('Do laundry')
    end  
    it 'has a description' do
        task = Task.new('Do laundry')
        p task
        expect( task.description ).to be_a(String)
        expect( task.description ).to eq('Wash clothes')
        do_dishes = Task.new('Do laundry', 'Wash cups and plates')
        p do_dishes
        expect( do_dishes.description ).to be_a(String)
        expect( do_dishes.description ).to eq('Wash cups and plates')
    end
    it 'has a completion' do
        do_dishes = Task.new('dishes', 'wash silverware')
        expect{ do_dishes.status }.to change{ do_dishes.completion }.from(false).to(true)
        # task_status = Task.new('in progress')
    end
end

# As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
# As a developer, when I print a Task that is done, its status is shown.
# As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.
# 🏔 Stretch Goals
# As a developer, I can add all of my Tasks to a TaskList.
# As a developer with a TaskList, I can print the completed items.
# As a developer with a TaskList, I can print the incomplete items.
# As a developer with a TaskList, I can list all the not completed items that are due today.
# As a developer with a TaskList, I can list all the incomplete items in order of due date.
# As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.