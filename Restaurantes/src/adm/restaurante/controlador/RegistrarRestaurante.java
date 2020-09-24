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
 * Servlet implementation class RegistroRestaurante
 */
@Transactional
@WebServlet("/RegistrarRestaurante")
public class RegistrarRestaurante extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@PersistenceContext (unitName="restaurantesPU")
	private EntityManager em;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarRestaurante() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre=request.getParameter("nombre");
		String direccion=request.getParameter("direccion");
		String horario=request.getParameter("horario");
		String telefono=request.getParameter("telefono");
		String login=request.getParameter("login");
		
		System.out.println("Datos del restaurante a guardar: nombre:" + nombre 
				 + " direccion: " + direccion+ " horario:" + horario + "telefono:" + telefono);
		
		if (nombre.trim().equals("") || telefono.trim().equals("")) {
			request.setAttribute("valNombre",nombre);
			request.setAttribute("valDireccion",direccion);
			request.setAttribute("valHorario",horario);
			request.setAttribute("valTelefono", telefono);
			request.setAttribute("valError","Nombre o teléfono sin llenar");
			
			request.getRequestDispatcher("registrarRestaurante.jsp").forward(request,response);			
		}else {
			
			Restaurante r = new Restaurante();
			r.setNombre(nombre);
			r.setDireccion(direccion);			
			r.setHorario(horario);			
			r.setTelefono(telefono);
			em.persist(r);
			
			request.getRequestDispatcher("ListarRestaurantes").forward(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
