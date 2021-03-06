class Genre < ActiveRecord::Base
  has_many :albums
  has_attached_file :thumbnail, styles: { large: "1200x1000#", medium: "600x500#" }
validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

end
