module CharactersHelper
  def character_tree_view (characters, rootNode)
    characters.map do |character, children|
          content_tag(:ul) do
                      if(rootNode)
                        content_tag(:li, :id => "rootNode", :class => "character_tree_view") do
                          render(character) + character_tree_view(children,false)
                        end
                      else
                        content_tag(:li, :class => "character_tree_view") do
                          render(character) + character_tree_view(children,false)
                        end
                      end
                  end
        end.join.html_safe
  end
end
