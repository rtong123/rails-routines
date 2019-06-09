class CreateRoutineProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :routineproducts do |t|
      t.integer :routine_id
      t.integer :user_id
      t.integer :rating
    end
  end
end
