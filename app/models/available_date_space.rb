class AvailableDateSpace
  include DataMapper::Resource

  belongs_to :space, :key => true
  belongs_to :available_date, :key => true

  has n, :requests

end
