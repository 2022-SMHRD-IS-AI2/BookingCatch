<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="board">
		<form action="writeTipBoardCon" method="post" enctype="multipart/form-data">
			<table id="list">
				<tr>
					<td>제목</td>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer"></td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="file" name="filename" style="float: right;"> 
						<textarea name="content" rows="10" rows="10" style=" resize: none;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="reset" value="초기화">
						<input type="submit" value="작성하기">
					</td>
					</tr>
			</table>
		</form>



	</div>

</body>
</html>