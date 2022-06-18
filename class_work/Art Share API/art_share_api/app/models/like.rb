class Like < ApplicationRecord
    validates :user_id , presence: true, uniqueness: {
        scope: [:liked_item_id, :liked_item_type]
    }
    
    
    



    # belongs_to(
    #     :likeditem, 
    #     polymorphic: true


    # )

    belongs_to :liked,
    class_name: :Like,
    polymorphic: true

    belongs_to :user,
    foreign_key: :user_id,
    class_name: :User,
    primary_key: :id
end