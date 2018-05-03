class AddColumnTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :year, :string
    add_column :tasks, :date, :string
  end
end
