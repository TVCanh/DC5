package service;

public class SMSMessage implements MessageService {

	@Override
	public void sendMessage(String msg, String rec) {
		//TODO
		
		System.out.println("SMS sent "+msg+rec);
		
	}

}
