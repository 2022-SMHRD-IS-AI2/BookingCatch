<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="TrainerInfoCon">
<table align="center">
        <tr>
            <th>
              트레이너 자기소개
            </th>
        </tr>
     
        <tr>
            <td colspan="2">
                <textarea cols="80" rows="20" name="introduce"></textarea> 
             </td>
        </tr>
        
            <tr>
                <th>
                  트레이너 자격증명
                </th>
            </tr>
         
            <tr>
                <td colspan="2">
                    <textarea cols="80" rows="20" name="certificate"></textarea> 
                 </td>
            </tr>
            
                <tr>
                    <th>
                      트레이너 센터
                    </th>
                </tr>
             
                <tr>
                    <td colspan="2">
                        <textarea cols="80" rows="20"  name="center"></textarea> 
                     </td>
                </tr>
               
                    <tr>
                        <th>
                          트레이너 스케줄
                        </th>
                    </tr>
                 
                    <tr>
                        <td colspan="2">
                            <textarea cols="80" rows="20"  name="schedule"></textarea> 
                         </td>
                    </tr>
                    
                        <tr>
                            <th>
                              트레이너 프로그램
                            </th>
                        </tr>
                     
                        <tr>
                            <td colspan="2">
                                <textarea cols="80" rows="20"  name="program"></textarea> 
                             </td>
                        </tr>
                        <tr>
                            <td>가격 : </td>
                            <td> <input type="text" placeholder=" 입력해주세요 얼마인지 50000만원" name="price"> </td>
                        </tr>
                        <tr>
                            <td>수업방법 여부 :</td>
                            <td>줌으로 수업<input type="checkbox" name="method"></td>
                            <td> 헬스장에서 수업<input type="checkbox" name="method"></td>
                            <td> 직접방문 수업<input type="checkbox" name="method"></td>
                        </tr>
                        <tr>
                            <td>공지사항</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <textarea cols="80" rows="20"  name="notice"></textarea> 
                             </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                               <input name="제출" type="submit">
                             </td>
                        </tr>

    
    </table>
    </form>

</body>
</html>