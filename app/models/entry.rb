class Entry < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, length: { maximum: 250 }
  validates_presence_of :title, :content, :user_id
end
