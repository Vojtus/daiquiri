class Drink < ActiveRecord::Base

  validates :nazev,   presence: true, length: { minimum: 3, maximum: 50 },
                      uniqueness: { case_sensitive: false }
  validates :autor,   presence: true, length: { minimum: 3, maximum: 50 }
  validates :datum,   presence: true, length: { minimum: 3, maximum: 50 }
  validates :misto,   presence: true
  validates :zaklad,  presence: true
  validates :text1,   presence: true
  validates :img_url, presence: true

  def previous
    Drink.where(["id < ?", id]).last
  end

  def next
    Drink.where(["id > ?", id]).first
  end
end
