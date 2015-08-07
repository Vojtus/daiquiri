class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string  :nazev
      t.string  :img_url
      t.text    :text
      t.date    :datum
      t.string  :tags
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
