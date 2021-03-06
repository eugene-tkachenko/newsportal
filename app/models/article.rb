class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_attached_file :main_image,
                    storage: :dropbox,
                    dropbox_credentials: Rails.root.join("config/dropbox.yml"),
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    :dropbox_visibility => 'public',
                    dropbox_options: {
                        environment: ENV["RACK_ENV"],
                        path: proc{|style| "#{style}/#{id}_#{main_image.original_filename}"}
                    }
  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\Z/
  has_and_belongs_to_many :categories
  belongs_to :user
  accepts_nested_attributes_for :user, :categories

  validates :title, :content, presence: true
end
