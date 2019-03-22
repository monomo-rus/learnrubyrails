class Answer < ApplicationRecord
	validates :title, presence: true
end

# Answer.create(title: !nil).valid?