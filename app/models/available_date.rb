class AvailableDate

  include DataMapper::Resource

  property :id, Serial
  property :date, Date

  has n, :spaces, :through => Resource


end
