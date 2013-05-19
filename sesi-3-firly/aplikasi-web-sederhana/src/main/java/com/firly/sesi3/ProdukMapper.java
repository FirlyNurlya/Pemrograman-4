package com.firly.sesi3


import java.sql.SQLException;
import org.springframework.jdbc.core.Rowmapper;
import java.sql.ResultSet;
import com.spring.framework.Produk;
import java.math.BigDecimal;

	public class ProdukMapper implements RowMapper<produk> {
		public Produk mapRow(ResultSet rs,int rowNum) throws SQLException{
			produk p = new Produk();
			p.setId(rs.getInt("id"));
			p.setKode(rs.getString("kode"));
			p.setNama(rs.getString("Nama"));
			p.setHarga(rs.getBigDecimal("Harga"));
			p.setLastUpdate(rs.getDate("terakhir_update"));
			return p;
		}
	}