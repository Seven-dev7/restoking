class UserProfile < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_one_attached :avatar

  def full_address
    "#{building_number} #{address} #{zip_code} #{city}"
  end
end
