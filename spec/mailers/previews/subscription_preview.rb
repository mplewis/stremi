# Preview all emails at http://localhost:3000/rails/mailers/subscription
class SubscriptionPreview < ActionMailer::Preview
  def confirmation_email
    s = Hashie::Mash.new email: 'matt@mplewis.com', confirmation_code: { code: '57ac981e-f769-4777-b1b0-00a816f438ff' }
    SubscriptionMailer.confirmation_email s
  end
end
