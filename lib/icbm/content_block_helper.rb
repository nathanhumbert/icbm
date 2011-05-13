module ContentBlockHelper
  def block_content_for(block_name, &default)
    content_block = ContentBlock.find_by_key(block_name).try(:value)
    content_block = capture(&default) if content_block.nil?
    content = content_tag(:div, content_block.html_safe, :id => "content_block_#{block_name}", :class => 'content_block')
    return content
  end
end
