package adm.restaurante.controlador;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import adm.restaurante.modelo.Restaurante;

/**
 * Servlet implementation class EditarRestaurante
 */
@Transactional
@WebServlet("/EditarRestaurante")
public class EditarRestaurante extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@PersistenceContext (unitName="restaurantesPU")
	private EntityManager em;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarRestaurante() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idStr=request.getParameter("id");
		
		Restaurante r=em.find(Restaurante.class, new Integer(idStr));
		request.setAttribute("valId", idStr);
		request.setAttribute("valTitulo", r.getNombre());
		request.setAttribute("valAutor", r.getDireccion());
		request.setAttribute("valResumen", r.getHorario());
		request.setAttribute("valResumen", r.getTelefono());
		request.getRequestDispatcher("editarRestaurante.jsp").forward(request, response);
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
