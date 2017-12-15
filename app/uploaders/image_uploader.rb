class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process convert: 'png'
  process tags: ['post_pictures']

  version :standard do
    process resize_to_fill: [800, 600, :north]
  end

  version :thumbnail do
    resize_to_fit(80, 80)
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
