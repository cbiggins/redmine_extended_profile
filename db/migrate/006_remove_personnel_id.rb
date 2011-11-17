class RemovePersonnelId < ActiveRecord::Migration

    def self.up
        remove_column :extended_profiles, :personal_id
    end

    def self.down
        remove_column :extended_profiles, :personal_id, :integet
    end

end
