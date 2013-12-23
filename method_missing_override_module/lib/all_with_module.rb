module AllWith
  def method_missing m, *args
    if m.to_s.start_with? 'all_with_'
      attribute = m[9..-1]
      if self.public_method_defined?(attribute)
        Person::PEOPLE.find_all do |person|
          person.send(attribute).include?(args[0])
        end
      else
        raise ArgumentError.new "Can't find #{attribute}"
      end
    else
      super
    end
  end
end