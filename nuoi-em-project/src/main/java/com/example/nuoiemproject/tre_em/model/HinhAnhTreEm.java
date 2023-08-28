package com.example.nuoiemproject.tre_em.model;

public class HinhAnhTreEm {
    private int maHinhAnh;
    private String nguonHinhAnh;
    private TreEm treEm;

    public HinhAnhTreEm() {
    }

    public HinhAnhTreEm(int maHinhAnh, String nguonHinhAnh, TreEm treEm) {
        this.maHinhAnh = maHinhAnh;
        this.nguonHinhAnh = nguonHinhAnh;
        this.treEm = treEm;
    }

    public int getMaHinhAnh() {
        return maHinhAnh;
    }

    public void setMaHinhAnh(int maHinhAnh) {
        this.maHinhAnh = maHinhAnh;
    }

    public String getNguonHinhAnh() {
        return nguonHinhAnh;
    }

    public void setNguonHinhAnh(String nguonHinhAnh) {
        this.nguonHinhAnh = nguonHinhAnh;
    }

    public TreEm getTreEm() {
        return treEm;
    }

    public void setTreEm(TreEm treEm) {
        this.treEm = treEm;
    }
}
