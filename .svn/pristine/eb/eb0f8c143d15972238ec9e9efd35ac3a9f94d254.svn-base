package ddit.config;

import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

// sqlMapClient를 쓰면 DBUtil안써도 됨
public class BuildedSqlMapClient {
	
	private static SqlMapClient smc;
	
	static {
		
			Reader rd = null;
			try {
				Charset charset = Charset.forName("UTF-8");
				Resources.setCharset(charset);
				
				rd = Resources.getResourceAsReader("ddit/config/sqlMapConfig.xml");
				
				smc = SqlMapClientBuilder.buildSqlMapClient(rd);
				
			} catch (IOException e) {
				throw new RuntimeException("SqlMapClient객체 생성 실패" + e.getMessage());
			} finally {
				if(rd!=null) try {
					rd.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	
	public static SqlMapClient getSqlMapClient() {
		return smc;
	}
	
}
