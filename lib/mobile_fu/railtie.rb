require 'mobile_fu/controller_methods'
require 'mobile_fu/helper_methods'
require 'mobile_fu/mobilized_styles'

module MobileFu
  class Railtie < Rails::Railtie
    initializer 'mobile_fu.initialize' do
      ActiveSupport.on_load(:action_controller) do 
        extend MobileFu::ActionController::ClassMethods
      end
      
      ActiveSupport.on_load(:action_view) do
        include MobileFu::ActionView::HelperMethods
        include MobileFu::ActionView::MobilizedStyles
        alias_method_chain :stylesheet_link_tag, :mobilization
      end
    end
  end
end