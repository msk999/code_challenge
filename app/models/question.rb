class Question < ApplicationRecord
    validates :answer, numericality: true
    validates :distractor1, numericality: true
    validates :distractor2, numericality: true , allow_nil: true, allow_blank: true
    validates :distractor3, numericality: true, allow_nil: true, allow_blank: true
end
