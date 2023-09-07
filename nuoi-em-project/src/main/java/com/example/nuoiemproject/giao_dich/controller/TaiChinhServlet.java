package com.example.nuoiemproject.giao_dich.controller;

import com.example.nuoiemproject.giao_dich.model.GiaoDich;
import com.example.nuoiemproject.giao_dich.service.GiaoDichService;
import com.example.nuoiemproject.giao_dich.service.IGiaoDichService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TaiChinhServlet", value = "/tai-chinh")
public class TaiChinhServlet extends HttpServlet {
    private IGiaoDichService service = new GiaoDichService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            default:
                hienThiDanhSach(request, response);
                break;
        }
    }

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/giao-dich-tai-chinh.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "xem":
                xemDanhSach(request, response);
                break;
        }
    }

    private void xemDanhSach(HttpServletRequest request, HttpServletResponse response) {
        int thang = Integer.parseInt(request.getParameter("thang"));
        int nam = Integer.parseInt(request.getParameter("nam"));
        List<GiaoDich> danhSachGiaoDich = service.danhSachGiaoDich(thang, nam);
        int tongThu = 0;
        int tongChi = 0;
        int chenhLech = 0;
        for (int i = 0; i < danhSachGiaoDich.size(); i++) {
            if(danhSachGiaoDich.get(i).getSoTien() >=0) {
                tongThu += danhSachGiaoDich.get(i).getSoTien();
            } else {
                tongChi += danhSachGiaoDich.get(i).getSoTien();
            }
        }
        chenhLech = tongThu + tongChi;
        if(danhSachGiaoDich.isEmpty()){
            String thongBao = "Không có giao dịch phát sinh!";
            request.setAttribute("thongBao",thongBao);
            try {
                request.getRequestDispatcher("/giao-dich-tai-chinh.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            request.setAttribute("danhSachGiaoDich",danhSachGiaoDich);
            request.setAttribute("tongThu",tongThu);
            request.setAttribute("tongChi",tongChi);
            request.setAttribute("chenhLech",chenhLech);
            try {
                request.getRequestDispatcher("/giao-dich-tai-chinh.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
