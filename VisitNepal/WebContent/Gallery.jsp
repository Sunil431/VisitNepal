<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial;
}

.header {
  text-align: center;
  padding: 32px;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  padding: 0 4px;
}

/* Create four equal columns that sits next to each other */
.column {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
  max-width: 25%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
  width: 100%;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 800px) {
  .column {
    -ms-flex: 50%;
    flex: 50%;
    max-width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    -ms-flex: 100%;
    flex: 100%;
    max-width: 100%;
  }
}
</style>
<body>

<!-- Header -->
<div class="header">
  <h1>GALLERY</h1>
  <p>Pictures From Nepal</p>
</div>

<!-- Photo Grid -->
<div class="row"> 
  <div class="column">
    <img src="a.jpg" style="width:100%">
    <img src="b.jpg" style="width:100%">
    <img src="c.jpg" style="width:100%">
    <img src="d.jpg" style="width:100%">
    <img src="e.jpg" style="width:100%">
    <img src="t.jpg" style="width:100%">
    <img src="y.jpg" style="width:100%">
  </div>
  <div class="column">
    <img src="q.jpg" style="width:100%">
    <img src="p.jpg" style="width:100%">
    <img src="d.jpg" style="width:100%">
    <img src="a.jpg" style="width:100%">
    <img src="u.jpg" style="width:100%">
    <img src="m.jpg" style="width:100%">
  </div>  
  <div class="column">
    <img src="mb.jpg" style="width:100%">
    <img src="nepa.jpg" style="width:100%">
    <img src="nepal.jpg" style="width:100%">
    <img src="nepals.jpg" style="width:100%">
    <img src="ind.jpg" style="width:100%">
    <img src="nep.jpg" style="width:100%">
    <img src="a.jpg" style="width:100%">
  </div>
  <div class="column">
    <img src="t.jpg" style="width:100%">
    <img src="flag.jpg" style="width:100%">
    <img src="d.jpg" style="width:100%">
    <img src="gai.jpg" style="width:100%">
    <img src="boa.jpg" style="width:100%">
    <img src="bo.jpg" style="width:100%">
  </div>
</div>

</body>
</html>