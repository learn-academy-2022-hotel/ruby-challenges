require 'rspec'
require_relative 'rspec'

describe Task do
    it 'can create a task' do
        expect{Task.new('Dishes') }.to_not raise_error
    end

    it 'has title' do
       task = Task.new('Dishes')
       expect(task.title).to eq('Dishes')
       expect(task.title).to be_a(String)
    end  

    it 'has a description' do
        task = Task.new('Dishes')
        expect(task.description).to eq('Wash')
        expect(task.description).to be_a(String)
        dishes_task = Task.new('Dishes','Dry')
        expect (dishes_task.description).to eq('Dry')
    end
    
    # it 'can check status or given in progress by default' do
    #     task = Task.new('')
end        

# NameError:
#   uninitialized constant Task
# # ./rspec_spec.rb:4:in `<top (required)>'
# No examples found.
