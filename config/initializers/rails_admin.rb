RailsAdmin.config do |config|

  # RailsAdmin is inheriting from ApplicationController
  config.parent_controller = 'ApplicationController'
  
  ### gems integration
  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)
  
  ## == Cancan ==
  config.authorize_with :cancan
  
  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration


  config.main_app_name = ["Myinth", "Memory"]
  
  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
