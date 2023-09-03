package com.example.nuoiemproject.tai_khoan.model;

public class TaiKhoan {
    private int maTaiKhoan;
    private String tenTaiKhoan;
    private String matKhau;
    private boolean admin;

    public TaiKhoan(int maTaiKhoan, String tenTaiKhoan, String matKhau, boolean admin) {
        this.maTaiKhoan = maTaiKhoan;
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
        this.admin = admin;
    }

    public TaiKhoan(String tenTaiKhoan, String matKhau, boolean admin) {
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
        this.admin = admin;
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

    public boolean isAdmin() {
        return admin;
    }

    public void setAdmin(boolean admin) {
        this.admin = admin;
    }

    @Override
    public String toString() {
        return "Ma tai khoan: " + maTaiKhoan + "/n" +
                "Ten tai khoan: " + tenTaiKhoan + "/n" +
                "Mat khau: " + matKhau;
    }
}
