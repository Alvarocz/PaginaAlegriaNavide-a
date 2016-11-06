class ImagenUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file

  def store_dir
    "public/imagenes/galeria/#{model.class.to_s.underscore}_#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg png)
  end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end
end
