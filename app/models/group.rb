class Group < ApplicationRecord
    attr_accessor
    has_many :users
    # this will be called to create the list of randomely generated nameDraw 
    # A new hash, where an Id of a user, will point to the Id of a another user


    def sayHi
      puts "hello"
    end

    # Users are coming in null so they need to be nil
    def show_Users
      theUsers = User.select{ |user| user.group_id == self.id}
      theUsers
    end
    
    # swapped_hash = self.users.each_with_object({}) do |key, hash|
    # hash[key]





end
