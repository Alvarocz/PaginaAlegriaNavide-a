module VideosHelper
  def embed(url)
    url = url.to_s
    if url.include? "youtu"
      youtube_id = url.split("=").last
      content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}", frameborder: "0")
    end
  end
end
