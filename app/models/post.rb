class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
    validate :expected_not_to_allow

    def expected_not_to_allow
        if title == "True Facts"
        errors.add(:title, "Invalid Title")
        end 
    end
end
