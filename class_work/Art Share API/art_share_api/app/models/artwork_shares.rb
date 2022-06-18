class ArtworkShares < ApplicationRecord
    validates :viewer_id, presence: true
    validates :artwork_id, presence: true
    validates :viewer_id, uniqueness: {
        scope: :artwork_id,
        message: '1 view per artwork per person'
    }
    belongs_to(
        :viewer,
        class_name: 'User',
        foreign_key: :viewer_id,
        primary_key: :id
    )
    belongs_to(
        :artwork,
        class_name: 'Artwork',
        foreign_key: :artwork_id,
        primary_key: :id
    )


end