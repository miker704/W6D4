

class User <ApplicationRecord
    validates :username , presence: true, uniqueness: true


    has_many(
        :artworks,
        class_name: 'Artwork',
        foreign_key: :artist_id,
        primary_key: :id,
        dependent: :destroy
    )
    has_many(
        :views,
        class_name: 'ArtworkShares',
        foreign_key: :viewer_id,
        primary_key: :id
    )
    has_many(
        :shared_artworks,
        through: :views,
        source: :artwork,
        dependent: :destroy


    )

    has_many( 
        :comments,
        class_name: :Comment,
        foreign_key: :user_id,
        primary_key: :id,
        dependent: :destroy
    )

    has_many :likes,
    foreign_key: :user_id,
    class_name: :Like,
    primary_key: :id

    

end 