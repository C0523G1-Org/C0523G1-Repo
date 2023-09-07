package com.example.nuoiemproject.nguoi_nuoi.service;

import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoiDto;
import com.example.nuoiemproject.nguoi_nuoi.repository.INguoiNuoiRepository;
import com.example.nuoiemproject.nguoi_nuoi.repository.NguoiNuoiRepository;

import java.util.List;

public class NguoiNuoiService implements INguoiNuoiService {
    private INguoiNuoiRepository repository = new NguoiNuoiRepository();

    @Override
    public List<NguoiNuoi> hienThiDanhSach() {
        return repository.hienThiDanhSach();
    }

    @Override
    public NguoiNuoi xemChiTiet(int maNguoiNuoi) {
        return repository.xemChiTiet(maNguoiNuoi);
    }

    @Override
    public void them(NguoiNuoi nguoiNuoi) {
        repository.them(nguoiNuoi);
    }

    @Override
    public void sua(NguoiNuoi nguoiNuoi) {
        repository.sua(nguoiNuoi);
    }

    @Override
    public void xoa(int maNguoiNuoi) {
        repository.xoa(maNguoiNuoi);
    }

    @Override
    public List<NguoiNuoiDto> xemTreEmNhan(int maNguoiNuoi) {
        return repository.xemTreEmNhan(maNguoiNuoi);
    }
}
