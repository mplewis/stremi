require 'rails_helper'

RSpec.describe Subscriber, type: :model do
  it 'creates valid subscribers' do
    expect {
      Subscriber.create! email: 'matt@mplewis.com', zip: 80202
    }.to change { Subscriber.count }.by 1
  end

  it 'fails to validate invalid subscribers' do
    expect {
      Subscriber.create! zip: 80202
    }.to raise_error /Email can't be blank/

    expect {
      Subscriber.create! email: 'matt@mplewis.com', zip: '80202-1234'
    }.to raise_error /Zip must be a 5-digit US zip code/
  end
end
