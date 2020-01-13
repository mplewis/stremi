require 'rails_helper'

RSpec.describe ConfirmationCode, type: :model do
  it 'initializes by default with a UUID' do
    uuid_format = /\A[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}\z/i
    s = Subscriber.create! email: 'matt@mplewis.com', zip: 80202
    expect { ConfirmationCode.create! subscriber: s }.to change { ConfirmationCode.count }.by 1
    expect(ConfirmationCode.first.code).to match uuid_format
  end
end
