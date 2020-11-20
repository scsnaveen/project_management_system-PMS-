class Project < ApplicationRecord
	belongs_to :user
	enum project_type: [ :Training, :Project ]

end
