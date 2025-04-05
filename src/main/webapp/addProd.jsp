<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset]:hover {
  background-color: #45a049;
}
div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>

<h3>Add Product</h3>

<div>
  <form  method="post" action="Product" >
    <label >Product Id</label>
    <input type="text"  name="prodid"  id="prodid" placeholder="Product Id..">

    <label >Product Name</label>
    <input type="text"  name="prodname" id="prodname" placeholder="Product name..">

    <label >Category</label>
    <select  name="category" id="category">
      <option value="brew">Brew</option>
      <option value="mocha">Mocha</option>
      <option value="americano">Americano</option>
      <option value="cap">Cappuccino</option>
      <option value="latte">Latte</option>
       <option value="esp">Espresso</option> 
    </select>
  <label >Quantity</label>
    <input type="text"  name="qty" id="qty" placeholder="Quantity..">
  <label for="lname">Price</label>
    <input type="text"  name="price" id="price" placeholder="Price..">
    Select File:<input type="file" name="fname" id="fname">
    <input type="submit" value="Submit">
    <input type="reset" value="Clear">
  </form>
</div>

</body>
</html>


