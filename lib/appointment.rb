class Appointment
  attr_accessor :patient, :doctor, :date
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = date
    
    self.class.all << self
  end

end