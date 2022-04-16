class Users < ApplicationRecord

    validates :name, presence: true
    validates :password, length: {minimum: 6, allow_nil: true}

    attr_reader :password #defines a getter
    #attr_writer #defined a setter
    #attr_accessor defines both getter and setter

    after_initialize :ensure_session_token #callback whenever user is created or loaded from DB
    
    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def self.generate_session_token
        SecureRandom.urlsafe_base64
    end

    def ensure_session_token
       self.session_token ||= self.class.generate_session_token 
    end

    def reset_session_token
        self.session_token = self.class.generate_session_token
        # update DB with updated session token
        self.save!
        # is used to update session[:sessoon_token]
        self.session_token
    end

end