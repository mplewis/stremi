class SubscriberController < ApplicationController
  def subscribe
    p = params.require(:subscriber).permit(:email, :zip)
    existing = Subscriber.find_by email: p['email']

    render plain: 'ALREADY_CONFIRMED', status: :bad_request and return if existing&.confirmed
    render plain: '', status: :no_content and return if existing

    ApplicationRecord.transaction do
      s = Subscriber.create! p
      c = ConfirmationCode.create! subscriber: s
      # TODO: send confirmation email
    end
    render plain: '', status: :no_content
  end

  def confirm
    given = params[:code]
    c = ConfirmationCode.find_by code: given
    render text: 'Confirmation code not found', status: 404 unless c
    ApplicationRecord.transaction do
      c.subscriber.update! confirmed: true
      c.delete
    end
    render plain: '', status: :no_content
  end
end
