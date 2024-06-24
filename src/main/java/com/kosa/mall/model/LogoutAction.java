package com.kosa.mall.model;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogoutAction implements Action {

  @Override
  public void execute(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String url="ProductMarket?command=index";
    
    HttpSession session=request.getSession(false);
    if(session!=null){
      session.invalidate();
    }    
    
    request.getRequestDispatcher(url).forward(request, response);  
  }
}
