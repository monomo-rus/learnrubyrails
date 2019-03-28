class Answer < ApplicationRecord

	# Валидация примерно на такой запрос Answer.create(title: !nil).valid?

	validates :title, presence: true

	
end