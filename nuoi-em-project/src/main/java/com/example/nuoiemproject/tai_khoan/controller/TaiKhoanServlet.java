package com.example.nuoiemproject.tai_khoan.controller;

import com.example.nuoiemproject.tai_khoan.model.TaiKhoan;
import com.example.nuoiemproject.tai_khoan.service.ITaiKhoanService;
import com.example.nuoiemproject.tai_khoan.service.impl.TaiKhoanService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "TaiKhoanServlet", value = "/tai-khoan")
public class TaiKhoanServlet extends HttpServlet {
    private ITaiKhoanService service = new TaiKhoanService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "hienThi":
                hienThiDanhSach(request, response);
                break;
            case "suaTaiKhoan":
                hienThiSuaTaiKhoan(request, response);
                break;
            case "themTaiKhoan":
                hienThiThemThaiKhoan(request, response);
                break;
            case "timThongTinTaiKhoan":
                hienThiTimThongTinTaiKhoan(request, response);
                break;
        }
    }

    private void hienThiTimThongTinTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("id", id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("tai-khoan-tim-thong-tin.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiThemThaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/tai-khoan-them-tai-khoan");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiSuaTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        TaiKhoan taiKhoan = this.service.timTaiKhoan(id);
        request.setAttribute("taiKhoan", taiKhoan);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/tai-khoan-sua-tai-khoan.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void hienThiDanhSach(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/tai-khoan-hien-thi-danh-sach.jsp");
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
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "suaTaiKhoan":
                suaTaiKhoan(request, response);
                break;
            case "themTaiKhoan":
                themTaiKhoan(request, response);
                break;
            case "xoaTaiKhoan":
                xoaTaiKhoan(request, response);
                break;
            case "timThongTinTaiKhoan":
                timThongTinTaiKhoan(request, response);
                break;
        }
    }

    private void timThongTinTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        TaiKhoan taiKhoan = this.service.timTaiKhoan(id);
        request.setAttribute("taiKhoan",taiKhoan);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/tai-khoan-tim-thong-tin.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void xoaTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        this.service.xoaTaiKhoan(id);
        try {
            response.sendRedirect("tai-khoan-hien-thi-danh-sach.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    private void themTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        String tenTaiKhoan = request.getParameter("tenTaiKhoan");
        String matKhau = request.getParameter("matKhau");
        TaiKhoan taiKhoan = new TaiKhoan(tenTaiKhoan, matKhau, false);
        this.service.themTaiKhoan(taiKhoan);
        try {
            response.sendRedirect("/trang-chu.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void suaTaiKhoan(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String tenTaiKhoan = request.getParameter("tenTaiKhoan");
        String matKhau = request.getParameter("matKhau");
        TaiKhoan capNhat = new TaiKhoan(id, tenTaiKhoan, matKhau, false);
        this.service.suaTaiKhoan(capNhat);
        try {
            response.sendRedirect("/tai-khoan-hien-thi-danh-sach.jsp");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}