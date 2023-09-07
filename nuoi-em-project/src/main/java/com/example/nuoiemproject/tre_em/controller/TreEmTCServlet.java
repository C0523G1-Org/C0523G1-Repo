package com.example.nuoiemproject.tre_em.controller;

import com.example.nuoiemproject.tre_em.model.TreEmDto;
import com.example.nuoiemproject.tre_em.service.ITreEmService;
import com.example.nuoiemproject.tre_em.service.impl.TreEmService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TreEmTCServlet", value = "/tre-em-tc")
public class TreEmTCServlet extends HttpServlet {
    private ITreEmService treEmService = new TreEmService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        hienThiChiTiet(request, response);
    }

    private void hienThiChiTiet(HttpServletRequest request, HttpServletResponse response) {
        try {
            List<TreEmDto> treEmDtoList = treEmService.hienThiDto();
            if (treEmDtoList.size() == 0){
                request.setAttribute("treEmDto", null);
                request.getRequestDispatcher("tre-em-chi-tiet.jsp").forward(request,response);
            }
            else {
                request.setAttribute("treEmDto", treEmDtoList);
                request.getRequestDispatcher("tre-em-chi-tiet.jsp").forward(request,response);
            }
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
