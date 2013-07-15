class Post < ActiveRecord::Base
  attr_accessible :title, :content, :category_id
  belongs_to :user
  belongs_to :category
end
