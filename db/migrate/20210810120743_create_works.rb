class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :name
      t.text :description
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
