class StoreComment
  include Interactor

  before do
    context.comment = Comment.new(context.comment_params)

    if context.comment.invalid?
      context.fail!(
          :message => context.comment.errors.full_messages
      )
    end
  end

  def call
    Rails.logger.info '#1 - StoreComment'
    context.comment.save!
  end

  def rollback
    Rails.logger.info '#1 - StoreComment [ ROLLBACK ]'
    context.comment.destroy
  end
end