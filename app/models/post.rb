class Post < ApplicationRecord
	mount_uploader :question_image, QuestionImageUploader
end
