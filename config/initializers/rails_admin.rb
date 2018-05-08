RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

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

      import
      ## With an audit adapter, you can add:
      # history_index
      # history_show

    end

    config.excluded_models << "Club"
    config.excluded_models << "FuturePlan"

    config.model 'Scholarship' do
      list do
        sort_by :name
        field :name do
          sort_reverse false
        end
        field :students
      end
    end

  config.model 'Student' do
    object_label_method do
      :custom_label_method
    end
    list do
      sort_by :lastname
      field :lastname do
        sort_reverse false
        label "Last Name"
      end
      field :firstname do
        label "First Name"
      end
      field :id_number do
        label "ID #"
      end
      field :photo
      field :cte_programs do
        label "CTE program"
      end
      field :scholarships
      field :queued_at
      field :advisory
      field :counselor

      exclude_fields :future_plans, :clubs
    end
    create do
      field :lastname do
        label "Last Name"
      end
      field :firstname do
        label "First Name"
      end
      field :id_number do
        label "ID #"
      end
      field :photo
      field :cte_programs do
        label "CTE program"
      end
      field :photo
      field :scholarships
      field :queued_at
      field :advisory
      field :counselor

      exclude_fields :future_plans, :clubs
    end
  end
end
