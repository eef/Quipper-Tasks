require 'spec_helper'

describe "tasks/show.html.haml" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :title => "Title",
      :description => "MyText",
      :complete => false,
      :email => "Email"
    ))
  end
end
