package com.example.nuoiemproject.tai_khoan.model;

public class TaiKhoanDto4 {
    private String ngayGiaoDich;
    private String noiDungGiaoDich;
    private int soTien;
    private String tenTreEm;
    private String ngayNhanNuoi;

    public TaiKhoanDto4(String ngayGiaoDich, String noiDungGiaoDich, int soTien, String tenTreEm, String ngayNhanNuoi) {
        this.ngayGiaoDich = ngayGiaoDich;
        this.noiDungGiaoDich = noiDungGiaoDich;
        this.soTien = soTien;
        this.tenTreEm = tenTreEm;
        this.ngayNhanNuoi = ngayNhanNuoi;
    }

    public String getNgayGiaoDich() {
        return ngayGiaoDich;
    }

    public void setNgayGiaoDich(String ngayGiaoDich) {
        this.ngayGiaoDich = ngayGiaoDich;
    }

    public String getNoiDungGiaoDich() {
        return noiDungGiaoDich;
    }

    public void setNoiDungGiaoDich(String noiDungGiaoDich) {
        this.noiDungGiaoDich = noiDungGiaoDich;
    }

    public int getSoTien() {
        return soTien;
    }

    public void setSoTien(int soTien) {
        this.soTien = soTien;
    }

    public String getTenTreEm() {
        return tenTreEm;
    }

    public void setTenTreEm(String tenTreEm) {
        this.tenTreEm = tenTreEm;
    }

    public String getNgayNhanNuoi() {
        return ngayNhanNuoi;
    }

    public void setNgayNhanNuoi(String ngayNhanNuoi) {
        this.ngayNhanNuoi = ngayNhanNuoi;
    }
}
