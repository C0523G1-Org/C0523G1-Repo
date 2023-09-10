package com.example.nuoiemproject.nguoi_giam_ho.service;

import com.example.nuoiemproject.nguoi_giam_ho.model.NguoiGiamHo;
import com.example.nuoiemproject.nguoi_giam_ho.repository.INguoiGiamHoRepository;
import com.example.nuoiemproject.nguoi_giam_ho.repository.NguoiGiamHoRepository;

import java.util.List;

public class NguoiGiamHoService implements INguoiGiamHoService{
    private final INguoiGiamHoRepository nguoiGiamHoRepository = new NguoiGiamHoRepository();
    @Override
    public List<NguoiGiamHo> hienThi() {
        return nguoiGiamHoRepository.hienThi();
    }

    @Override
    public void themNguoiGiamHo(NguoiGiamHo nguoiGiamHo) {
        nguoiGiamHoRepository.themNguoiGiamHo(nguoiGiamHo);
    }

    @Override
    public void xoaNguoiGiamHo(int maNguoiGiamHo) {
        nguoiGiamHoRepository.xoaNguoiGiamHo(maNguoiGiamHo);
    }

    @Override
    public void capNhatNguoiGiamHo(NguoiGiamHo nguoiGiamHo) {
        nguoiGiamHoRepository.capNhatNguoiGiamHo(nguoiGiamHo);
    }

    @Override
    public NguoiGiamHo nguoiGiamHo(int maNguoiGiamHo) {
        return nguoiGiamHoRepository.nguoiGiamHo(maNguoiGiamHo);
    }

    @Override
    public boolean soDienThoaiTonTai(String soDienThoai) {
        NguoiGiamHo nguoiGiamHo =nguoiGiamHoRepository.soDienThoaiTonTai(soDienThoai);
        if(nguoiGiamHo == null){
            return true;
        }
        return false;
    }

    @Override
    public boolean nguoiGiamHoKhongTonTai(int maNuoiGiamHo) {
        NguoiGiamHo nguoiGiamHo =nguoiGiamHoRepository.nguoiGiamHo(maNuoiGiamHo);
        if(nguoiGiamHo == null){
            return true;
        }
        return false;
    }
}
