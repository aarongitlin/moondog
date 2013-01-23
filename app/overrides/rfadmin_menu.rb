Deface::Override.new(:virtual_path => "refinery/admin/_menu", 
                     :name => "rfadmin_menu", 
                     :surround => "code[erb-loud]:contains('refinery.url_for(plugin.url)')",
                     :text => "<% if plugin.title != 'Images' && plugin.title != 'Files' %><% render_original %><% end %>")
Deface::Override.new(:virtual_path => "refinery/admin/_menu", 
                     :name => "rm_reorder_rfadmin_menu", 
                     :remove => "code[erb-silent]:contains('active.in_menu.many?')",
                     :closing_selector => "code[erb-silent]:contains('end')")
