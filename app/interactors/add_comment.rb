class AddComment
  include Interactor::Organizer

  organize [
               StoreComment,
               SendThankYou,
               LogComment
           ]
end