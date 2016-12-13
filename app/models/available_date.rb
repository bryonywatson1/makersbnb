class AvailableDate

  include DataMapper::Resource

  property :id, Serial
  property :date, Date

end
