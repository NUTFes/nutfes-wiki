class ChangeDatatypeYearOfTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :year, 'integer USING CAST(year AS integer)'
    change_column :tasks, :date, 'date USING CAST(date AS date)'
  end
end
