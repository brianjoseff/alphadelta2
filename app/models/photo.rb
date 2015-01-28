class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "400x300>", :thumb => "100x100>", original: "100%" },
    :storage => :s3, 
    :s3_credentials => Proc.new{|a| Rails.env.production? ? a.instance.prod_s3_credentials :  a.instance.s3_credentials}, 
    :path => "/:attachment/:id/:style/:filename"
  


  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def prod_s3_credentials
     {:bucket => "alphadelta-pro", :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET_KEY']}
  end
  def s3_credentials
      {:bucket => "alphadelta-dev", :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET_KEY']}
  end

  
end
