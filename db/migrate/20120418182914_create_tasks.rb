class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.boolean :complete, :default => false
      t.string :email

      t.timestamps
    end
  end
end
