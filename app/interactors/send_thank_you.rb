class SendThankYou
  include Interactor

  def call
    if context.fake_fail == true
      context.fail!(:message => 'You checked the fake fail checkbox... we can\'t continue!')
    else
      Rails.logger.info '#2 - SendThankYou'
    end
  end
end