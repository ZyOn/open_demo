class Page < ActiveRecord::Base
	has_attached_file :image, 
                      :styles => { :medium => "250X250>",
                                 	:thumb => "100x100>" }

end
