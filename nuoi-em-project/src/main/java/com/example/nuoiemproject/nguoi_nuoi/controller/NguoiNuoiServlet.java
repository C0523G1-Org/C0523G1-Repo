package com.example.nuoiemproject.nguoi_nuoi.controller;

import com.example.nuoiemproject.nguoi_nuoi.model.NguoiNuoi;
import com.example.nuoiemproject.nguoi_nuoi.service.INguoiNuoiService;
import com.example.nuoiemproject.nguoi_nuoi.service.NguoiNuoiService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

@WebServlet(name = "NguoiNuoiServlet", value = "/nguoi-nuoi")
public class NguoiNuoiServlet extends HttpServlet {
    private INguoiNuoiService service = new NguoiNuoiService();

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
            case "sua":
                hienThiSua(request, response);
                break;
            default:
                hienThiDanhSach(request, response);
                break;
        }
    }

    private void hienThiSua(HttpServletRequest request, HttpServletResponse response) {
        int maNguoiNuoi = Integer.parseInt(request.getParameter("maNguoiNuoi"));
        NguoiNuoi nguoiNuoi = service.xemChiTiet(maNguoiNuoi);
        request.setAttribute("nguoiNuoi", nguoiNuoi);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/sua-thong-tin-nguoi-nuoi.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) {
        List<NguoiNuoi> danhSach = service.hienThiDanhSach();
        request.setAttribute("danhSach", danhSach);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/danh-sach-nguoi-nuoi.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiThem(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/them-moi-nguoi-nuoi.jsp");
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
            case "them":
                themNguoiNuoi(request, response);
                break;
            case "xoa":
                xoaNguoiNuoi(request, response);
                break;
            case "sua":
                suaNguoiNuoi(request, response);
                break;
        }
    }

    private void suaNguoiNuoi(HttpServletRequest request, HttpServletResponse response) {
        int maNguoiNuoi = Integer.parseInt(request.getParameter("maNguoiNuoi"));
        String tenNguoiNuoi = request.getParameter("tenNguoiNuoi");
        int gioiTinh = Integer.parseInt(request.getParameter("gioiTinh"));
        int maTaiKhoan = Integer.parseInt(request.getParameter("maTaiKhoan"));
        int soDienThoai = Integer.parseInt(request.getParameter("soDienThoai"));
        String email = request.getParameter("email");
        service.sua(new NguoiNuoi(maNguoiNuoi,tenNguoiNuoi,gioiTinh,maTaiKhoan,soDienThoai,email));
        try {
            response.sendRedirect("/nguoi-nuoi");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void xoaNguoiNuoi(HttpServletRequest request, HttpServletResponse response) {
        int ma_nguoi_nuoi = Integer.parseInt(request.getParameter("xoa_ma"));
        service.xoa(ma_nguoi_nuoi);
        try {
            response.sendRedirect("/nguoi_nuoi");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void themNguoiNuoi(HttpServletRequest request, HttpServletResponse response) {
        String tenNguoiNuoi = request.getParameter("tenNguoiNuoi");
        int gioiTinh = Integer.parseInt(request.getParameter("gioiTinh"));
        int maTaiKhoan = Integer.parseInt(request.getParameter("maTaiKhoan"));
        int soDienThoai = Integer.parseInt(request.getParameter("soDienThoai"));
        String email = request.getParameter("email");
        service.them(new NguoiNuoi(tenNguoiNuoi, gioiTinh, maTaiKhoan, soDienThoai, email));
        try {
            response.sendRedirect("/nguoi-nuoi");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
