package com.example.nuoiemproject.tai_khoan.model;

public class TaiKhoanDto2 {
    private int maTaiKhoan;
    private String tenTaiKhoan;
    private int maNguoiNuoi;
    private String tenNguoiNuoi;
    private int gioiTinhNguoiNuoi;
    private String email;
    private int maTreEm;
    private String tenTreEm;
    private int soDienThoai;

    public TaiKhoanDto2(int maTaiKhoan, String tenTaiKhoan, int maNguoiNuoi, String tenNguoiNuoi,
                        int gioiTinhNguoiNuoi, String email, int maTreEm, String tenTreEm, int soDienThoai) {
        this.maTaiKhoan = maTaiKhoan;
        this.tenTaiKhoan = tenTaiKhoan;
        this.maNguoiNuoi = maNguoiNuoi;
        this.tenNguoiNuoi = tenNguoiNuoi;
        this.gioiTinhNguoiNuoi = gioiTinhNguoiNuoi;
        this.email = email;
        this.maTreEm = maTreEm;
        this.tenTreEm = tenTreEm;
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

    public int getMaNguoiNuoi() {
        return maNguoiNuoi;
    }

    public void setMaNguoiNuoi(int maNguoiNuoi) {
        this.maNguoiNuoi = maNguoiNuoi;
    }

    public String getTenNguoiNuoi() {
        return tenNguoiNuoi;
    }

    public void setTenNguoiNuoi(String tenNguoiNuoi) {
        this.tenNguoiNuoi = tenNguoiNuoi;
    }

    public int getGioiTinhNguoiNuoi() {
        return gioiTinhNguoiNuoi;
    }

    public void setGioiTinhNguoiNuoi(int gioiTinhNguoiNuoi) {
        this.gioiTinhNguoiNuoi = gioiTinhNguoiNuoi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public int getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(int soDienThoai) {
        this.soDienThoai = soDienThoai;
    }
}
