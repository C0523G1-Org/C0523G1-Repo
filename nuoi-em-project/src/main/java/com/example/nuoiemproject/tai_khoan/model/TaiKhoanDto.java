package com.example.nuoiemproject.tai_khoan.model;

public class TaiKhoanDto {
    private int maTaiKhoan;
    private String tenTaiKhoan;
    private String tenNguoiNuoi;
    private int gioiTinh;
    private int soDienThoai;

    public TaiKhoanDto(int maTaiKhoan) {
        this.maTaiKhoan = maTaiKhoan;
    }

    public TaiKhoanDto(int maTaiKhoan, String tenTaiKhoan, String tenNguoiNuoi, int gioiTinh, int soDienThoai) {
        this.maTaiKhoan = maTaiKhoan;
        this.tenTaiKhoan = tenTaiKhoan;
        this.tenNguoiNuoi = tenNguoiNuoi;
        this.gioiTinh = gioiTinh;
        this.soDienThoai = soDienThoai;
    }

    public int getMaTaiKhoan() {
        return maTaiKhoan;
    }

    public void setMaTaiKhoan(int maTaiKhoan) {
        this.maTaiKhoan = maTaiKhoan;
    }

    public String getTenTaiKhoan() {
        return tenTaiKhoan;
    }

    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }

    public String getTenNguoiNuoi() {
        return tenNguoiNuoi;
    }

    public void setTenNguoiNuoi(String tenNguoiNuoi) {
        this.tenNguoiNuoi = tenNguoiNuoi;
    }

    public int getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(int gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public int getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(int soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    @Override
    public String toString() {
        return "TaiKhoanDto{" +
                "maTaiKhoan=" + maTaiKhoan +
                ", tenTaiKhoan='" + tenTaiKhoan + '\'' +
                ", tenNguoiNuoi='" + tenNguoiNuoi + '\'' +
                ", gioiTinh=" + gioiTinh +
                ", soDienThoai=" + soDienThoai +
                '}';
    }
}
