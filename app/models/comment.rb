class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  def user_attributes=(user_attribute_hash)
    if user_attribute_hash["username"] != ""
      self.user = User.find_or_create_by(username: user_attribute_hash["username"])
    end
  end
end
