class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :purpose
      t.string :shade
      t.timestamps
    end
  end
end
