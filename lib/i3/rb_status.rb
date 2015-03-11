require 'version'
require 'dbus'
module I3
  module RbStatus
    SERVICE = "org.i3wm.rbstatus"
    OBJECT = "/org/i3wm/Listener"
    INTERFACE = "org.i3wm.SampleRbStatus"
    is_versioned

    def self.system_bus
      DBus.system_bus
    end

    def self.session_bus
      DBus.session_bus
    end

    def self.listen
      bus = self.session_bus
      service = bus.request_service("org.i3wm.rbstatus")
      exported_obj = Listener.new("/org/i3wm/Listener")
      service.export(exported_obj)
      puts "starting listener"
      loop = DBus::Main.new
      loop << bus
      loop.run
    end
  end
end
require 'i3/rb_status/listener'

