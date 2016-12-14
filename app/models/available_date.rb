class AvailableDate

  include DataMapper::Resource

  property :id, Serial
  property :date, Date

  has n, :available_date_spaces
  has n, :spaces, :through => :available_date_spaces
  has n, :requests


end
