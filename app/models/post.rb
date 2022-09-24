class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
    # validate :title_must_be_true_facts

    # def title_must_be_true_facts
    #     title.include?("Won't Believe", "Secret", "Top [number]", "Guess")
    # end
end
