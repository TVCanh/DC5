package injector;

import consumer.Application;
import consumer.Consumer;
import service.FBMessage;

public class FBServiceInjector implements MessageServiceInjector {
	@Override
	public Consumer getConsumer() {
		return new Application(new FBMessage());
		
	}
}
