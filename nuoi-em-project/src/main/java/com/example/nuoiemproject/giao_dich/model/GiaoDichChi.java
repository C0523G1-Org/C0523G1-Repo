package com.example.nuoiemproject.giao_dich.model;

public class GiaoDichChi {
    private int maGiaoDich;
    private String ngayGiaoDich;
    private String noiDungGiaoDich;
    private int soTien;
    private int maGiamHo;

    public GiaoDichChi() {
    }

    public GiaoDichChi(String ngayGiaoDich, String noiDungGiaoDich, int soTien) {
        this.ngayGiaoDich = ngayGiaoDich;
        this.noiDungGiaoDich = noiDungGiaoDich;
        this.soTien = soTien;
    }

    public GiaoDichChi(String ngayGiaoDich, String noiDungGiaoDich, int soTien, int maGiamHo) {
        this.ngayGiaoDich = ngayGiaoDich;
        this.noiDungGiaoDich = noiDungGiaoDich;
        this.soTien = soTien;
        this.maGiamHo = maGiamHo;
    }

    public GiaoDichChi(int maGiaoDich, String ngayGiaoDich, String noiDungGiaoDich, int soTien, int maGiamHo) {
        this.maGiaoDich = maGiaoDich;
        this.ngayGiaoDich = ngayGiaoDich;
        this.noiDungGiaoDich = noiDungGiaoDich;
        this.soTien = soTien;
        this.maGiamHo = maGiamHo;
    }

    public int getMaGiaoDich() {
        return maGiaoDich;
    }

    public void setMaGiaoDich(int maGiaoDich) {
        this.maGiaoDich = maGiaoDich;
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

    public int getMaGiamHo() {
        return maGiamHo;
    }

    public void setMaGiamHo(int maGiamHo) {
        this.maGiamHo = maGiamHo;
    }
}
