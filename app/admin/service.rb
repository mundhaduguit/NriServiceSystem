ActiveAdmin.register Service do
  
  form partial: 'new'
#form do |f|
#  f.input :service_type, :as => :select,:collection => ["Paid", "default"],:include_blank => false
#end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
