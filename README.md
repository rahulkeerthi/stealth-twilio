### Setup

This setup assumes you have redis and ngrok installed. To boot this bot locally, use the following CLI commands:

1. `bundle install`
2. `redis-server`
3. `ngrok http 5000`
4. `bundle exec stealth s`

This runs a Redis server, the Stealth server and an ngrok tunnel to your system, allowing you to use web hooks (Twilio or otherwise) to trigger chatbot flows. The chatbot is currently set up to use [Twilio](https://www.twilio.com/console/), you can add a `.env` file to your app root folder, with the following structure:

```
export TWILIO_ACCOUNT_SID=[Add info here]
export TWILIO_AUTH_TOKEN=[Add info here]
```

### Conversations

You can start a conversation by texting the number you have set up in Twilio. To do this,
1. Start a new project with Programmable SMS
2. Add a new number using your Trial credit
3. Add this number to your `services.yml` file
4. Set up the ngrok tunnel forwarding path (e.g. https://1e6e7b84c8a8.ngrok.io) to your Twilio [messaging service's setting page](https://www.twilio.com/console/sms/services/). It should look like this:

![](https://i.ibb.co/Srb31QR/Screenshot-2020-06-29-at-00-53-41.png)

5. Once that's all set up, you can send a text to your Twilio number to initiate a conversation with Botnik. 
6. Texting `restart` resets the session, as it otherwise remembers where you left off if you're texting from the same number

### Testing the Bot

TBC


### Stealth Chatbot Framework
For more information, please check out the [Stealth documentation](https://hellostealth.org/docs).
