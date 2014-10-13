class Comment < ActiveRecord::Base
  paginates_per 10
  validates_presence_of :nickname
  validates_presence_of :comment
end
