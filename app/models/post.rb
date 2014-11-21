class Post < ActiveRecord::Base
  acts_as_taggable

  validates :title, :presence=>true,
                    :length=>{:minimum=>5}

  validate :body, :presence=>true

  def previous_post
    self.class.first(:conditions => ["created_at < ?", created_at], :order => "created_at desc")
  end

  def next_post
    self.class.first(:conditions => ["created_at > ?", created_at], :order => "created_at asc")
  end
end
