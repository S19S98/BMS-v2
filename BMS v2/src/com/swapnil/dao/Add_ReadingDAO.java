package com.swapnil.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.swapnil.bean.BookBean;
import com.swapnil.util.DBUtil;

public class Add_ReadingDAO {
	public String addValue(BookBean bean) {
		String result = "Fail";
		String bname = bean.getBookName();
		String aname = bean.getAuthorName();
		String pub = bean.getPublication();
		String sql = "INSERT INTO user_reading_table VALUES(?, ?, ?)";
		try {
			Connection con = DBUtil.getConnection();
			PreparedStatement st = con.prepareStatement(sql);
			st.setString (1, bname);
		    st.setString (2, aname);
		    st.setString(3, pub);
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
