class Order < ApplicationRecord
  has_many :product_details
end