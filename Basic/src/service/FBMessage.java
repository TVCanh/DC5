package service;

public class FBMessage implements MessageService {
	@Override
	public void sendMessage(String msg, String rec) {
		System.out.println("FB message sent "+ msg + rec);
	}
}
