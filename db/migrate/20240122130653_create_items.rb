class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :category, null: false
      t.string :image, null: false
      t.string :brand
      t.integer :price, null: false
      t.integer :purchas_flag
      t.timestamps
    end
  end
end
