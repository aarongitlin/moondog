module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'

      attr_accessible :title, :linkid, :frontpage, :position

      acts_as_indexed :fields => [:title, :linkid]

      validates :title, :presence => true, :uniqueness => true
	  validates :linkid, :presence => true, :uniqueness => true
	  
	  scope :displayed, where(:frontpage => true)
	  default_scope order('position desc')
    end
  end
end
