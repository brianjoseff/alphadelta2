class AddAttachmentPdfToAdelphians < ActiveRecord::Migration
  def self.up
    change_table :adelphians do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :adelphians, :pdf
  end
end
