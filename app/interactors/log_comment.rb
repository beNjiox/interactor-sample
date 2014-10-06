class LogComment
  include Interactor

  def call
    Rails.logger.info '#3 - LogComment'
    # Here you can for example invoke the Mixpanel API to log your event
    # Mixpanel::Tracker.new(ENV['MIXPANEL_PROJECT_TOKEN']).track(context.comment.email, 'A user commented the GuestBook')
  end
end