class SubscriptionMailer < ApplicationMailer
  def confirmation_email(subscriber)
    if subscriber.confirmed
      logger.warn "Subscriber is already confirmed, no need to re-confirm: #{subscriber}"
      return
    end

    email = subscriber.email
    code = subscriber.confirmation_code&.code
    raise "Subscriber has no confirmation code: #{subscriber}" unless code
    @link = url_for controller: 'subscriber', action: 'confirm', code: code

    mail to: email, subject: 'Confirm your Snow Tire Reminder'
  end
end
