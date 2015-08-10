class FixColumnName < ActiveRecord::Migration
  def change
    change_table :drinks do |t|
      t.rename :img_url, :image
      t.rename :img_url2, :image2
      t.rename :img_url3, :image3
    end
  end
end
