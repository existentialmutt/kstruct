require 'kstruct/version'

module KStruct

  def new *attrs
    Class.new do
      attr_accessor *attrs
      define_method :initialize do |**attrs|
        attrs.each do |attr, val|
          self.send("#{attr}=", val)
        end
      end
    end

  end
  module_function :new

end