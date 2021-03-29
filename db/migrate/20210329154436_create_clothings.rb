class CreateClothings < ActiveRecord::Migration[6.1]
  def change
    create_table :clothings do |t|
      t.string :name
      t.string :img_url
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
