class Movie < ApplicationRecord
    mount_uploader :poster, PosterUploader # Tells rails to use this uploader for this model.
    validates :title, presence: true # Make sure the title is present.
end
