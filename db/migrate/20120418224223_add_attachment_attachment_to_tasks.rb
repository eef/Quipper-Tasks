class AddAttachmentAttachmentToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :attachment_file_name, :string
    add_column :tasks, :attachment_content_type, :string
    add_column :tasks, :attachment_file_size, :integer
    add_column :tasks, :attachment_updated_at, :datetime
  end

  def self.down
    remove_column :tasks, :attachment_file_name
    remove_column :tasks, :attachment_content_type
    remove_column :tasks, :attachment_file_size
    remove_column :tasks, :attachment_updated_at
  end
end
