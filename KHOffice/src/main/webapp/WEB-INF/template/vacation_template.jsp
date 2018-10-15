<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet"
	href="css/common.css">
</head>
<body>

<div id="roundrobin"> <!-- popup start -->

	<h1>휴&nbsp가&nbsp신&nbsp청&nbsp서</h1>

	<div class="top clearfix">
		<table class="info" width="40%">
			<col width="30%"><col>
			<tr>
				<th>작성자</th>
				<td>박세영</td><!-- 불러오는데이터 -->
			</tr>
			<tr>
				<th>소속</th>
				<td>kh아카데미</td><!-- 불러오는데이터 -->
			</tr>
			<tr>
				<th>직위</th>
				<td>박대리</td><!-- 불러오는데이터 -->
			</tr>
			<tr>
				<th>작성일</th>
				<td>2018.10.08(월)</td><!-- 불러오는데이터 -->
			</tr>
			<tr>
				<th>문서번호</th>
				<td>20181008</td><!-- 불러오는데이터 -->
			</tr>
		</table>

		<table class="sign" width="40%">
			<col width="10%"><col width="10%"><col width="10%">
			<tr class="tr">
				<th>팀장</th>
				<th>부서장</th>
				<th>대표이사</th>
			</tr>
			<tr class="signbox">
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div><!-- top (e) -->

	<div class="content">
		
		<table width="100%">
			<col width="15%"><col>
			<tr>
				<th>업무 대리인</th>
				<td><input type="text"/></td>
			</tr>
			<tr>
				<th><span class="i_red">*</span>휴가 종류</td>
				<td>
					<select>
						<option>선택하세요</option>
						<option>월차</option>
						<option>연차</option>
						<option>휴가</option>
						<option>공가</option>
						<option>병가</option>
					</select>
				</td>
			</tr>
			<tr>
				<th><span class="i_red">*</span>휴가 기간</td>
				<td><input type="date" id="" name=""> ~ <input type="date"><span class="use_date">사용일수 : </span><input><span> 일</span></td>
			</tr>
			<tr class="trh2">
				<th><span class="i_red">*</span>휴가 사유</td>
				<td><textarea></textarea></td>
			</tr>
			
		</table>

	</div><!-- content(e) -->

</div><!-- roundrobin (e) -->

</body>
</html>