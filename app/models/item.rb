class Item < ApplicationRecord

  #what category fails:

  validates :itemName, presence: true, length: {minimum: 1}
  validates :price,  presence: true, length: {minimum: 1}
end
