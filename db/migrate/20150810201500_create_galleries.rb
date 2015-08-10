class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :nazev

      t.timestamps null: false
    end
  end
end
