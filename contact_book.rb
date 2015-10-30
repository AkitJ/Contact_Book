class Contacts

  attr_accessor :relation, :first_name, :middle_name, :last_name, :c_number, :email,
    :street_address, :city, :state, :zip, :country, :address

    def initialize(relation: nil, first_name: nil, middle_name: nil, last_name: nil,
      c_number: nil, email: nil, street_address: nil, city: nil, state: nil, zip: nil,
      country: nil)
      @relation = relation
      @first_name = first_name
      @middle_name = middle_name
      @last_name = last_name
      @c_number = c_number
      @email = email
      @street_address = street_address
      @city = city
      @state = state
      @zip = zip.to_i
      @country = country
    end

    def full_name
      name = [@first_name, @middle_name, @last_name].compact.join(" ")
      puts name
    end

    def address
      address = [street_address, city, state, zip, country].compact.join", "
      puts address
    end

    def number
      number = @c_number.to_i
      puts number
    end

    def info
      puts "Information:"
      puts "Relation: #{relation}"
      print "Name: "
      print "#{full_name}"
      print "Address: "
      print "#{address}"
      print "Number: "
      print "#{number}"
      puts "Email: #{email}"
    end

    def contact_info
      puts "Contact Information:"
      puts "Email: #{email}"
      print "#{number}"
    end

    def n1
      n1 = first_name
    end

    def add_info
      puts "What is this person's first name?"
      sfname = gets.chomp
      sfname.capitalize!
      self.first_name = sfname
      puts "What is #{n1}'s middle name? If n/a press enter."
      smname = gets.chomp
      smname.capitalize!
      if smname.length > 1
        self.middle_name = smname
      end
      puts "What is #{n1}'s last name? If n/a press enter."
      slname = gets.chomp
      slname.capitalize!
      if slname.length > 1
        self.last_name = slname
      end
      puts "What is #{n1}'s relation to you? Friend, family, enemy, etc. If n/a press enter."
      srelation = gets.chomp
      srelation.capitalize!
      if srelation.length > 1
        self.relation = srelation
      end
      puts "What is #{n1}'s street address? If n/a press enter."
      ssa = gets.chomp
      if ssa.length > 1
        self.street_address = ssa
      end
      puts "What city is #{n1} residing in? if n/a press enter."
      scity = gets.chomp
      scity.capitalize!
      if scity.length > 1
        self.city = scity
      end
      puts "What state does #{n1} live in? If n/a presss enter."
      sstate = gets.chomp
      if sstate.length == 2
        sstate.upcase!
      else
        sstate.capitalize!
      end
      if sstate.length > 1
        self.state = sstate
      end
      puts "What is #{n1}'s zip code? If n/a press enter."
      szip = gets.chomp
      szip.to_i
      if szip.length > 1
        self.zip = szip
      end
      puts "What country is #{n1} residing in? If n/a press enter."
      scountry = gets.chomp
      if scountry.length == 2
        scountry.upcase!
      else
        scountry.capitalize!
      end
      if scountry.length > 1
        self.country = scountry
      end
      puts "What is #{n1}'s phone number? If n/a press enter."
      snumber = gets.chomp
      snumber.to_i
      if snumber.length > 1
        self.c_number = snumber
      end
      puts "What is #{n1}'s Email address? If n/a press enter."
      semail = gets.chomp
      if semail.length > 1
        self.email = semail
      end
    end

end

ronit = Contacts.new
ronit.relation = "sibling"
ronit.first_name = "Ronit"
ronit.last_name = "Jain"
ronit.c_number = 1234
ronit.email = "rj@gmail.com"
ronit.street_address = "321 Rome Rd"
ronit.city = "Hilliard"
ronit.state = "Ohio"
ronit.zip = 43026
ronit.country = "United States of America"
ronit.info
ronit.contact_info

akit = Contacts.new
akit.add_info
akit.info
