class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :cart_items
  has_many :carts, through: :cart_items
  has_one_attached :image
  belongs_to_active_hash :genre
  belongs_to_active_hash :format
  belongs_to_active_hash :status

  validates :title, :artist, :text, :genre_id, :format_id, :status_id,
            :price, :stock, :image, presence: true

  validates :price, numericality: { only_integer: true, message: 'は半角数字で入力してください' }
end
