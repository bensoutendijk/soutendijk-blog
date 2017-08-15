module ArticlesHelper
  


  
  def article_html (article, offset=0, fullwidth=true)
    if fullwidth
      size = 12
    else
      size = 6
    end
    pid = article.id
    offset = pid - 1 - offset
    # Store data for offset article
    id = @article[offset].id
    title = @article[offset].title
    thumbnail_file_name = @article[offset].thumbnail_file_name
    average_color = @article[offset].average_color
    # Create the article html
    link_to article_path(article) do
      content_tag :div, :class => "col-md-#{size} homepage-thumbnail text-center", style: "background: #{average_color};" do
        content_tag :h2, "#{id}", :class => "thumbnail-hover"
        if !thumbnail_file_name.nil?
          thumbnail_file_name.gsub(/.jpg/, ".png")
          image_tag "articles/#{id}/homepage/#{thumbnail_file_name}"
        end
      end
    end
  end
end
