class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to_active_hash :genre
  belongs_to_active_hash :format
  belongs_to_active_hash :status

  validates :title, :artist, :text, :genre_id, :format_id, :status_id, 
            :price, :stock, presence: true

  with_options numericality: { other_than: 1 } do
    validates :genre_id
    validates :format_id
    validates :status_id
  end

end
