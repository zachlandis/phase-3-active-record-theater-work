class Audition < ActiveRecord::Base
  belongs_to :role

    def role
        Audition.character_name
    end

    def call_back
        update(hired: true)
    end
end