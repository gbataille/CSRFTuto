class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.string :detail
      t.integer :quantity

      t.timestamps
    end
  end
end
