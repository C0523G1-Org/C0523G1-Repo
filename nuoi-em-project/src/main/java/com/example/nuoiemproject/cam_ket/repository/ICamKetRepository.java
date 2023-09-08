package com.example.nuoiemproject.cam_ket.repository;

import com.example.nuoiemproject.cam_ket.model.CamKet;
import com.example.nuoiemproject.cam_ket.model.CamKetDTO;
import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;

import java.util.List;

public interface ICamKetRepository {
    List<CamKetDTO> hienThiDanhSach();
    CamKet xemChiTiet(int maCamKet);
    void them(CamKet camKet);
    void sua(CamKet camKet);
    void xoa(int maCamKet);
}
