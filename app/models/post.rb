class Post < ActiveRecord::Base
  attr_accessible :title, :description, :price, :email, :category_id
  belongs_to :category
end
