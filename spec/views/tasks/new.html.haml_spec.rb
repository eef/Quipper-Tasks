require 'spec_helper'

describe "tasks/new.html.haml" do
  before(:each) do
    assign(:task, stub_model(Task,
      :title => "MyString",
      :description => "MyText",
      :complete => false,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path, :method => "post" do
      assert_select "input#task_title", :name => "task[title]"
      assert_select "textarea#task_description", :name => "task[description]"
      assert_select "input#task_complete", :name => "task[complete]"
      assert_select "input#task_email", :name => "task[email]"
    end
  end
end
