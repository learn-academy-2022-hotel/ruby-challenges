# User Stories
require 'rspec'
require_relative 'rspec'
require 'date'
# As a developer, I can create a Task.
# As a developer, I can give a Task a title and retrieve it.
# As a developer, I can give a Task a description and retrieve it.
# As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
# As a developer, when I print a Task that is done, its status is shown.
# As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.

describe Task do 
  it 'has to be real' do
    expect{ Task.new() }.to_not raise_error
  end

  it 'has a title' do 
    task = Task.new('Homework')
    expect(task.title).to eq('Homework')
    expect(task.title).to be_a(String)
  end

  it 'has a description' do
    task = Task.new('Homework', 'math assignment')
    expect(task.description).to eq('math assignment')
  end

  it 'task is initialized as in progress or is mark done' do
    task = Task.new()
    expect(task.status).to eq('in progress')
    expect{ task.is_done }.to change{ task.status }.from('in progress').to('done')
  end

  it 'has a due date' do
    task = Task.new('Homework', 'math assignment', 'in progress', Date.parse('10th Jan 2023')) 
    expect(task.date).to eq(Date.parse('10th Jan 2023'))
  end
end

# 🏔 Stretch Goals
# As a developer, I can add all of my Tasks to a TaskList.
# As a developer with a TaskList, I can print the completed items.
# As a developer with a TaskList, I can print the incomplete items.
# As a developer with a TaskList, I can list all the not completed items that are due today.
# As a developer with a TaskList, I can list all the incomplete items in order of due date.
# As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
