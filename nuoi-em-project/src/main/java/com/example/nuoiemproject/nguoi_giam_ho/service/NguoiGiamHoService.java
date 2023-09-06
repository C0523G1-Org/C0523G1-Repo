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

    }

    @Override
    public void capNhatNguoiGiamHo(NguoiGiamHo nguoiGiamHo) {

    }
}
