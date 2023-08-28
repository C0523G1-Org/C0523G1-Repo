package com.example.nuoiemproject.khu_vuc.repository.impl;

import com.example.nuoiemproject.khu_vuc.model.KhuVuc;
import com.example.nuoiemproject.khu_vuc.repository.IKhuVucRepo;
import com.example.nuoiemproject.tre_em.repository.impl.BaseRepo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class KhuVucRepo implements IKhuVucRepo {
    private static final String TRUY_VAN_KHU_VUC = "select * from khu_vuc ";

    @Override
    public List<KhuVuc> hienThiKhuVuc() {
        List<KhuVuc> khuVucList = new ArrayList<>();
        Connection connection = BaseRepo.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TRUY_VAN_KHU_VUC);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int maKhuVuc = resultSet.getInt("ma_khu_vuc");
                String tenKhuVuc = resultSet.getString("ten_khu_vuc");
                khuVucList.add(new KhuVuc(maKhuVuc, tenKhuVuc));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
