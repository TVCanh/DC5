package consumer;

import service.MessageService;

public class Application implements Consumer {
	private MessageService service;
	
	public Application(MessageService sv) {
		this.service = sv;
	}

	@Override
	public void processMessage(String msg, String rec) {
		this.service.sendMessage(msg, rec);
	}

}
