<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br><br><br><br><br>

<head>
<style>
.supplier {
  margin: 1em 8em;
  width: 80%;
  overflow: hidden;
  background: transparent;
  color: white;
  border-radius: 10px;
  border: 1px solid white;
}
.supplier tr {
  border: 1px solid white;
}
.supplier tr:nth-child(odd) {
  background-color: transparent;
}
.supplier th {
  display: none;
  border: 1px solid white;
  background-color: white;
  color: black;
  padding: 1em;
}
.supplier th:first-child {
  display: table-cell;
  text-align: center;
}
.supplier th:nth-child(2) {
  display: table-cell;
}
.supplier th:nth-child(2) span {
  display: none;
}
.supplier th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {
  .supplier th:nth-child(2) span {
    display: block;
    
  }
  .supplier th:nth-child(2):after {
    display: none;
  }
}
.supplier td {
  display: block;
  word-wrap: break-word;
  max-width: 7em;
}
.supplier td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid white;
}
@media (min-width: 480px) {
  .supplier td {
    border: 1px solid white;
  }
}
.supplier th, .supplier td {
  text-align: left;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .supplier th, .supplier td {
    display: table-cell;
    padding: 1em;
  }
}
a{
color:red;
}
body {
  padding: 0 2em;
  background-image: url("resources/bg/cart.jpg");
}
h1 {
  font-weight: normal;
  color: #024457;
}
h1 span {
  color: #167F92;
}
</style>
</head>
<body>
<table class="supplier">
	<thead>
		<tr>
		<th align="left">S.No</th>
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">ContactNumber</th>
		<th align="left">Edit</th>
		<th align="left">Delete</th>
		</tr>
		 <c:forEach items="${supplierList}" var="supplier" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${supplier.supplierId}</td>
			<td>${supplier.supplierName}</td>
			<td>${supplier.contactNumber}</td>
			<td><a href="editSupplier?supplierId=${supplier.supplierId}">Edit</a></td>
			<td><a href="deleteSupplier?supplierId=${supplier.supplierId}"onclick="return confirm('Are You Sure? Do you Want Delete this Supplier : ${supplier.supplierName} ?')">Delete</a></td>
		</tr>
	</c:forEach>
</table>
</body>