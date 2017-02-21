# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.delete_all

File.open("#{Rails.root}/public/code_challenge_question_dump.csv") do |f|
    # remove header line 
    f.drop(1).each do |record|
        selection, distractor2, distractor3 = record.chomp.split(',').map(&:strip)
         question, answer, distractor1 = selection.chomp.split('|').map(&:strip)
         category = !question.index('+').nil? ? 'Addition' : 
            !question.index('-').nil? ? 'Subtraction' :
            !question.index('*').nil? ? 'Multiplication' : 'Division'  
        Question.create!(:question => question, :answer => answer, :distractor1 => distractor1, :distractor2 => distractor2, :distractor3 => distractor3 )
    end
end
