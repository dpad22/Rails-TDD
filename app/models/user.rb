class User < ActiveRecord::Base
    validates :fname, :presence => true
    validates :lname, :presence => true
    validates :email, uniqueness: true, :presence => true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
end
