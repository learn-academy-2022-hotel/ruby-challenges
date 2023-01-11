require 'rspec'
require_relative 'rspec'

describe Task do
    it 'there is a task' do
        expect{ Task.new }.to_not raise_error
    end
    it 'has a title' do
        task = Task.new('dishes')
        expect(task.title).to eq('dishes')
        expect(task.title).to be_a(String)
    end
    # it 'has a description' do
    #     description = Task.new('put the dishes in the dishwasher')
    #     expect(task.description).to eq('put the dishes in the dishwasher')
    #     expect(task.description).to be_a(String)
    # end
    # it 'starts as in progress' do
    #     progress = Task.new('in progress')
    #     expect(task.progress).to eq('in progress')
    #     expect(task.progress).to be_a(String)
    # end
    # it 'can mark a task done' do
    #     complete = Task.new('complete')
    #     expect(task.complete).to eq('complete')
    #     expect(task.complete).to be_a(String)
    # end
    # it 'prints status if task is complete' do
    #     printstatus = Task.new('the task has been completed')
    #     expect(task.printstatus).to eq('the task has been completed')
    #     expect(task.printstatus).to be_a(String)
    # end
    # it 'has a due date' do
    #     duedate = Task.new('1/11/2023')
    #     expect(task.duedate).to eq('1/11/2023')
    #     expect(task.duedate).to be_a(String)
    # end
end

# ✅ Challenge: Tasks
# Process: Copy the story into your RSpec file. Write the test FIRST. Ensure the test fails correctly. Then write the code that will make the test pass.

# 📚 User Stories
# As a developer, I can create a Task.
# As a developer, I can give a Task a title and retrieve it.
# As a developer, I can give a Task a description and retrieve it.
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