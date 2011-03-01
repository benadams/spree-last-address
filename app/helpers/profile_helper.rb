module ProfileHelper
  def available_countries
    return Country.all unless zone = Zone.find_by_name(Spree::Config[:checkout_zone])
    zone.country_list
  end
end