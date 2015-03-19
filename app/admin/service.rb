ActiveAdmin.register Service do
 
form do |f|
  f.input :name
  f.input :description
  f.input :service_type, :as => :select,:collection => ["Paid", "default"],:include_blank => false
 f.file_field :avatar
  f.actions do 
   f.action :submit, :as => :button
   f.action :cancel, :as => :link
   end
end
permit_params :name, :description, :service_type, :avatar
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
