class Post < ApplicationRecord
  has_attached_file :picture, styles: { original: "1000x1000>", thumb: "300x300>" }

  validates_attachment :picture, presence: true,
    content_type: { content_type: /^image\/(png|gif|jpe?g)/ },
    size: { less_than: 2.megabytes }

end
