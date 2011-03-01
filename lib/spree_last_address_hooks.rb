class SpreeLastAddressHooks < Spree::ThemeSupport::HookListener
  insert_after :account_summary do
    "<div id='addresses'><%= render 'profile/show', :remote => true %></div><%= javascript_include_tag  'checkout', '/states' %>"
  end
end