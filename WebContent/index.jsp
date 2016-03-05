<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hemansu.model.WordBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Glosbe Dictionary</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.1.2/material.indigo-pink.min.css">
	<script defer src="https://code.getmdl.io/1.1.2/material.min.js"></script>
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700" type="text/css">
	<style>
		body{
			width:600px;
			margin: 0 auto;
		}
		h3,.meanings{
			font-family: 'Roboto', sans-serif;
		}
		h3{
			font-weight: bold;
		}
	</style>
</head>
<body>
	<!-- Textfield with Floating Label -->
	
	<h3>Glosbe Dictionary</h3>
  	<form action="/GlosbeDictionary/Controller" method="get">
  		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		<input class="mdl-textfield__input" name="wordFeild" type="text" id="sample3" value="<%=request.getAttribute("word")==null?"":request.getAttribute("word")%>">
    		<label class="mdl-textfield__label" for="sample3">Word...</label>
  		</div>
  		<br>
  		<input class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" type="submit" value="submit"/>
	</form>
  	<br>
  	<div class="meanings">
  		<%
  			WordBean wordBeanObj = (WordBean)session.getAttribute("beanObj");
    		if(wordBeanObj!=null && wordBeanObj.getMeaningsList().size()!=0){
    			for(int i=0;i<wordBeanObj.getMeaningsList().size();i++){
  		%>
  		<%=wordBeanObj.getMeaningsList().get(i) %>.<br>
  		<%}} %>
  	</div>
	
	
</body>
</html>