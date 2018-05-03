class Add < ActiveRecord::Migration
  def change
    add_column :tasks, :detail, :string
    add_column :tasks, :solution, :string
    add_column :tasks, :comment, :string
    add_column :tasks, :name, :string
  end
end
