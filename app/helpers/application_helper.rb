module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end
  def sortable (title = nil, column)
    title ||= column.tittleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to t(title), params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
  end
end
