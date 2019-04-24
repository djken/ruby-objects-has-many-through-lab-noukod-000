class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_meal(waiter, total, tip=0)
      Meal.new(waiter, self, total, tip)
  end

  def new_appointment(date, patient, appointment)
     appointment = Appointment.new(patient, self, date)
     @appointments << appointment
     appointment
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end
