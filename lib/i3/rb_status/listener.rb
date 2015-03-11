require 'dbus'
module I3
  module RbStatus
    class Listener < DBus::Object
      dbus_interface RbStatus::INTERFACE do
        dbus_method :hello, "in name:s, in block:s" do |name, block|
          puts "#{name} => #{block}"
        end
      end
    end
  end
end



