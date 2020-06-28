class FlowMap

  include Stealth::Flow

  flow :hello do
    state :say_hello
    state :ask_name
    state :get_name, fails_to: :ask_name
    state :say_wow
  end

  flow :goodbye do
    state :say_goodbye
    state :ask_restart
    state :get_restart, fails_to: :ask_restart
    state :say_hello_again
  end

  flow :catch_all do
    state :level1
  end

end
