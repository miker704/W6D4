
class Artwork < ApplicationRecord
    validates :artist_id, presence: true
    validates :title, presence: true
    validates :image_url, presence: true

    validates :title, uniqueness: {
        scope: :artist_id,
        message: '1 per artist'
    }

    belongs_to(
        :artist,
        class_name: 'User',
        foreign_key: :artist_id,
        primary_key: :id
    )
    has_many(
        :views,
        class_name: 'ArtworkShares',
        foreign_key: :artwork_id,
        primary_key: :id
    )
    has_many(
        :shared_viewers,
        through: :views,
        source: :viewer
    )

    has_many(
        :comments,
        foreign_key: :artwork_id,
        class_name: :Comment,
        primary_key: :id,
        dependent: :destroy
    )

    has_many(
         :likes, as: :liked
        #  primary_key: :id ,
        #  foreign_key: :liked_item_id
        
    )


end