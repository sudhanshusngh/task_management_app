class AddColumnToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :created_by, :string
    add_column :tasks, :assign_to, :string
  end
end
