package service;

public class EmailMessage implements MessageService {

	@Override
	public void sendMessage(String msg, String rec) {
		// TODO 
		System.out.println("Email sent "+msg+rec);
	}
}
