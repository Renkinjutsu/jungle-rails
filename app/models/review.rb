class Review < ActiveRecord::Base
    belongs_to :product

    validates :product_id, presence: true
    validates :user_id, presence: true
    validates :description, presence: true
    validates :rating, inclusion: {in: 0..5}

end
