class User < ApplicationRecord
    has_many :posts, foreign_key: :user_id, class_name: 'Post'
    has_many :created_posts,foreign_key: :creator_id, class_name: 'Post'
end
