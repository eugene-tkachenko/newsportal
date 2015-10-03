class Ckeditor::Picture < Ckeditor::Asset

  has_attached_file :data,
                    storage: :dropbox,
                    dropbox_credentials: Rails.root.join("config/dropbox.yml"),
                    :path => ":attachment/:id/:style.:extension",
                    :dropbox_visibility => 'public',
                    dropbox_options: {
                        environment: ENV["RACK_ENV"],
                        path: ":attachment/:id/:style.:extension"
                    }

  validates_attachment_presence :data
  validates_attachment_size :data, :less_than => 2.megabytes
  validates_attachment_content_type :data, :content_type => /\Aimage/

  def url_content
    url(:original)
  end
end
