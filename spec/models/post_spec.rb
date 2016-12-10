require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should have_attached_file(:picture) }
  it { should validate_attachment_presence(:picture) }
  it { should validate_attachment_content_type(:picture).
                allowing('image/jpg', 'image/jpeg', 'image/png', 'image/gif') }
  it { should validate_attachment_size(:picture).
                less_than(2.megabytes) }
end
