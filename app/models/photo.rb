class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "400x300>", :thumb => "100x100>", original: "100%" },
    :storage => :s3, 
    :s3_credentials => "#{Rails.root}/config/s3.yml", 
    :path => "/:attachment/:id/:style/:filename"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  
end
