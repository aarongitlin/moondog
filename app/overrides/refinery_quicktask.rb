Deface::Override.new(:virtual_path => "refinery/admin/dashboard/_actions", 
                     :name => "rm_quick_link", 
                     :remove => "code[erb-silent]:contains('refinery_files')",
                     :closing_selector => "code[erb-silent]:contains('end')")
                     
Deface::Override.new(:virtual_path => "refinery/admin/dashboard/_actions", 
                     :name => "rm_quick_img", 
                     :remove => "code[erb-silent]:contains('refinery_images')",
                     :closing_selector => "code[erb-silent]:contains('end')")
