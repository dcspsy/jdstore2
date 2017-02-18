class Order < ApplicationRecord
  has_many :orders
  has_many :product_lists
end
