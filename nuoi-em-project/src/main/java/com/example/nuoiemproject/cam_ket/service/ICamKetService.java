package com.example.nuoiemproject.cam_ket.service;

import com.example.nuoiemproject.cam_ket.model.CamKet;
import com.example.nuoiemproject.cam_ket.model.CamKetDTO;

import java.util.List;

public interface ICamKetService {
    List<CamKetDTO> hienThiDanhSach();
    CamKet xemChiTiet(int maCamKet);
    void them(CamKet camKet);
    void sua(CamKet camKet);
    void xoa(int maCamKet);
}
