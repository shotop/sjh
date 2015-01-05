class Translation < ActiveRecord::Base
  # validates :eng_title, :presence=>true,
  #                       :length=>{:minimun=>5}

  # validates :rus_title, :presence => true,
  #                       :length => {:minimun=>5}

  validates :eng_body, :presence => true
  validates :rus_body, :presence => true
end
