# 📚 User Stories
# As a developer, I can create a Task.
# As a developer, I can give a Task a title and retrieve it.
# As a developer, I can give a Task a description and retrieve it.
# As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
# As a developer, when I print a Task that is done, its status is shown.
# As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.

require 'rspec'
require_relative 'rspec'
require 'date'

describe Task do
    it 'has to exist' do
        expect { Task.new('vacuum', 'clean the bedroom', 'in progress', '2023-01-11') }.to_not raise_error
    end

    it 'has a title' do
        task1 = Task.new('vacuum', 'clean the bedroom', 'in progress', '2023-01-11')
        expect(task1.title).to eq('vacuum')
        expect(task1.title).to be_a(String)
    end

    it 'has a description' do
        task1 = Task.new('vacuum', 'clean the bedroom', 'in progress', '2023-01-11')
        expect(task1.description).to eq('clean the bedroom')
        expect(task1.description).to be_a(String)
    end

    it 'has a status' do
        task1 = Task.new('vacuum', 'clean the bedroom', 'in progress', '2023-01-11')
        expect(task1.status).to eq('in progress')
        expect(task1.status).to be_a(String)
    end

    it 'indicates task is complete' do
        task1 = Task.new('vacuum', 'clean the bedroom', 'in progress', '2023-01-11')
        expect { task1.finished_task }.to change{ task1.status }.from('in progress').to('complete')
    end

    it 'has a due date' do
        task1 = Task.new('vacuum', 'clean the bedroom', 'in progress', '2023-01-11')
        expect(task1.date).to be_a(Date)
    end
end

describe TaskList do
    it 'has to exist' do
        expect { TaskList.new }.to_not raise_error
    end

    it 'prints completed tasks' do
        expect { }
end