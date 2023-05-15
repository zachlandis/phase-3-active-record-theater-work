class Role
    has_many :auditions

    def actors
        auditions.map do |a|
            a.actor
    end

    def locations
        auditions.map {|a| a.location}
    end

    def lead 
        auditions.find_by(hired: true) || "no actor has been hired for this role"
    end

    def understudy
        auditions.find_by(hired: true).second || "no actor has been hired for this role"
    end


end