package com.example.nuoiemproject.tre_em.repository.impl;

import com.example.nuoiemproject.BaseRepo;
import com.example.nuoiemproject.khu_vuc.model.KhuVuc;
import com.example.nuoiemproject.tre_em.model.HinhAnhTreEm;
import com.example.nuoiemproject.tre_em.repository.IHinhAnTreEmRepo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HinhAnhTreEmRepo implements IHinhAnTreEmRepo {
    private static final String TRUY_VAN_HINH_ANH = " select * from hinh_anh";

    @Override
    public List<HinhAnhTreEm> hienThiHinhAnh() {
        List<HinhAnhTreEm> anhTreEmList = new ArrayList<>();
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TRUY_VAN_HINH_ANH);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maHinhAnh = resultSet.getInt("ma_hinh_anh");
                String nguonHinhAnh = resultSet.getString("nguon_hinh_anh");
                anhTreEmList.add(new HinhAnhTreEm(maHinhAnh, nguonHinhAnh));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
