UsersController.class_eval do
  before_filter :get_addresses, :only => [:show, :edit]
  
  private
    def get_addresses
      load_object
      @user.bill_address ||= Address.new(:country_id => default_country_id)
      @user.ship_address ||= Address.new(:country_id => default_country_id)
    end
    
    def default_country_id
      Spree::Config[:default_country_id]
    end
end