<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>


<html lang="en">
<head>
<title>LMS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">LMS</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">All Books</a></li>
				<li><a href="#">New book</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<c:choose>

			<c:when test=" ${mode == 'BOOK_VIEW' }">
				<h2>Book Details</h2>
				<p>This tables consist of Book details</p>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Id</th>
							<th>Book Name</th>
							<th>Author</th>
							<th>Purchase Date</th>
							<th>Edit</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="book" items="${books}">
							<tr>
								<td>${book.id}</td>
								<td>${book.bookName}</td>
								<td>${book.author}</td>
								<td>${book.purchaseDate}</td>
								<td><a href="updateBook?${book.id }"><div class="glyphicon glyphicon-pencil"></div></a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>

			</c:when>


			<c:when test="${mode == 'BOOK_EDIT' }">
				<form>
					<div class="form-group">
						<input type="hidden" class="form-control" value="${book.id }"
							id="id" name="id"> <label for="bookName">Book
							Name:</label> <input type="text" class="form-control"
							value="${book.bookName }" id="bookName"
							placeholder="Enter Book Name" name="bookName">
					</div>
					<div class="form-group">
						<label for="author">Author:</label> <input type="text"
							class="form-control" value="${book.author }" id="author"
							placeholder="Enter author's Name" name="author">
					</div>
					<div class="form-group">
						<label for="purchaseDate">Purchase Date:</label> <input
							type="text" class="form-control" value="${book.purchaseDate }"
							id="purchaseDate" placeholder="Enter Purchase Date"
							name="purchaseDate">
					</div>

					<button type="submit" class="btn btn-default">Submit</button>
				</form>

			</c:when>
			
			


		</c:choose>

	</div>

</body>
</html>
