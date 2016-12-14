class Request

  include DataMapper::Resource

  property :id, Serial
  property :status, String, :default => "Not confirmed"
  property :date, Date

  belongs_to :user
  # belongs_to :space

  belongs_to :space

end
