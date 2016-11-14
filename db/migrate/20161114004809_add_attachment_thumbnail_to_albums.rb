class AddAttachmentThumbnailToAlbums < ActiveRecord::Migration
  def self.up
    change_table :albums do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :albums, :thumbnail
  end
end
