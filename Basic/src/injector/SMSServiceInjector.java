package injector;

import consumer.Application;
import consumer.Consumer;
import service.SMSMessage;

public class SMSServiceInjector implements MessageServiceInjector {

	@Override
	public Consumer getConsumer() {
		return new Application(new SMSMessage());
	}

}
