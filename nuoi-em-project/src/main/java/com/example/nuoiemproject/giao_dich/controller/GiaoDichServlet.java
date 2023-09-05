package com.example.nuoiemproject.giao_dich.controller;

import com.example.nuoiemproject.giao_dich.model.GiaoDich;
import com.example.nuoiemproject.giao_dich.service.GiaoDichService;
import com.example.nuoiemproject.giao_dich.service.IGiaoDichService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

@WebServlet(name = "GiaoDichServlet", value = "/giao-dich")
public class GiaoDichServlet extends HttpServlet {
    private IGiaoDichService service = new GiaoDichService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "them":
                hienThiThem(request, response);
                break;
            default:
                hienThiDanhSach(request, response);
                break;
        }
    }

    private void hienThiThem(HttpServletRequest request, HttpServletResponse response) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/giao-dich-them-moi.jsp");
            try {
                dispatcher.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/giao-dich-danh-sach.jsp");
        try {
            dispatcher.forward(request,response);
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
            case "them":
                themGiaoDich(request, response);
                break;
        }
    }

    private void themGiaoDich(HttpServletRequest request, HttpServletResponse response) {
        String ngayGiaoDich = request.getParameter("ngayGiaoDich");
        String noiDung = request.getParameter("noiDung");
        int maCamKet = Integer.parseInt(request.getParameter("maCamKet"));
        GiaoDich giaoDich = new GiaoDich(ngayGiaoDich,noiDung,maCamKet);
        service.them(giaoDich);
        request.setAttribute("thongBao", "Bạn đã thêm giao dịch thành công!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/giao-dich-them-moi.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


    private void xemDanhSach(HttpServletRequest request, HttpServletResponse response) {
        int thang = Integer.parseInt(request.getParameter("thang"));
        int nam = Integer.parseInt(request.getParameter("nam"));
        List<GiaoDich> danhSachGiaoDich = service.danhSachGiaoDich(thang, nam);
        int tongThu = 0;
        for (int i = 0; i < danhSachGiaoDich.size(); i++) {
            tongThu += danhSachGiaoDich.get(i).getSoTien();
        }
        if(danhSachGiaoDich.isEmpty()){
            String thongBao = "Không có giao dịch phát sinh!";
            request.setAttribute("thongBao",thongBao);
            try {
                request.getRequestDispatcher("/giao-dich-danh-sach.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            request.setAttribute("danhSachGiaoDich",danhSachGiaoDich);
            request.setAttribute("tongThu",tongThu);
            try {
                request.getRequestDispatcher("/giao-dich-danh-sach.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

    }
}
