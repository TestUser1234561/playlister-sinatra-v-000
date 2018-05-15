class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :genres

  def slug
      return self.name.gsub!(/\s/,'-').downcase
  end
end
