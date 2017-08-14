require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
end



class TaskTest < ActiveSupport::TestCase
  test "completed ture" do
    task = Task.new(name: 'Bugs', completed: true , detail: 'FunTimesAndGO', deadline: Date.today  )
    assert_equal true, task.completed
  end

  test "completed false" do
    task = Task.new(name: 'Bugs', completed: false , detail: 'FunTimesAndGO', deadline: Date.today )
    assert_equal false, task.completed
  end

  test "test  name" do
    task = Task.new(name: 'Bugs', completed: false , detail: 'FunTimesAndGO', deadline: Date.today  )
    assert_equal "Bugs", task.name
  end

  test "test detail" do
    task = Task.new(name: 'Bugs', completed: false , detail: 'FunTimesAndGO', deadline: Date.today  )
    assert_equal "FunTimesAndGO", task.detail
  end

  test "test deadline" do
    task = Task.new(name: 'Bugs', completed: false , detail: 'FunTimesAndGO', deadline: Date.today )
    assert_equal Date.today , task.deadline
  end

end
