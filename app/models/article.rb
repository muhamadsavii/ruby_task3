class Article < ActiveRecord::Base
	  scope :status_active, -> {where(status: 'active')}

	  validates :title, presence: true,

                            length: { minimum: 5 }

        validates :content, presence: true,

                            length: { minimum: 10 }

        validates :status, presence: true
end
