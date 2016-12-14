class Restaurant < ActiveRecord::Base
    has_many :ratings, :dependent => :destroy
end
