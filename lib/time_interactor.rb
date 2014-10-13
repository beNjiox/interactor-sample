module TimeInteractor
  extend ActiveSupport::Concern

  included do
    before do
      Rails.logger.info 'Start Timing Interactor...'
      context.start_time = Time.now
    end

    after do
      end_time = Time.now
      Rails.logger.info "This interactor took #{end_time - context.start_time}"
    end
  end
end