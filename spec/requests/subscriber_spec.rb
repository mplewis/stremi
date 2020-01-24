require 'rails_helper'

RSpec.describe 'SubscriberController', type: :request do
  describe 'subscribing and confirming' do
    let(:subscribe!) do
      post '/subscribe', params: { subscriber: { email: 'matt@mplewis.com', zip: 80202 } }
    end
    let(:confirm!) { get "/confirm?code=#{subscriber.confirmation_code.code}" }
    let(:subscriber) { Subscriber.last }

    it 'creates the record and sends an email' do
      expect { subscribe! }
        .to change { Subscriber.count }.by(1)
        .and change { ConfirmationCode.count }.by 1
      expect(response).to have_http_status :no_content
      expect(subscriber).to have_attributes email: 'matt@mplewis.com', confirmed: false

      expect { confirm! }
        .to change { subscriber.reload.confirmed }.from(false).to(true)
        .and change { ConfirmationCode.count }.by -1
      expect(response).to have_http_status :no_content
    end

    context 'when the subscriber is already confirmed' do
      before { Subscriber.create! email: 'matt@mplewis.com', zip: 80202, confirmed: true }

      it 'returns the expected error and does not reconfirm them' do
        expect { subscribe! }.to_not change { Subscriber.count }
        expect(Subscriber.last.confirmed).to be true
        expect(response).to have_http_status :bad_request
      end
    end

    context 'when the subscriber has an existing confirmation code' do
      before do
        s = Subscriber.create! email: 'matt@mplewis.com', zip: 80202
        ConfirmationCode.create! subscriber: s
      end

      it 'sends another email for the existing confirmation code' do
        expect { subscribe! }.to_not change { Subscriber.count }
        expect(response).to have_http_status :no_content
      end
    end
  end
end
