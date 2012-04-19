require 'spec_helper'

describe Task do
  
  it "passes with with all required fields and without an email address" do
    Task.all.count.should eql(0)
    task = Factory(:task)
    task.email.should eql(nil)
    task.should be_valid
    Task.all.count.should eql(1)
  end
  
  it "fails validation without a title" do
    task = Factory.build(:task, :title => "")
    task.should have(1).error_on(:title)
    task.should_not be_valid
  end

  it "fails validation without a description" do
    task = Factory.build(:task, :description => "")
    task.should have(1).error_on(:description)
    task.should_not be_valid
  end

  it "fails validation without a deadline" do
    task = Factory.build(:task, :deadline => "")
    task.should have(1).error_on(:deadline)
    task.should_not be_valid
  end

  it "fails to valid without a valid email" do
    task = Factory.build(:task, :email => Faker::Lorem.words(1))
    task.should have(1).error_on(:email)
    task.should_not be_valid
  end

  it "passes with a valid email" do
    task = Factory.build(:task, :email => Faker::Internet.email)
    task.should be_valid
  end

  it "sets complete false after save" do
    task = Factory(:task)
    task.complete.should eql(false)
  end
  
end
