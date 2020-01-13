class Subscriber < ApplicationRecord
  has_one :confirmation_code
  validates :email, presence: true
  validates :zip, format: { with: /\A\d\d\d\d\d\z/, message: 'must be a 5-digit US zip code' }
end
