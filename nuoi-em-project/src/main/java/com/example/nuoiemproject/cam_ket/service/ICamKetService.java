package com.example.nuoiemproject.cam_ket.service;

import com.example.nuoiemproject.cam_ket.model.CamKet;

import java.util.List;

public interface ICamKetService {
    List<CamKet> hienThiDanhSach();
    CamKet xemChiTiet(int maCamKet);
    void them(CamKet camKet);
    void sua(CamKet camKet);
    void xoa(int maCamKet);
}
