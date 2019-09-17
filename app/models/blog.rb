class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 } 
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body # it will not allow a blog post to be created with out these 2 items field out

  belongs_to :topic

  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end
end
