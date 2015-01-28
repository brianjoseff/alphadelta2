class Adelphian < ActiveRecord::Base
  has_attached_file :pdf,   :storage => :s3,
                            :s3_credentials => Proc.new{|a| Rails.env.production? ? a.instance.prod_s3_credentials :  a.instance.s3_credentials}, 
                            :path => "/:attachment/:id/:filename"
                            
  # :s3_credentials => "#{Rails.root}/config/s3.yml", 
  validates_attachment_content_type :pdf, :content_type => ['application/pdf']
  #Rails.env.production? ? bucket: "readthis-prod" : bucket: "readthis-dev"
  def prod_s3_credentials
     {:bucket => "alphadelta-pro", :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET_KEY'] }
  end
  def s3_credentials
      {:bucket => "alphadelta-dev", :access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET_KEY']}
  end
end
