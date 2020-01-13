require 'rails_helper'

RSpec.describe 'SubscriberController', type: :request do
  describe 'subscribing and confirming' do
    it 'works as expected' do
      expect {
        post '/subscribe', params: { subscriber: { email: 'matt@mplewis.com', zip: 80202 } }
      }.to change { Subscriber.count }.by(1)
      .and change { ConfirmationCode.count }.by 1
      expect(response).to have_http_status :no_content

      s = Subscriber.last
      expect(s).to have_attributes email: 'matt@mplewis.com', confirmed: false

      expect {
        get "/confirm?code=#{s.confirmation_code.code}"
      }.to change { s.reload.confirmed }.from(false).to(true)
      .and change { ConfirmationCode.count }.by -1
      expect(response).to have_http_status :no_content
    end
  end
end
