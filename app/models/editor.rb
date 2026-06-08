class Editor < ApplicationRecord
    #  has_many :posts, foreign_key: :user_id, class_name: 'Post'
     has_many :post_editors
     has_many :posts, through: :post_editors

end
