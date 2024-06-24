package com.kosa.mall.model;

import java.io.IOException;

import com.kosa.dao.CartDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CartDeleteAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url = "ProductMarket?command=cart_list";
    
    String[] cseqArr = request.getParameterValues("cseq");
    
    for(String cseq:cseqArr){
      System.out.println(cseq);
      CartDAO cartDAO = CartDAO.getInstance();
      cartDAO.deleteCart(Integer.parseInt(cseq));
    }
    request.getRequestDispatcher(url).forward(request, response);
  }
}
