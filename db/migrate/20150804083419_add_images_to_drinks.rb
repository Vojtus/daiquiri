class AddImagesToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :img_url2, :string
    add_column :drinks, :img_url3, :string
  end
end
