package test;

import consumer.Consumer;
import injector.EmailServiceInjector;
import injector.MessageServiceInjector;
import injector.SMSServiceInjector;
import service.MessageService;
import service.SMSMessage;

public class MainTest {
	public static void main(String[] args) {
		String msg = "Hi canh";
		String rec = "canhtranhg@gmail.com";
		MessageServiceInjector injector = null;
		Consumer app = null;
		
		//send email
		injector = new EmailServiceInjector();
		app= injector.getConsumer();
		app.processMessage(msg, rec);
		//send sms
		injector = new SMSServiceInjector();
		app = injector.getConsumer();
		app.processMessage(msg, rec);
		
	}
}
