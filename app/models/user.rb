class User < ActiveRecord::Base
    has_secure_password
    

    validates :password, presence: true
    validates :email, presence: true, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :password, length: {minimum: 5, maximum: 14 }
    
    before_save :prep_email

   def prep_email
      self.email.downcase!
      self.email.strip!
   end
  
    def self.authenticate_with_credentials(email,password)
        user = User.find_by_email(email.strip.downcase)

            if user && user.authenticate(password)
                user
            else
                nil
            end
    end    
end
