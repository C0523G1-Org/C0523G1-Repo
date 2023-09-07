package com.example.nuoiemproject.cam_ket.model;

public class CamKet {

    private int maCamKet;
    private int soTien;
    private String ngayNhanNuoi;
    private int trangThai;
    private int maTreEm;
    private int maNguoiNuoi;


    public CamKet(int soTien, String ngayNhanNuoi, int trangThai, int maTreEm, int maNguoiNuoi) {
        this.soTien = soTien;
        this.ngayNhanNuoi = ngayNhanNuoi;
        this.trangThai = trangThai;
        this.maTreEm = maTreEm;
        this.maNguoiNuoi = maNguoiNuoi;
    }

    public CamKet(int maCamKet, int soTien, String ngayNhanNuoi, int trangThai, int maTreEm, int maNguoiNuoi) {
        this.maCamKet = maCamKet;
        this.soTien = soTien;
        this.ngayNhanNuoi = ngayNhanNuoi;
        this.trangThai = trangThai;
        this.maTreEm = maTreEm;
        this.maNguoiNuoi = maNguoiNuoi;
    }

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

    public int getMaTreEm() {
        return maTreEm;
    }

    public void setMaTreEm(int maTreEm) {
        this.maTreEm = maTreEm;
    }

    public int getMaNguoiNuoi() {
        return maNguoiNuoi;
    }

    public void setMaNguoiNuoi(int maNguoiNuoi) {
        this.maNguoiNuoi = maNguoiNuoi;
    }

    @Override
    public String toString() {
        return "CamKet{" +
                "maCamKet=" + maCamKet +
                ", soTien=" + soTien +
                ", ngayNhanNuoi='" + ngayNhanNuoi + '\'' +
                ", trangThai=" + trangThai +
                ", maTreEm=" + maTreEm +
                ", maNguoiNuoi=" + maNguoiNuoi +
                '}';
    }
}
