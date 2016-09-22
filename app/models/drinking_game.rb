class DrinkingGame < ActiveRecord::Base
  def self.search(search)
    where("name LIKE ? OR supplies LIKE ?", "%#{search}%", "%#{search}%")
  end
end
