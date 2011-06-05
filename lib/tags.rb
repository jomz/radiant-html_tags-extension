module Tags
  include Radiant::Taggable
  include ActionView::Helpers::TagHelper
  
  text_level = %w(span a rt rp dfn abbr q cite em time var samp i b sub sup small strong mark ruby ins del bdi bdo s kbd wbr code)
  grouping = %w(br hr figcaption figure p ol ul li div pre blockquote dl dt dd)
  forms = %w(fieldset meter legend label textarea form select optgroup option output button datalist keygen progress)
  sections = %w(body aside address h1 h2 h3 h4 h5 h6 section header nav article footer hgroup)
  tabular = %w(table colgroup caption tr td th tbdoy thead tfoot)
  embeds = %w(map object iframe canvas audio video)
  
  self_closing = %w(img area embed param source col input)
  
  (text_level + grouping + forms + sections + tabular + embeds + self_closing).each do |elem|
    tag elem do |tag|
      content_tag elem, tag.expand, tag.attr
    end
  end
  
end