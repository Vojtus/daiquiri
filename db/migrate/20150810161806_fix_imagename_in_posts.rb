class FixImagenameInPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.rename :img_url, :image
    end
  end
end
