# -- Patch will_paginate for compatibility with kaminari
if defined?(WillPaginate)
  module WillPaginate
    module ActiveRecord
      module RelationMethods
        alias_method :per, :per_page
        alias_method :num_pages, :total_pages
      end
    end 
  end
end


# -- Register refinery_user? as a helper method
# For some reason this is missed by refinerycms-authentication-2.0.3/lib/refinery/authenticated_system.rb
ApplicationController.class_eval do
  helper_method :refinery_user?
end
