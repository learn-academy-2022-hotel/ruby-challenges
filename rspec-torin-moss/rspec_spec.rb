require 'rspec'
require_relative 'rspec'

describe 'Task' do
  it 'has to be real' do
    expect{ Task.new }.to_not raise_error
  end
  it 'has a title' do
    task_list = Task.new('task list')
    expect{ task_list.title }.to be_a(String)
  end
  it 'has a description' do
    task_list = Task.new('task list')
    expect { task_list.description}.to be_a(String)
  end
  it 'has a done status' do
    
end
