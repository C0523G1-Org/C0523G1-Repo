package com.example.nuoiemproject.tre_em.model;

public class TreEm {
    private int maTreEm;
    private String tenTreEm;
    private int gioiTinh;
    private String ngaySinh;
    private int trangThai;
    private String moTa;
    private int maKhuVuc;
    private int maNguoiGiamHo;
    private String hinhAnh;

    public TreEm(String tenTreEm, int gioiTinh, String ngaySinh, String moTa, int maKhuVuc, int maNguoiGiamHo, String hinhAnh) {
        this.tenTreEm = tenTreEm;
        this.gioiTinh = gioiTinh;
        this.ngaySinh = ngaySinh;
        this.moTa = moTa;
        this.maKhuVuc = maKhuVuc;
        this.maNguoiGiamHo = maNguoiGiamHo;
        this.hinhAnh = hinhAnh;
    }

    public TreEm(int maTreEm, String tenTreEm, int gioiTinh, String ngaySinh, String moTa, String hinhAnh) {
        this.maTreEm = maTreEm;
        this.tenTreEm = tenTreEm;
        this.gioiTinh = gioiTinh;
        this.ngaySinh = ngaySinh;
        this.moTa = moTa;
        this.hinhAnh = hinhAnh;
    }

    public TreEm(int maTreEm, String tenTreEm, int gioiTinh, String ngaySinh, int trangThai, String moTa, int maKhuVuc, int maNguoiGiamHo, String hinhAnh) {
        this.maTreEm = maTreEm;
        this.tenTreEm = tenTreEm;
        this.gioiTinh = gioiTinh;
        this.ngaySinh = ngaySinh;
        this.trangThai = trangThai;
        this.moTa = moTa;
        this.maKhuVuc = maKhuVuc;
        this.maNguoiGiamHo = maNguoiGiamHo;
        this.hinhAnh = hinhAnh;
    }

    public TreEm(int maTreEm, String tenTreEm, int gioiTinh, String ngaySinh, int trangThai) {
        this.maTreEm = maTreEm;
        this.tenTreEm = tenTreEm;
        this.gioiTinh = gioiTinh;
        this.ngaySinh = ngaySinh;
        this.trangThai = trangThai;
    }

    public TreEm(String tenTreEm, int gioiTinh, String ngaySinh, int trangThai, String moTa, int maKhuVuc, int maNguoiGiamHo, String hinhAnh) {
        this.tenTreEm = tenTreEm;
        this.gioiTinh = gioiTinh;
        this.ngaySinh = ngaySinh;
        this.trangThai = trangThai;
        this.moTa = moTa;
        this.maKhuVuc = maKhuVuc;
        this.maNguoiGiamHo = maNguoiGiamHo;
        this.hinhAnh = hinhAnh;
    }

    public TreEm(int maTreEm, String tenTreEm, int gioiTinh, String ngaySinh, String moTa, int maKhuVuc, int maNguoiGiamHo, String hinhAnh) {
        this.maTreEm = maTreEm;
        this.tenTreEm = tenTreEm;
        this.gioiTinh = gioiTinh;
        this.ngaySinh = ngaySinh;
        this.moTa = moTa;
        this.maKhuVuc = maKhuVuc;
        this.maNguoiGiamHo = maNguoiGiamHo;
        this.hinhAnh = hinhAnh;
    }

    public TreEm(int maTreEm, String tenTreEm, int gioiTinh, String ngaySinh, String moTa, int maKhuVuc, int maNguoiGiamHo, int trangThai, String hinhAnh) {
        this.maTreEm = maTreEm;
        this.tenTreEm = tenTreEm;
        this.gioiTinh = gioiTinh;
        this.ngaySinh = ngaySinh;
        this.moTa = moTa;
        this.maKhuVuc = maKhuVuc;
        this.maNguoiGiamHo = maNguoiGiamHo;
        this.trangThai = trangThai;
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

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public int getMaKhuVuc() {
        return maKhuVuc;
    }

    public void setMaKhuVuc(int maKhuVuc) {
        this.maKhuVuc = maKhuVuc;
    }

    public int getMaNguoiGiamHo() {
        return maNguoiGiamHo;
    }

    public void setMaNguoiGiamHo(int maNguoiGiamHo) {
        this.maNguoiGiamHo = maNguoiGiamHo;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }
}

