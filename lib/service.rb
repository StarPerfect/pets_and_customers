class Service
  attr_reader :service, :charge

  def initialize(service, charge)
    @service = service
    @charge = Charge.new(charge)
  end
end
