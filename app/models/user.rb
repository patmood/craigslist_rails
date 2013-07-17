class User < ActiveRecord::Base
  attr_accessible :email, :password
  has_many :posts

    include BCrypt

    def password
      @password ||= Password.new(password_hash)
    end

    def password=(new_password)
      @password = Password.create(new_password)
      self.password_hash = @password
    end

    def authenticate(password)
      return self if self.password == password
    end
end
