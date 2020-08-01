RailsAdmin.config do |config|
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  # config.authenticate_with do
  #   authenticate_or_request_with_http_basic('Site Message') do |username, password|
  #     username == 'amaia' && password == 'amaia'
  #   end
  # end

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.model City do
    visible true
    field :name
    field :state_id, :enum do
      enum do
        State.all.map { |v| [v.region, v.id] }
      end
    end

    field :units
  end

  config.model CityUnit do
    visible false
  end

  config.model Unit do
    visible true
    field :specific_location
    field :unit_type
    field :type
    field :city
    field :price_from
    field :price_to
    field :image
    field :image_galleries
    field :pre_selling
    field :ready_for_occupancy
    field :unit_size_from
    field :unit_size_to
    field :project_concept, :ck_editor
    field :location_and_vicinity, :ck_editor
    field :site_development_plan, :ck_editor
    field :units_and_floor_plan, :ck_editor
    field :amenities_and_facilities, :ck_editor
    field :model_unit, :ck_editor
  end

  config.model ImageGallery do
    visible :false
    field :unit_id, :enum do
      enum do
        Unit.all.map { |v| ["Amaia #{v.type.name} #{v.specific_location}", v.id] }
      end
    end
    field :image
  end

  config.model Promo do
    field :unit_id, :enum do
      enum do
        Unit.all.map { |v| ["Amaia #{v.type.name} #{v.specific_location}", v.id] }
      end
    end
    field :image
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      except %w[Inquiry]
    end
    # export
    bulk_delete do
      except %w[Inquiry]
    end
    show
    edit do
      except %w[Inquiry]
    end
    delete do
      except %w[Inquiry]
    end
    show_in_app do
      except %w[City State Inquiry]
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
