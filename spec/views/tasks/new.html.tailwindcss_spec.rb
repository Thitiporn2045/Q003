require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      title: "MyString",
      description: "MyText",
      completed: false
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do
      assert_select "input[name=?]", "task[title]"

      assert_select "textarea[name=?]", "task[description]"

      assert_select "input[name=?]", "task[completed]"
    end
  end
end
