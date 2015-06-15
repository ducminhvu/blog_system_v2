class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :entry
  validates_presence_of :content, :user_id, :entry_id
end
