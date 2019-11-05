class Order < ApplicationRecord
  before_create :set_uid
  has_many :product_details

  private

  def set_uid
    tmp_uid = ""
    loop do
      tmp_uid = "#{Date.today.to_s}-#{SecureRandom.hex(10)}"
      break unless Order.find_by_uid(tmp_uid)
    end
    self.uid = tmp_uid
  end
end