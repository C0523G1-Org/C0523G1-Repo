package com.example.nuoiemproject.nguoi_nuoi.model;

public class NguoiNuoiDto {
    private int maTreEm;
    private String tenTreEm;
    private int gioiTinh;
    private String ngaySinh;
    private String moTa;
    private String tenKhuVuc;
    private String tenNguoiGiamHo;
    private int soDienThoai;
    private String hinhAnh;

    public NguoiNuoiDto() {
    }

    public NguoiNuoiDto(int maTreEm, String tenTreEm, int gioiTinh, String ngaySinh, String moTa, String tenKhuVuc, String tenNguoiGiamHo, int soDienThoai, String hinhAnh) {
        this.maTreEm = maTreEm;
        this.tenTreEm = tenTreEm;
        this.gioiTinh = gioiTinh;
        this.ngaySinh = ngaySinh;
        this.moTa = moTa;
        this.tenKhuVuc = tenKhuVuc;
        this.tenNguoiGiamHo = tenNguoiGiamHo;
        this.soDienThoai = soDienThoai;
        this.hinhAnh = hinhAnh;
    }

    public int getMaTreEm() {
        return maTreEm;
    }

    public void setMaTreEm(int maTreEm) {
        this.maTreEm = maTreEm;
    }

    public String getTenTreEm() {
        return tenTreEm;
    }

    public void setTenTreEm(String tenTreEm) {
        this.tenTreEm = tenTreEm;
    }

    public int getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(int gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getTenKhuVuc() {
        return tenKhuVuc;
    }

    public void setTenKhuVuc(String tenKhuVuc) {
        this.tenKhuVuc = tenKhuVuc;
    }

    public String getTenNguoiGiamHo() {
        return tenNguoiGiamHo;
    }

    public void setTenNguoiGiamHo(String tenNguoiGiamHo) {
        this.tenNguoiGiamHo = tenNguoiGiamHo;
    }

    public int getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(int soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }
}
