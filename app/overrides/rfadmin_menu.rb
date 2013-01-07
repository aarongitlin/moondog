Deface::Override.new(:virtual_path => "refinery/admin/_menu", 
                     :name => "rfadmin_menu", 
                     :surround => "code[erb-loud]:contains('refinery.url_for(plugin.url)')",
                     :text => "<% if plugin.title != 'Images' && plugin.title != 'Files' && plugin.title != 'Settings' %><% render_original %><% end %>")
