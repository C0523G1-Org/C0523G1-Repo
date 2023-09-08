package com.example.nuoiemproject.cam_ket.model;

public class CamKetDTO {

    private int maCamKet;

    public int getMaCamKet() {
        return maCamKet;
    }

    public void setMaCamKet(int maCamKet) {
        this.maCamKet = maCamKet;
    }

    public int getSoTien() {
        return soTien;
    }

    public void setSoTien(int soTien) {
        this.soTien = soTien;
    }

    public String getNgayNhanNuoi() {
        return ngayNhanNuoi;
    }

    public void setNgayNhanNuoi(String ngayNhanNuoi) {
        this.ngayNhanNuoi = ngayNhanNuoi;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    public String getTenTreEm() {
        return tenTreEm;
    }

    public void setTenTreEm(String tenTreEm) {
        this.tenTreEm = tenTreEm;
    }

    public String getTenNguoiNuoi() {
        return tenNguoiNuoi;
    }

    public void setTenNguoiNuoi(String tenNguoiNuoi) {
        this.tenNguoiNuoi = tenNguoiNuoi;
    }

    private int soTien;
    private String ngayNhanNuoi;
    private int trangThai;
    private String tenTreEm;
    private String tenNguoiNuoi;

    public CamKetDTO(int soTien, String ngayNhanNuoi, int trangThai, String tenTreEm, String tenNguoiNuoi) {
        this.soTien = soTien;
        this.ngayNhanNuoi = ngayNhanNuoi;
        this.trangThai = trangThai;
        this.tenTreEm = tenTreEm;
        this.tenNguoiNuoi = tenNguoiNuoi;
    }

    public CamKetDTO(int maCamKet, int soTien, String ngayNhanNuoi, int trangThai, String tenTreEm, String tenNguoiNuoi) {
        this.maCamKet = maCamKet;
        this.soTien = soTien;
        this.ngayNhanNuoi = ngayNhanNuoi;
        this.trangThai = trangThai;
        this.tenTreEm = tenTreEm;
        this.tenNguoiNuoi = tenNguoiNuoi;
    }

    @Override
    public String toString() {
        return "CamKetDTO{" +
                "maCamKet=" + maCamKet +
                ", soTien=" + soTien +
                ", ngayNhanNuoi='" + ngayNhanNuoi + '\'' +
                ", trangThai=" + trangThai +
                ", tenTreEm='" + tenTreEm + '\'' +
                ", tenNguoiNuoi='" + tenNguoiNuoi + '\'' +
                '}';
    }
}

