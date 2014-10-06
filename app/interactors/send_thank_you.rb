class SendThankYou
  include Interactor

  def call
    if context.fake_fail == true
      context.fail!(:message => 'You checked the fake fail checkbox... we can\'t continue!')
    else
      # Here you can send a email to the commenter
      # CommenterMailer.thank_you_email(context.comment.email)
      Rails.logger.info '#2 - SendThankYou'
    end
  end
end