if Spree::Country.find_by_name 'Australia'
  puts "[db:seed] Skipping spree"
else
  Spree::Core::Engine.load_seed if defined?(Spree::Core)
  Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
end


# -- Refinery engines
Refinery::Pages::Engine.load_seed
Refinery::Blog::Engine.load_seed
Refinery::Portfolio::Engine.load_seed
Refinery::Inquiries::Engine.load_seed
Refinery::BeerLocations::Engine.load_seed


# -- Spreefinery
# Grant Refinery roles to any Spree admins
admin_role = Spree::Role.find_by_name('admin')
refinery_role = Spree::Role.where(:name => 'Refinery').first_or_create!
refinery_superuser_role = Spree::Role.where(:name => 'Superuser').first_or_create!

admin_role.users.uniq.each do |user|
  [refinery_superuser_role, refinery_role].each do |role|
    if user.has_role? role.name
      puts "[db:seed] Skipping Refinery #{role.name} role for user #{user.email}"
    else
      user.roles << role
    end
  end
end
