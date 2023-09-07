package com.example.nuoiemproject.giao_dich.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class GiaoDich {
    private int maGiaoDich;
    private String ngayGiaoDich;
    private String noiDungGiaoDich;
    private int soTien;
    private int maCamKet;

    public GiaoDich() {
    }
    public GiaoDich(String ngayGiaoDich, String noiDungGiaoDich, int soTien) {
        this.ngayGiaoDich = ngayGiaoDich;
        this.noiDungGiaoDich = noiDungGiaoDich;
        this.soTien = soTien;
    }

    public GiaoDich(String ngayGiaoDich, String noiDungGiaoDich, int soTien, int maCamKet) {
        this.ngayGiaoDich = ngayGiaoDich;
        this.noiDungGiaoDich = noiDungGiaoDich;
        this.soTien = soTien;
        this.maCamKet = maCamKet;
    }


    public GiaoDich(int maGiaoDich, String ngayGiaoDich, String noiDungGiaoDich, int soTien, int maCamKet) {
        this.maGiaoDich = maGiaoDich;
        this.ngayGiaoDich = ngayGiaoDich;
        this.noiDungGiaoDich = noiDungGiaoDich;
        this.soTien = soTien;
        this.maCamKet = maCamKet;
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

    public int getMaCamKet() {
        return maCamKet;
    }

    public void setMaCamKet(int maCamKet) {
        this.maCamKet = maCamKet;
    }
}
