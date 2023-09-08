package com.example.nuoiemproject.tai_khoan.model;

public class TaiKhoanDto3 {
    int maTaiKhoan;
    int maNguoiNuoi;
    String tenNguoiNuoi;
    String ngayLamCamKet;
    int soTien;
    int trangThaiHopDong;
    String tenTreEm;
    int gioiTinhTreEm;
    String ngaySinhTreEm;

    public TaiKhoanDto3(int maTaiKhoan, int maNguoiNuoi, String tenNguoiNuoi, String ngayLamCamKet, int soTien,
                        int trangThaiHopDong, String tenTreEm, int gioiTinhTreEm, String ngaySinhTreEm) {
        this.maTaiKhoan = maTaiKhoan;
        this.maNguoiNuoi = maNguoiNuoi;
        this.tenNguoiNuoi = tenNguoiNuoi;
        this.ngayLamCamKet = ngayLamCamKet;
        this.soTien = soTien;
        this.trangThaiHopDong = trangThaiHopDong;
        this.tenTreEm = tenTreEm;
        this.gioiTinhTreEm = gioiTinhTreEm;
        this.ngaySinhTreEm = ngaySinhTreEm;
    }

    public int getMaTaiKhoan() {
        return maTaiKhoan;
    }

    public void setMaTaiKhoan(int maTaiKhoan) {
        this.maTaiKhoan = maTaiKhoan;
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

    public String getNgayLamCamKet() {
        return ngayLamCamKet;
    }

    public void setNgayLamCamKet(String ngayLamCamKet) {
        this.ngayLamCamKet = ngayLamCamKet;
    }

    public int getSoTien() {
        return soTien;
    }

    public void setSoTien(int soTien) {
        this.soTien = soTien;
    }

    public int getTrangThaiHopDong() {
        return trangThaiHopDong;
    }

    public void setTrangThaiHopDong(int trangThaiHopDong) {
        this.trangThaiHopDong = trangThaiHopDong;
    }

    public String getTenTreEm() {
        return tenTreEm;
    }

    public void setTenTreEm(String tenTreEm) {
        this.tenTreEm = tenTreEm;
    }

    public int getGioiTinhTreEm() {
        return gioiTinhTreEm;
    }

    public void setGioiTinhTreEm(int gioiTinhTreEm) {
        this.gioiTinhTreEm = gioiTinhTreEm;
    }

    public String getNgaySinhTreEm() {
        return ngaySinhTreEm;
    }

    public void setNgaySinhTreEm(String ngaySinhTreEm) {
        this.ngaySinhTreEm = ngaySinhTreEm;
    }
}
