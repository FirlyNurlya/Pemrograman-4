package com.firly.sesi3;

import java.math.*;

public class Produk {
	private Integer id;
	private String nama;
	private String kode;
	private BigDecimal harga;
	private date terakhirUpdate;
	
	public void setNama(String nama){
		this.nama=nama;
	}
	public String getNama() {
		return nama;
	}
	
	public void setKode(String kode) {
		this.kode=kode;
	}
	public String getKode() {
		return kode;
	}
	
	public void setHarga(BigDecimal harga){
		this.harga=harga;
	}
	public BigDecimal getHarga(){
		return harga;
	}
	
	public void setTerakhirUpdate(date terakhirUpdate){
		this.terakhirUpdate=terakhirUpdate;
	}
	public date getTerakhirUpdate(){
		return terakhirUpdate;
	}
}