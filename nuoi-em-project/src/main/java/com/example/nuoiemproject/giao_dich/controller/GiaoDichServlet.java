package com.example.nuoiemproject.giao_dich.controller;

import com.example.nuoiemproject.giao_dich.model.GiaoDich;
import com.example.nuoiemproject.giao_dich.model.GiaoDichChi;
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
            case "themChi":
                hienThiThemChi(request, response);
                break;
            default:
                hienThiDanhSach(request, response);
                break;
        }
    }

    private void hienThiThemChi(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/giao-dich-chi.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
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
            case "themChi":
                themGiaoDichChi(request, response);
                break;
        }
    }

    private void themGiaoDichChi(HttpServletRequest request, HttpServletResponse response) {
        String ngayGiaoDich = request.getParameter("ngayGiaoDich");
        String noiDungGiaoDich = request.getParameter("noiDung");
        int soTien = Integer.parseInt(request.getParameter("soTien"));
        int maGiamHo= Integer.parseInt(request.getParameter("maGiamHo"));
        GiaoDichChi giaoDichChi = new GiaoDichChi(ngayGiaoDich,noiDungGiaoDich,soTien,maGiamHo);
        service.themChi(giaoDichChi);
        request.setAttribute("thongBao","Bạn đã thêm giao dịch thành công!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/giao-dich-chi.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    private void themGiaoDich(HttpServletRequest request, HttpServletResponse response) {
        String ngayGiaoDich = request.getParameter("ngayGiaoDich");
        String noiDung = request.getParameter("noiDung");
        int soTien = Integer.parseInt(request.getParameter("soTien"));
        int maCamKet = Integer.parseInt(request.getParameter("maCamKet"));
        GiaoDich giaoDich = new GiaoDich(ngayGiaoDich,noiDung,soTien,maCamKet);
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
        int thang1 = Integer.parseInt(request.getParameter("thang1"));
        int nam1 = Integer.parseInt(request.getParameter("nam1"));
        List<GiaoDich> danhSachGiaoDich = service.danhSachGiaoDich(thang, nam,thang1,nam1);
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
                request.getRequestDispatcher("/giao-dich-danh-sach.jsp").forward(request,response);
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
                request.getRequestDispatcher("/giao-dich-danh-sach.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

    }
}
