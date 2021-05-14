class Post < ApplicationRecord
    #validates :username, presence: true

    belongs_to :user, required: true

end
