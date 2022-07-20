json.extract! employee, :id, :name, :email, :phone, :dob, :address, :role, :joining_date, :department_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
