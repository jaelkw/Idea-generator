class User < ActiveRecord::Base
    has_many :ideaposts
end
