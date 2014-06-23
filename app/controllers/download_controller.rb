class DownloadController < ApplicationController
  def pdf
    send_file Rails.root.join('private', 'Alpha Delta Governing Documents.pdf'), :type=>"application/pdf", :x_sendfile=>true
  end
end
