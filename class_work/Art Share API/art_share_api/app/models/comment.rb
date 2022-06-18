class Comment < ApplicationRecord
    validates :user_id , presence: true
    validates :artwork_id , presence: true
    validates :body, presence: true



    belongs_to( 
    :user,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id
    )

    belongs_to(
        :artwork,
        class_name: :Artwork,
        foreign_key: :artwork_id,
        primary_key: :id

    )

    has_many(
        :likes, as: :liked
        # primary_key: :id,
        # foreign_key: :liked_item_id

    )



end