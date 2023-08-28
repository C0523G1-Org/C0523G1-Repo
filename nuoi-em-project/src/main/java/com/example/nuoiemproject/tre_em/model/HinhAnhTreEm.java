package com.example.nuoiemproject.tre_em.model;

public class HinhAnhTreEm {
    private int maHinhAnh;
    private String nguonHinhAnh;

    public HinhAnhTreEm() {
    }

    public HinhAnhTreEm(int maHinhAnh, String nguonHinhAnh) {
        this.maHinhAnh = maHinhAnh;
        this.nguonHinhAnh = nguonHinhAnh;
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

}
