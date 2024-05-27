<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xml:lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Online Banking</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Tangerine">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Material+Icons+Outlined"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	String username=(String)session.getAttribute("username");
	String role=(String)session.getAttribute("role");
	if(username==null || session.getAttribute("role")==null){response.sendRedirect("login.jsp");}
	else{
	%>
	<%@include file="navbar.jsp" %>
	<div class="container">
	<%
			String result = (String) session.getAttribute("message");
		session.removeAttribute("message");
		if (result != null ) {
		%>
		<div
			class="alert alert-success alert-dismissible fade show text-center position-relative top-50 start-50 w-25 translate-middle"
			role="alert">
			<strong><%=result %></strong>
			<button type="button" class="btn-close" data-dismiss="alert"
				aria-label="Close" style="float: right;">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<%}%>
        <div class="row">
          <div class=" col-lg-12 col-sm-12">
            <div class="row">     
           	
            <%if(role.equalsIgnoreCase("USER")){ %>
              <div class="col-md-4">
                <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                  <img
                    src="https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2017/07/Recover-Windows-Profile-Featured.jpg?q=50&fit=contain&w=767&h=384&dpr=1.5"
                    class="card-img-top" style="height: 250px;" alt="">
                  <div class="card-body text-center">
                    <h5 class="card-title text-center fw-bold">Edit your Profile</h5>
                    <hr>
                    <p class="text-center lead">Customize your profile, update your profile at an instant</p>
                    <a href="<%=request.getContextPath() %>/views/editusers.jsp?username=<%=username %>" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                  </div>
                </div>
              </div>
              
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="https://akm-img-a-in.tosshub.com/indiatoday/images/story/202009/Apps_money_pixabay_1200x768.png?Drr2AP9.GLBEwaC5rdN9hTD6529hJZCR&size=770:433" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">Fund Transfer</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>Do the transaction fastly and securely at an instant</span>
                  </p>
                  <a href="<%=request.getContextPath()%>/views/fundtransfer.jsp" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="data:image/jpeg;base64,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" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">View Loans Status</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want view all loans status click below button</span>
                  </p>
                  <a href="<%=request.getContextPath() %>/views/UserHandler?action=getloansbyuserid" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="https://mpng.subpng.com/20180617/grg/kisspng-mortgage-loan-bank-title-loan-credit-score-business-loan-5b2651dae433b9.8762204915292379789347.jpg" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">View Accepted Loans</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want to view all accepted loans click below button</span>
                  </p>
                  <a href="<%=request.getContextPath() %>/views/UserHandler?action=getallacceptedloansbyuserid" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="data:image/jpeg;base64,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" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">View Tickets Status</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want view all Ticket status click below button</span>
                  </p>
                  <a href="<%=request.getContextPath() %>/views/UserHandler?action=getticketsbyuserid" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="data:image/jpeg;base64,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" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">Raise New Ticket</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want to raise new ticket for your query click below button</span>
                  </p>
                  <a href="<%=request.getContextPath()%>/asknewticket" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="data:image/jpeg;base64,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" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">Ask New loan</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want to Ask new loan click below button</span>
                  </p>
                  <a href="<%=request.getContextPath() %>/views/NewLoan.jsp" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            

            <%}
           	if(role.equalsIgnoreCase("MANAGER")){ %>
           	
           	<div class="col-md-4">
                <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                  <img
                    src="https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2017/07/Recover-Windows-Profile-Featured.jpg?q=50&fit=contain&w=767&h=384&dpr=1.5"
                    class="card-img-top"  style="height: 250px;" alt="Edit Users">
                  <div class="card-body text-center">
                    <h5 class="card-title text-center fw-bold">View Your Details</h5>
                    <hr>
                    <p class="text-center lead">View your Personal details or Update your details</p>
                    <a href="<%=request.getContextPath() %>/GetManager" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                  </div>
                </div>
              </div>
           	
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8S5jxoHIsKLKSEzM56MrWLcU6UzN6EDoFDQ&usqp=CAU"
                  class="card-img-top" style="height: 250px;" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">Modify User Details</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>View user details and add,delete or update User data</span>
                  </p>
                  <a href="<%=request.getContextPath()%>/GetAllUsers" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            <div class="col-md-4">
                <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                  <img
                    src="https://thumbs.dreamstime.com/b/account-login-password-key-computer-man-near-vector-male-character-design-concept-landing-page-web-poster-banner-184009994.jpg"
                    class="card-img-top"  style="height: 250px;" alt="">
                  <div class="card-body text-center">
                    <h5 class="card-title text-center fw-bold">Modify User Account</h5>
                    <hr>
                    <p class="text-center lead">View user account details and add,delete or update user information</p>
                    <a href="<%=request.getContextPath() %>/GetAllAccount" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                  </div>
                </div>
              </div>
              
              <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="data:image/png;base64,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" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">view pending loans</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want to view all Pending loans click below button</span>
                  </p>
                  <a href="<%=request.getContextPath() %>/views/UserHandler?action=getallpendingloans" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="data:image/png;base64,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" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">view pending Tickets</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want to view all Pending Tickets click below button</span>
                  </p>
                  <a href="<%=request.getContextPath() %>/views/UserHandler?action=getallpendingtickets" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="https://mpng.subpng.com/20180617/grg/kisspng-mortgage-loan-bank-title-loan-credit-score-business-loan-5b2651dae433b9.8762204915292379789347.jpg" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">view accepted loans</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want to view all accepted loans click below button</span>
                  </p>
                  <a href="<%=request.getContextPath() %>/views/UserHandler?action=getallacceptedloans" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            

            <%}
            if(role.equalsIgnoreCase("USER")){ %>
            
            	<div class="col-md-4">
                <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                  <img
                    src="https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2017/07/Recover-Windows-Profile-Featured.jpg?q=50&fit=contain&w=767&h=384&dpr=1.5"
                    class="card-img-top"  style="height: 250px;" alt="Edit Users">
                  <div class="card-body text-center">
                    <h5 class="card-title text-center fw-bold">View Your Details</h5>
                    <hr>
                    <p class="text-center lead">View your Personal details or Update your details</p>
                    <a href="<%=request.getContextPath() %>/GetAdmin" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                  </div>
                </div>
              </div>
            	
              	<div class="col-md-4">
                <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                  <img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8S5jxoHIsKLKSEzM56MrWLcU6UzN6EDoFDQ&usqp=CAU"
                    class="card-img-top"  style="height: 250px;" alt="Edit Users">
                  <div class="card-body text-center">
                    <h5 class="card-title text-center fw-bold">Modify Users Details</h5>
                    <hr>
                    <p class="text-center lead">View user details and add,delete or update User data</p>
                    <a href="<%=request.getContextPath() %>/GetAllUsers" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                  </div>
                </div>
              </div>
              
              <div class="col-md-4">
                <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                  <img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe_e8_a5InRoFVDnU_O8EpYndxlQyqcyqKZQ&usqp=CAU
                    class="card-img-top"  style="height: 250px;" alt="Edit Users">
                  <div class="card-body text-center">
                    <h5 class="card-title text-center fw-bold">Modify Manager Details</h5>
                    <hr>
                    <p class="text-center lead">View Manager details and add,delete or update Manager data</p>
                    <a href="<%=request.getContextPath() %>/GetManager" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                  </div>
                </div>
              </div>
              
              
              <div class="col-md-4">
                <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                  <img
                    src="https://thumbs.dreamstime.com/b/account-login-password-key-computer-man-near-vector-male-character-design-concept-landing-page-web-poster-banner-184009994.jpg"
                    class="card-img-top"  style="height: 250px;" alt="">
                  <div class="card-body text-center">
                    <h5 class="card-title text-center fw-bold">Modify User Account</h5>
                    <hr>
                    <p class="text-center lead">View user account details and add,delete or update user information</p>
                    <a href="<%=request.getContextPath() %>/GetAllAccount" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                  </div>
                </div>
              </div>
              
              <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYPRAtt17XJkvMDtY2h65JNpDXxVLqmpjD2Q&usqp=CAU" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">view all tickets</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want to view all tickets click below button</span>
                  </p>
                  <a href="<%=request.getContextPath() %>/views/UserHandler?action=getalltickets" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            
            <div class="col-md-4">
              <div class="card shadow bg-body border-primary rounded " style="width: 25rem;">
                <img src="https://mpng.subpng.com/20180617/grg/kisspng-mortgage-loan-bank-title-loan-credit-score-business-loan-5b2651dae433b9.8762204915292379789347.jpg" style="height: 250px;"
                  class="card-img-top" alt="">
                <div class="card-body text-center">
                  <h5 class="card-title text-center fw-bold">view accepted Loans</h5>
                  <hr>
                  <p class="text-center lead">
                    <span>If you want to view all tickets click below button</span>
                  </p>
                  <a href="<%=request.getContextPath() %>/views/UserHandler?action=getallacceptedloans" class="btn btn-outline-primary btn-rounded"><span class="dark">Click here</span></a>
                </div>
              </div>
            </div>
            
            
			
              <%}%>
            </div>
          </div>
        </div>
      </div>
	<%}%>
</body>
</html>