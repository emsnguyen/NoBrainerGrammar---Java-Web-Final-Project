<%-- 
    Document   : addquestion
    Created on : Mar 14, 2018, 11:33:55 PM
    Author     : emsnguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Thêm câu hỏi</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body>

<h3>Thêm câu hỏi mới</h3>

<div class="container">
  <form action="addquestion" method="POST">
    <label for="category">Loại ngữ pháp</label>
      <select name="categoryID" id="category">
        <c:forEach var='c' items="${cats}">
              <option value="${c.categoryID}">${c.categoryName}</option>
          </c:forEach>
      </select>
      <br/>
    <label for="level">Độ khó</label>
      <select name="level" id="level">
          <option value="1">Dễ</option>
          <option value="2">Trung bình</option>
          <option value="3">Khó</option>
      </select>
    <br/>
    <label for="quiz">Câu hỏi</label>
    <input type="text" id="quiz" name="quiz" placeholder="I am a ... student."/>

    <label for="optA">Đáp án A</label>
    <input type="text" id="optA" name="optA" required/>

    <label for="optB">Đáp án B</label>
    <input type="text" id="optB" name="optB" required/>
    
    <label for="optC">Đáp án C</label>
    <input type="text" id="optC" name="optC" required/>
    
    <label for="optC">Đáp án D</label>
    <input type="text" id="optD" name="optD" required/>
    
    <label for="correctOpt">Đáp án đúng</label>
    <select name="correctOpt" id="correctOpt">
      <option value="A">A</option>
      <option value="B">B</option>
      <option value="C">C</option>
      <option value="D">D</option>
    </select>

    <label for="subject">Giải thích</label>
    <textarea id="subject" name="explanation" placeholder="Giải thích thêm về câu hỏi
              và đáp án.." style="height:200px"></textarea>

    <input type="submit" value="Lưu lại"/>
  </form>
    <audio controls style="display:none" controls loop autoplay="true">
        <source src="audio/DuongMotChieuBeat-HuynhTu-4615457.mp3" type="audio/mpeg">
        Your browser does not support the <code>audio</code> tag.
    </audio>
</div>

</body>
</html>