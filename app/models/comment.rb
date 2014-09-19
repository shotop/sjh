class Comment < ActiveRecord::Base
  belongs_to :post

  validates :guest_name,      :presence => true
  validates :guest_email,      :presence => true
end
