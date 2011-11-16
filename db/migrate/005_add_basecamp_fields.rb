class AddBasecampFields < ActiveRecord::Migration

    def self.up
        add_column :extended_profiles, :skype_name, :string, :null => true
        add_column :extended_profiles, :mobile_phone, :integer, :null => true
        add_column :extended_profiles, :work_phone, :integer, :null => true
        add_column :extended_profiles, :work_phone_ext, :integer, :null => true
        add_column :extended_profiles, :home_phone, :integer, :null => true
        add_column :extended_profiles, :fax_number, :integer, :null => true

        remove_column :extended_profiles, :company_site
        remove_column :extended_profiles, :project_id
        remove_column :extended_profiles, :personal_site
        remove_column :extended_profiles, :blog
        remove_column :extended_profiles, :facebook
        remove_column :extended_profiles, :twitter
        remove_column :extended_profiles, :linkedin
    end

    def self.down
        remove_column :extended_profiles, :skype_name
        remove_column :extended_profiles, :mobile_phone
        remove_column :extended_profiles, :work_phone
        remove_column :extended_profiles, :work_phone_ext
        remove_column :extended_profiles, :home_phone
        remove_column :extended_profiles, :fax_number

        add_column :extended_profiles, :company_site, :string
        add_column :extended_profiles, :project_id, :string
        add_column :extended_profiles, :personal_site, :string
        add_column :extended_profiles, :blog, :string
        add_column :extended_profiles, :facebook, :string
        add_column :extended_profiles, :twitter, :string
        add_column :extended_profiles, :linkedin, :string
    end

end
