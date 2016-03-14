package hemansu.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hemansu.fetch.FetchMeanings;
import hemansu.model.WordBean;

/**
 * Servlet implementation class Controller
 */
@WebServlet(urlPatterns={"/Controller","/GlosbeDictionary/Controller"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String word = request.getParameter("wordFeild");
		WordBean bean = new WordBean();
		FetchMeanings fetchObj = new FetchMeanings();
		ArrayList<String> meaningList = fetchObj.fetchMeanings(word);
		bean.setWord(word);
		bean.setMeaningsList(meaningList);
		session.setAttribute("beanObj",bean);
		request.setAttribute("word", word);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
