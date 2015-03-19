ActiveAdmin.register Order do
 
form do |f|
  f.inputs
  f.inputs do
    f.has_many :pictures do |p|
      p.input :heading
      p.input :description
      p.input :avatar  
    end
  end
  f.submit 
end
permit_params :customer_id, :service_id, :employee_id, :service_date, :relative_id, :user_commit, :employee_comment, :order_rating, :feedback, pictures_attributes: [:avatar, :description, :heading] 
 
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
