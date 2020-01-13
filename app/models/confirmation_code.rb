class ConfirmationCode < ApplicationRecord
  belongs_to :subscriber
  attribute :code, :text, default: -> { SecureRandom.uuid }
  validates :code, presence: true
end
