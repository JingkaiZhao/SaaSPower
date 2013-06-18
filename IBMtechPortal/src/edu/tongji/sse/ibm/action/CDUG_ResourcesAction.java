package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.CDUG_resDAO;
import edu.tongji.sse.ibm.dao.CDUG_resSortDAO;
import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.CDUG_res;
import edu.tongji.sse.ibm.pojo.CDUG_resSort;

public class CDUG_ResourcesAction extends ActionSupport {
	private String sortname;
	private static int pageSize = 6; //ÿҳ��ʾ�����Ÿ���
	private int curpage = 0;
	public int getCurpage() {
		return curpage;
	}

	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}

	private int pageCount = 0;
	private int rowCount = 0;
	private List<CDUG_res> reslist;
	private List<CDUG_res> speechlist;//temp
	private List<CDUG_res> otherslist;//temp
	
	public String execute() {
		CDUG_resSort sort;
		if(sortname != "all"){
			 sort = CDUG_resSortDAO.getResSort(sortname);
		}else{
			 sort = null;
		}
		rowCount = CDUG_resDAO.getResCount(sort);
		if (rowCount % pageSize == 0) {
			pageCount = rowCount / pageSize;
		} else {
			pageCount = rowCount / pageSize + 1;
		}
		if(curpage < 0){
			curpage =0;			
		}else if (curpage >= pageCount) {
			curpage = pageCount -1;
		}
		CDUG_resSort speechsort = CDUG_resSortDAO.getResSort("speech");//temp
		CDUG_resSort otherssort = CDUG_resSortDAO.getResSort("others");//temp
		setSpeechlist(CDUG_resDAO.getResList(speechsort,curpage * pageSize, pageSize));
		setOtherslist(CDUG_resDAO.getResList(otherssort,curpage * pageSize, pageSize));
		setReslist(CDUG_resDAO.getResList(sort,curpage * pageSize, pageSize));
		
		return SUCCESS;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public List<CDUG_res> getReslist() {
		return reslist;
	}

	public void setReslist(List<CDUG_res> reslist) {
		this.reslist = reslist;
	}

	public String getSortname() {
		return sortname;
	}

	public void setSortname(String sortname) {
		this.sortname = sortname;
	}

	public List<CDUG_res> getOtherslist() {
		return otherslist;
	}

	public void setOtherslist(List<CDUG_res> otherslist) {
		this.otherslist = otherslist;
	}

	public List<CDUG_res> getSpeechlist() {
		return speechlist;
	}

	public void setSpeechlist(List<CDUG_res> speechlist) {
		this.speechlist = speechlist;
	}
}
