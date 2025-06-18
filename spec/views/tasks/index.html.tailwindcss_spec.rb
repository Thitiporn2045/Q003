require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        title: "Title",
        description: "MyText",
        completed: false
      ),
      Task.create!(
        title: "Title",
        description: "MyText",
        completed: false
      )
    ])
  end

  it "renders a list of tasks" do
    render

    expect(rendered).to match(/Title/)
    expect(rendered.scan(/Title/).size).to eq(2)

    expect(rendered).to match(/false/)
    expect(rendered.scan(/false/).size).to eq(2)
  end
end
