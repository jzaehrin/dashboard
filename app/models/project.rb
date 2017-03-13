class Project < ApplicationRecord
  belongs_to :user

  enum status: [ :in_progress, :canceled, :finished ]
end
