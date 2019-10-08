package injector;

import consumer.Application;
import consumer.Consumer;
import service.EmailMessage;

public class EmailServiceInjector implements MessageServiceInjector {

	@Override
	public Consumer getConsumer() {
		return new Application(new EmailMessage());
	}

}
