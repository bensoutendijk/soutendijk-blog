class RemoveColumnsFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :first_name
    remove_column :profiles, :last_name
    remove_column :profiles, :job_title
    remove_column :profiles, :phone_number
    remove_column :profiles, :contact_email
    remove_column :profiles, :description
  end
end
