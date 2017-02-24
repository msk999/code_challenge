class Question < ApplicationRecord

    enum operators: [:Addition, :Subtraction, :Multiplication, :Division]
    
    validates :answer, numericality: true
    validates :distractor1, numericality: true
    validates :distractor2, numericality: true , allow_nil: true, allow_blank: true
    validates :distractor3, numericality: true, allow_nil: true, allow_blank: true

    scope :where_operator, lambda {|operator| where("questions.question LIKE ?", "%#{operator}%") }
    scope :where_answer, lambda {|answer| where("questions.answer = ?",  "#{answer}") }
  
end
