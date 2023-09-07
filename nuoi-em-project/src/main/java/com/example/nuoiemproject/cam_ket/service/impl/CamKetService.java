package com.example.nuoiemproject.cam_ket.service.impl;

import com.example.nuoiemproject.cam_ket.model.CamKet;
import com.example.nuoiemproject.cam_ket.model.CamKetDTO;
import com.example.nuoiemproject.cam_ket.repository.impl.CamKetRepository;
import com.example.nuoiemproject.cam_ket.repository.ICamKetRepository;
import com.example.nuoiemproject.cam_ket.service.ICamKetService;


import java.util.List;

public class CamKetService implements ICamKetService {
    private ICamKetRepository repository = new CamKetRepository();
    @Override
    public List<CamKetDTO> hienThiDanhSach() {
        return repository.hienThiDanhSach();
    }

    @Override
    public CamKet xemChiTiet(int maCamKet) {
        return repository.xemChiTiet(maCamKet);
    }

    @Override
    public void them(CamKet camKet) {
        repository.them(camKet);
    }

    @Override
    public void sua(CamKet camKet) {
        repository.sua(camKet);
    }

    @Override
    public void xoa(int maCamKet) {
        repository.xoa(maCamKet);
    }
}
