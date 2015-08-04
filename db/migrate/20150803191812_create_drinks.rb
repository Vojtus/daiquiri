class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :nazev
      t.string :autor
      t.string :datum
      t.string :misto
      t.string :zaklad
      t.text :text1
      t.text :text2
      t.text :text3
      t.text :text4
      t.string :img_url

      t.timestamps null: false
    end
  end
end
