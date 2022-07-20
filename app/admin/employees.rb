ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :email, :phone, :dob, :address, :role, :joining_date, :department_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :email, :phone, :dob, :address, :role, :joining_date, :department_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs :department_id, :name, :email, :phone
    f.submit "Create"
  end

  permit_params :name, :email, :phone, :dob, :address, :role, :joining_date, :department_id
end
