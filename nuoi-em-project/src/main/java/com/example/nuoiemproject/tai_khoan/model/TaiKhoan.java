package com.example.nuoiemproject.tai_khoan.model;

public class TaiKhoan {
    private int maTaiKhoan;
    private String tenTaiKhoan;
    private String matKhau;
    private int maNguoiNuoi;
    private boolean admin;

    public TaiKhoan(int maTaiKhoan, String tenTaiKhoan, String matKhau, int maNguoiNuoi) {
        this.maTaiKhoan = maTaiKhoan;
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
        this.maNguoiNuoi = maNguoiNuoi;
    }


    public TaiKhoan(String tenTaiKhoan, String matKhau, int maNguoiNuoi) {
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
        this.maNguoiNuoi = maNguoiNuoi;
    }

    public TaiKhoan(int maTaiKhoan, String matKhau) {
        this.maTaiKhoan = maTaiKhoan;
        this.matKhau = matKhau;
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

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public int getMaNguoiNuoi() {
        return maNguoiNuoi;
    }

    public void setMaNguoiNuoi(int maNguoiNuoi) {
        this.maNguoiNuoi = maNguoiNuoi;
    }

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    @Override
    public String toString() {
        return "TaiKhoan{" +
                "maTaiKhoan=" + maTaiKhoan +
                ", tenTaiKhoan='" + tenTaiKhoan + '\'' +
                ", matKhau='" + matKhau + '\'' +
                ", maNguoiNuoi=" + maNguoiNuoi +
                ", admin=" + admin +
                '}';
    }
}
