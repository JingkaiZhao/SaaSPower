package edu.tongji.sse.ibm.test;

import java.io.File;

import jxl.Workbook;
import jxl.write.*;
import jxl.write.Number;

public class test_jxl {
	public static void main(String args[]) {
		try {
			// ���ļ�
			WritableWorkbook book = Workbook.createWorkbook(new File(
					" test.xls "));
			// ������Ϊ����һҳ���Ĺ���������0��ʾ���ǵ�һҳ
			WritableSheet sheet = book.createSheet(" ��һҳ ", 0);
			// ��Label����Ĺ�������ָ����Ԫ��λ���ǵ�һ�е�һ��(0,0)
			// �Լ���Ԫ������Ϊtest
			Label label = new Label(0, 0, " test ");

			// ������õĵ�Ԫ����ӵ���������
			sheet.addCell(label);

			/*
			 * ����һ���������ֵĵ�Ԫ�� ����ʹ��Number��������·�����������﷨���� ��Ԫ��λ���ǵڶ��У���һ�У�ֵΪ789.123
			 */
			Number number = new Number(1, 0, 555.12541);
			sheet.addCell(number);

			// д�����ݲ��ر��ļ�
			book.write();
			book.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}
}