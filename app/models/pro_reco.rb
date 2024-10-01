class ProReco < ApplicationRecord
  enum status: { draft: 0, published: 1, archived: 2 }

  
  validates :title,        presence: true
  validates :content,        presence: true
  
  has_one_attached :image
  belongs_to :user
  

end
