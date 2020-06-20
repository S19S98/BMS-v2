package com.swapnil.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.swapnil.bean.BookBean;
import com.swapnil.util.DBUtil;

public class Del_ReadingDAO {
	public String delValue(BookBean bean) {
		String result = "Fail";
		String bname = bean.getBookName();
		String sql = "DELETE FROM  user_reading_table  WHERE book_name=?";
		try {
			Connection con = DBUtil.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString (1, bname);
			int r = st.executeUpdate();
			if (r > 0) {
			    result = "Success";
			}
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
