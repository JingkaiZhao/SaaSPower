package edu.tongji.sse.ibm.test;

import edu.tongji.sse.ibm.tools.Mail;

public class test_Mail {
	public static void main(String[] args) {
		String mailbody = "�����ʼ����� <font color=red>��ӭ��,java</font>";
		Mail themail = new Mail("smtp.gmail.com");
		themail.setNeedAuth(true);
		// ����
		if (themail.setSubject("�����ʼ�����") == false)
			return;
		// �ʼ����� ֧��html �� <font color=red>��ӭ��,java</font>
		if (themail.setBody(mailbody) == false)
			return;
		// �ռ�������
		if (themail.setTo("jiangweigaara@163.com") == false)
			return;
		// ����������
		if (themail.setFrom("jiangwish@gmail.com") == false)
			return;
		// ���ø���
//		if (themail.addFileAffix("mail.txt") == false)
//			return; // �����ڱ��ػ����ϵľ���·��
		themail.setNamePass("jiangwish@gmail.com", "232101gg"); // �û���������,����ѡ��һ���Լ��ĵ���
		if (themail.sendout() == false)
			return;
	}
}
