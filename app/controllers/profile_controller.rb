class ProfileController < Spree::BaseController
  before_filter :load_info, :only => [:show, :edit]
  
  def show
    
  end
  
  def edit
    
  end
  
  private
    def load_info
      @user = current_user
      @user.bill_address ||= Address.new(:country_id => default_country_id)
      @user.ship_address ||= Address.new(:country_id => default_country_id)
    end
    
    def default_country_id
      Spree::Config[:default_country_id]
    end
end