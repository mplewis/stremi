require "rails_helper"

RSpec.describe SubscriptionMailer, type: :mailer do
  describe 'confirmation_email' do
    subject(:mail) do
      m = SubscriptionMailer.confirmation_email subscriber
      m.body # eval to force immediate delivery
      m
    end
    let(:subscriber) { Hashie::Mash.new email: email, confirmation_code: { code: code } }
    let(:email) { 'matt@mplewis.com' }
    let(:code) { '57ac981e-f769-4777-b1b0-00a816f438ff' }
    let(:body) { mail.body.encoded }

    it 'sends the expected email' do
      expect(mail.to).to eql [email]
      expect(mail.subject).to eql 'Confirm your Snow Tire Reminder'
      expect(body).to include 'confirm your subscription'
      expect(body).to include "http://example.fdnt.me/confirm?code=#{code}"
    end

    describe 'when no code is present' do
      let(:code) { nil }

      it 'throws the expected error' do
        expect { subject }.to raise_error /Subscriber has no confirmation code/
      end
    end

    describe 'when subscriber is already confirmed' do
      before { subscriber.confirmed = true }

      it 'does not send an email' do
        expect(mail.to_s).to include 'ActionMailer::Base::NullMail'
      end
    end
  end
end
