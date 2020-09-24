package adm.restaurante.controlador;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adm.restaurante.modelo.Restaurante;

/**
 * Servlet implementation class ListarLibros
 */
@WebServlet("/ListarRestaurantes")
public class ListarRestaurantes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@PersistenceContext (unitName="restaurantesPU")
	private EntityManager em;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarRestaurantes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Query q = em.createQuery("Select r from Restaurante as r", Restaurante.class);
		
		List<Restaurante> restaurantes= q.getResultList();
		
		request.setAttribute("restaurantes",restaurantes);
		
		request.getRequestDispatcher("listarRestaurantes.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
