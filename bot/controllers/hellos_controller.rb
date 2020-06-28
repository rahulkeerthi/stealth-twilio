class HellosController < BotController

  def say_hello
    send_replies
    step_to state: 'ask_name'
  end

  def ask_name
    send_replies
    update_session_to state: 'get_name'
  end

  def get_name
    if current_message.message == 'Rahul'
      step_to state: 'say_wow'
    else
      send_replies
      step_to flow: 'goodbye', state: 'say_goodbye'
    end
  end

  def say_wow
    send_replies
    step_to flow: 'goodbye', state: 'say_goodbye'
  end
end
