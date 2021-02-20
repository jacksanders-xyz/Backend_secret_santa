class Group < ApplicationRecord
    attr_accessor
    has_many :users

    def sayHi
      puts "hello"
    end

    # Users are coming in null so they need to be nil
    def show_Users
      theUsers = User.select{ |user| user.group_id == self.id}
      theUsers
    end



  def draw_and_send 
    containerArray = []
    theUsers = User.select{ |user| user.group_id == self.id}
      def shuffler theUsers
        numberSet = (0..theUsers.length - 1).to_a.shuffle.take(theUsers.length)
        
        numberSet.each_with_index do |element, index|
          if element === index 
            break shuffler (theUsers) 
          else
            nil
          end
        end
      numberSet
      end 
      numberSet = shuffler theUsers
      theUsers = theUsers.each_with_index do |element, index| 
            containerArray << element = {
              id: element[:id],
              first_name: element[:first_name],
              last_name: element[:last_name],
              email_address: element[:email_address],
              group_id: element[:group_id],
              interests: element[:interests],
              created_at: element[:created_at],
              updated_at: element[:updated_at],
              their_pick: theUsers[numberSet[index]]
            } 
      end 
      pp containerArray
  end
    



end



