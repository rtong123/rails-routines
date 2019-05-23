class CreateRoutineProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :routine_products do |t|
      t.integer :routine_id
      t.integer :user_id
      t.string :instructions
    end
  end
end
