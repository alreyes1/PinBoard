class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, styles: { medium: "300x300>" }, source_file_options: { all: '-auto-orient' }
	
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
