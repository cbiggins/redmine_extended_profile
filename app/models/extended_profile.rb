class ExtendedProfile < ActiveRecord::Base
    belongs_to :user

    validates_presence_of :user
    validates_uniqueness_of :user_id

    def personal_id=(arg)
        if arg.empty?
            arg = nil
        end
        write_attribute(:personal_id, arg)
    end
    
    # def skype_name=(arg) 
    #     if arg.empty? || arg == ''
    #         arg = nil
    #     end
    #     write_attribute(:skype_name, arg)
    # end
    # 
    # def mobile_phone=(arg) 
    #     if arg.empty? || arg == ''
    #         arg = nil
    #     end
    #     write_attribute(:mobile_phone, arg)
    # end
    # 
    # def home_phone=(arg) 
    #     if arg.empty? || arg == ''
    #         arg = nil
    #     end
    #     write_attribute(:home_phone, arg)
    # end
    # 
    # def work_phone=(arg) 
    #     if arg.empty? || arg == ''
    #         arg = nil
    #     end
    #     write_attribute(:work_phone, arg)
    # end
    # 
    # def work_phone_ext=(arg) 
    #     if arg.empty? || arg == ''
    #         arg = nil
    #     end
    #     write_attribute(:work_phone_ext, arg)
    # end
    # 
    # def fax_number=(arg) 
    #     if arg.empty? || arg == ''
    #         arg = nil
    #     end
    #     write_attribute(:fax_number, arg)
    # end

end
