ActiveAdmin.register Employee do
  
  #form partial: 'new'
form do |f|
  f.input :user_id
  f.select :region_id, Region.all.collect {|a| [a.region_name, a.id]}
  f.actions do
   f.action :submit, :as => :button
   f.action :cancel, :as => :link
 end
#f.number_field :role
#f.number_field :user
#  f.input :service_type, :as => :select,:collection => ["Paid", "default"],:include_blank => false
end
permit_params :user_id, :region_id

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
