class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
