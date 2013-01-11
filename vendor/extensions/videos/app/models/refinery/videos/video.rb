module Refinery
  module Videos
    class Video < Refinery::Core::BaseModel
      self.table_name = 'refinery_videos'

      attr_accessible :title, :linkid, :frontpage, :position

      acts_as_indexed :fields => [:title, :linkid]

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
