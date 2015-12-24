class Friendship < ActiveRecord::Base
  belongs_to :user
  # Does NOT have a Friend class, only model, so friend shold be tracked by class_name User
  belongs_to :friend, :class_name => 'User'
end
