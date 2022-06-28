class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_rich_text :description
  has_one_attached :picture

  enum condition: {
    sold_for_parts: 1,
    very_loved: 2,
    good_condition: 3,
    brand_new: 4
  }

end
