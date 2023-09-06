package com.example.nuoiemproject.nguoi_giam_ho.model;

public class NguoiGiamHo {
    private int maNguoiGiamHo;
    private String tenNguoiGiamHo;
    private int gioiTinh;
    private int maKhuVuc;
    private int soDienThoai;

    public NguoiGiamHo(String tenNguoiGiamHo, int gioiTinh, int maKhuVuc, int soDienThoai) {
        this.tenNguoiGiamHo = tenNguoiGiamHo;
        this.gioiTinh = gioiTinh;
        this.maKhuVuc = maKhuVuc;
        this.soDienThoai = soDienThoai;
    }

    public NguoiGiamHo(int maNguoiGiamHo, String tenNguoiGiamHo, int gioiTinh, int maKhuVuc, int soDienThoai) {
        this.maNguoiGiamHo = maNguoiGiamHo;
        this.tenNguoiGiamHo = tenNguoiGiamHo;
        this.gioiTinh = gioiTinh;
        this.maKhuVuc = maKhuVuc;
        this.soDienThoai = soDienThoai;
    }

    public int getMaNguoiGiamHo() {
        return maNguoiGiamHo;
    }

    public void setMaNguoiGiamHo(int maNguoiGiamHo) {
        this.maNguoiGiamHo = maNguoiGiamHo;
    }

    public String getTenNguoiGiamHo() {
        return tenNguoiGiamHo;
    }

    public void setTenNguoiGiamHo(String tenNguoiGiamHo) {
        this.tenNguoiGiamHo = tenNguoiGiamHo;
    }

    public int getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(int gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public int getMaKhuVuc() {
        return maKhuVuc;
    }

    public void setMaKhuVuc(int maKhuVuc) {
        this.maKhuVuc = maKhuVuc;
    }

    public int getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(int soDienThoai) {
        this.soDienThoai = soDienThoai;
    }
}
