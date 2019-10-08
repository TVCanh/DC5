package consumer;

public interface Consumer {
	void processMessage(String msg, String rec);
}
