package com.firly.sesi3;


import com.spring.framework.produk;
import com.spring.framework.ProdukMapper;
import java.util.List;
import javax.sql.Datasources;
import org.springframework.jdbc.core.JdbcTemplate;

	public interface ProdukDao {
		private DataSource ds;
		private JdbcTemplate js;
		
		public void setDataSource(DataSource ds);
		public void simpan(Produk p){
		String SQL = "insert into Produk (kode, nama, harga) values (?, ?, ?)";
      
      jdbcTemplateObject.update( SQL, name, age);
      System.out.println("Created Record Name = " + name + " Age = " + age);
      return;
		
		}
		
		public List<Produk> cariSemuaProduk();{
		String SQL = "select * from Produk";
      List <Produk> Produk = js.query(SQL,new ProdukMapper());
      return Produk;
		
		}
	
	}
	
	