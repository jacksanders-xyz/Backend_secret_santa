class Group < ApplicationRecord
    has_many :users




    # this will be called to create the list of randomely generated nameDraw 
    # A new hash, where an Id of a user, will point to the Id of a another user

    def self.draw_and_send
      # swapped_hash = self.users.each_with_object({}) do |key, hash|
      # hash[key]
    end






end
