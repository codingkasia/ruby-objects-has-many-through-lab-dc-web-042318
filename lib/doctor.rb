class Doctor
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @appointments = []
    end

    def add_appointment(appointment)
        @appointments << appointment
        appointment.doctor = self
    end

    def appointments
        @appointments
    end

    def patients
        #go through a list of patients and tell me
        #which patient belongs to which appointment
        self.appointments.map {|appointment| appointment.patient }
    end


end
