Deface::Override.new(:virtual_path => "spree/layouts/admin", 
                     :name => "refinery_admin_head", 
                     :insert_before => "head", 
                     :text => "  <%= render 'refinery/admin/head' %>"
                    )

Deface::Override.new(:virtual_path => "spree/layouts/admin", 
                     :name => "refinery_admin_menu", 
                     :replace => "div#header", 
                     :text => "<%= render '/refinery/site_bar' %>
                               <header id='header'>
                                 <%= render 'refinery/admin/menu' %>
                               </header>"
                    )
