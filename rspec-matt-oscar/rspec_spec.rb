require 'rspec'
require_relative 'rspec'
require 'date'

# As a developer, I can create a Task.
describe 'Task' do
    it 'has to be real' do
        expect {Task.new('Laundry','Washing and drying clothes')}.to_not raise_error
    end
    it 'has a title' do
        task = Task.new('Laundry','Washing and drying clothes')
        expect(task.title).to be_a(String)
        expect(task.title).to eq('Laundry')
    end
    it 'can be given a description' do
        task = Task.new('Laundry','Washing and drying clothes')
        expect(task.description).to be_a(String)
        expect(task.description).to eq('Washing and drying clothes')
    end
    it 'indicates completion status' do
        task = Task.new('Laundry','Washing and drying clothes')
        expect(task.completed).to be_a(String)
        expect(task.completed).to eq('In progress')
    end
    it 'prints that a task is completed' do
        task = Task.new('Laundry','Washing and drying clothes')
        expect { task.is_complete}.to change{ task.completed}.from('In progress').to('Complete')
    end
    it 'adds a due date' do
        task = Task.new('Laundry','Washing and drying clothes')
        expect {task.due_date}.to change {task.duedate}.from('None').to (2023-01-10)
    end
end
# Failures:

#   1) Task has to be real
#      Failure/Error: expect {Task.new}.to_not raise_error

# As a developer, I can give a Task a title and retrieve it.
# Failures:

#   1) ArgumentError:
#        wrong number of arguments (given 1, expected 0)

# Pass:
# Finished in 0.00724 seconds (files took 0.12113 seconds to load)
# 2 examples, 0 failures

# As a developer, I can give a Task a description and retrieve it.
# Failures:
#   1) Task can be given a description
#      Failure/Error: expect(task.description).to be_a(String)
     
#      NoMethodError:
#        undefined method `description' for #<Task:0x00007fe9f78d3608 @title="Laundry">

# Finished in 0.00525 seconds (files took 0.12319 seconds to load)
# 3 examples, 0 failures

# As a developer, I can mark a Task done. Tasks should be initialized as 'in progress'.
# Failures:
#   1) Task indicates completion status
#      Failure/Error: task = Task.new('Laundry')
     
#      ArgumentError:
#        wrong number of arguments (given 1, expected 2)

# Pass
# Finished in 0.00801 seconds (files took 0.12599 seconds to load)
# 4 examples, 0 failures

# As a developer, when I print a Task that is done, its status is shown.
# Failures:
#   1) Task prints that a task is completed
#      Failure/Error: expect { task.is_complete}.to change{ task.complete}.from('In progress').to('Complete')

# Finished in 0.00824 seconds (files took 0.13549 seconds to load)
# 5 examples, 0 failures

# As a developer, I can give a Task a due date. Hint: Use the built-in Ruby Date class.