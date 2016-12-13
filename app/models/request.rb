class Request

  include DataMapper::Resource

  property :id, Serial
  property :status, String, :default => "Not confirmed"

  belongs_to :user
  belongs_to :space

end