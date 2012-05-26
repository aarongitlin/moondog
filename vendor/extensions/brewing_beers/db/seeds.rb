if defined?(::Refinery::User)
  ::Refinery::User.all.each do |user|
    if user.plugins.where(:name => 'refinerycms-brewing_beers').blank?
      user.plugins.create(:name => 'refinerycms-brewing_beers',
                          :position => (user.plugins.maximum(:position) || -1) +1)
    end
  end
end
