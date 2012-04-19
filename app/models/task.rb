class Task < ActiveRecord::Base
  self.per_page = 10
  attr_accessible :complete, :deadline, :description, :email, :title, :attachment
  validates_presence_of :title, :description, :deadline
  validates :email, :allow_blank => true, :email => true
  has_attached_file :attachment
end
