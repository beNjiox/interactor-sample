class LogComment
  include Interactor

  def call
    Rails.logger.info '#3 - LogComment'
  end
end