<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../include/openhead.jspf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<link href="https://cdn.jsdelivr.net/npm/daisyui@3.0.4/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>

<style>
.card {
   
}
span{
margin-left:70px;
width:70px;
font-weight: bold;
}



input{
width:200px;
margin-left:20px;

}
</style>
<div class="content-wrapper">
   <div class="card">
      <div class="card-header"
         style="display: flex; justify-content: center;">
         <h3 class="text-bold text-4xl">ID/PWD 찾기
         <i class="fas fa-search"></i>
         </h3>
      </div>
      <div class="card-body" style="background-color: #f1f1f1;">
<%-- <div  class="card card-primary mx-auto" style="width: 600px;">
    <div class="card-header" style="width:100%;">
        <h4 class="card-title">아이디 찾기</h4>
    </div>
    <div class="card-body" style="margin-left: 30px; display: flex; flex-direction: column; justify-content: space-around;">
   <form id="id"action="findId" method="post">
        <div class="mb-2" style="display: flex; align-items: center;">
            <span>이름</span> <input class="form-control col-sm-6" placeholder="이름을 입력해주세요." name="name" type="text" value="${name }">
        </div>
        <div class="mb-2" style="display: flex; align-items: center;">
            <span>전화번호</span> <input class="form-control col-sm-6" placeholder="ex)010-0000-0000" name="phone"type="text" value="${phone }">
        </div>
        <div class="mb-2" style="display: flex; align-items: center;">
            <span>이메일</span> <input  class="form-control col-sm-6" placeholder="example@xxxx.com" name="email"type="text" value="${email }">
        </div>
    </form>
    <div style="margin-right: 50px; display: flex; justify-content: flex-end;">
        <button type="button"onclick="idfind_go()"class="btn btn-block btn-primary col-sm-2" style="height: 40px;">ID찾기</button>
    </div>
    </div>

</div> --%>


<%-- <div class="card card-primary mx-auto" style="width: 600px;">
    <div class="card-header" style="width:100%; ">
        <h4 class="card-title">비밀번호 찾기</h4>
    </div>
    <div class="card-body" style="margin-left: 30px; display: flex; flex-direction: column; justify-content: space-around;">
        <form id="pwd" method="post" action="findPwd">
        <div class="mb-2" style="display: flex; align-items: center;">
        <div class="col-sm-1"></div> 
            <label class="col-sm-2">아이디</label> <input class="form-control col-sm-6" placeholder="아이디를 입력해주세요."   name="id" type="text"value="${id }" >
        <div class="col-sm-2"></div>
        </div>
        <div class="mb-2" style="display: flex; align-items: center;">
        <div class="col-sm-1"></div>
            <label class="col-sm-2">이름</label> <input class="form-control col-sm-6" placeholder="이름을 입력해주세요."name="nameForPwd" type="text" value="${nameForPwd }">
        <div class="col-sm-2"></div>
        </div>
        <div class="mb-2" style="display: flex; align-items: center;">
        <div class="col-sm-1"></div>
            <label class="col-sm-2">전화번호</label>
<input class="form-control col-sm-6"  placeholder="ex)010-0000-0000" name="phoneForPwd"type="text"value="${phoneForPwd }">
        <div class="col-sm-2"></div>
        </div>
        <div class="mb-2" style="display: flex; align-items: center;">
        <div class="col-sm-1"></div>
            <label class="col-sm-2">이메일</label> <input class="form-control col-sm-6" placeholder="example@xxxx.com"name="emailForPwd" type="text" value="${emailForPwd}">
        <div class="col-sm-2"></div>
        </div>
    </form>
    <div style="margin-right: 50px; display: flex; justify-content: flex-end;">
        <button type="button" onclick="pwdfind_go()"class="btn btn-block btn-primary col-sm-3" style="height: 40px;">PWD 찾기</button>
    </div>
    </div>
   

</div> --%>
    

   
   
   
   
   
      <div class="card md:card-side bg-base-100 shadow-xl h-1/2">
  <div class="flex justify-center items-center border-r border-gray-700 bg-blue-100 rounded-l-2xl">
     <h1 class="font-bold text-2xl p-8 cl-signature text-gray-500">&nbsp;&nbsp;아이디 찾기&nbsp;&nbsp;&nbsp;</h1>
  </div>
  <div class="card-body">
    <form id="id"action="findId" method="post">
      <div class="font-bold">이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="이름을 입력해 주세요" name="name" class="input input-bordered w-60 w-full max-w-xs" /></div>
         </br>
      <div class="font-bold">전화번호<input type="text" placeholder="ex)010-0000-0000" name="phone" class="input input-bordered w-60 w-full max-w-xs" /></div>
      </br>
      <div class="font-bold">이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="email"placeholder="example@xxxx.com" class="input input-bordered w-full max-w-xs" /></div>
       </br>
       <div style="margin-right:50px;display:flex; justify-content:flex-end;">
       <button type="button"onclick="idfind_go()"class="btn btn-block btn-primary col-sm-3">ID찾기</button>
       </div>
      </form> 
    
  </div>
</div>



   
      <div class="card md:card-side bg-base-100 shadow-xl h-1/2">
  <div class="flex justify-center items-center border-r border-gray-700 bg-blue-100 rounded-l-2xl">
     <h1 class="font-bold text-2xl p-8 cl-signature text-gray-500">비밀번호 찾기</h1>
  </div>
  <div class="card-body">
      <form id="pwd" method="post" action="findPwd">
      <div class="font-bold">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="id" placeholder="아이디를 입력해 주세요" class="input input-bordered w-60 w-full max-w-xs" /></div>
         </br>
      <div class="font-bold">이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="nameForPwd" placeholder="이름을 입력해 주세요" class="input input-bordered w-60 w-full max-w-xs" /></div>
      </br>
      <div class="font-bold">전화번호<input type="text" placeholder="ex)010-0000-0000" name="phoneForPwd" class="input input-bordered w-full max-w-xs" /></div>
       </br>
       <div class="font-bold">이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="example@xxxx.com" name="emailForPwd" class="input input-bordered w-full max-w-xs" /></div>
       </br>
       <div style="margin-right: 50px; display: flex; justify-content: flex-end;">
        <button type="button" onclick="pwdfind_go()"class="btn btn-block btn-primary col-sm-3" style="height: 40px;">PWD 찾기</button>
       </div>
      </form> 
    
  </div>
</div>
   
     <div style="margin-right:50px;display:flex; justify-content:flex-end;">
      <button onclick="window.close()"class="btn btn-active btn-ghost col-sm-2" style="width:60px; height:40px;">닫기</button>
      </div>
      
         </div>
      
   </div>
   
</div>



<script>
var msg = "${msg}";
if (msg !== null && msg !== "") {
  alert(msg);
}
   

function idfind_go() {
     var name = document.getElementsByName("name")[0].value;
     var phone = document.getElementsByName("phone")[0].value;
     var email = document.getElementsByName("email")[0].value;

     if (name.trim() === "" || phone.trim() === "" || email.trim() === "") {
       alert("이름, 전화번호 및 이메일을 모두 입력해주세요.");
       return;
     }

     // Email validation
     var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
     if (!emailRegex.test(email)) {
       alert("이메일을 올바른 형식으로 입력해주세요. (ex: example@xxxx.com)");
       return;
     }

     // Perform the rest of the logic for finding the ID
     // ...

     // Submit the form
     document.forms["id"].submit();
   }
function pwdfind_go() {
     var id = document.getElementsByName("id")[0].value;
     var nameForPwd = document.getElementsByName("nameForPwd")[0].value;
     var phoneForPwd = document.getElementsByName("phoneForPwd")[0].value;
     var emailForPwd = document.getElementsByName("emailForPwd")[0].value;

     if (id.trim() === "" || nameForPwd.trim() === "" || phoneForPwd.trim() === "" || emailForPwd.trim() === "") {
       alert("아이디, 이름, 전화번호 및 이메일을 모두 입력해주세요.");
       return;
     }
     var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
     if (!emailRegex.test(emailForPwd)) {
       alert("이메일을 올바른 형식으로 입력해주세요. (ex: example@xxxx.com)");
       return;
     }

     // Phone number validation
     var phoneRegex = /^\d{3}-\d{4}-\d{4}$/;
     if (!phoneRegex.test(phoneForPwd)) {
       alert("전화번호를 형식에 맞게 입력해주세요. (ex: 000-0000-0000)");
       return;
     }

     // Perform the rest of the logic for finding the password
     // ...

     // Submit the form
     document.forms["pwd"].submit();
   }
   
   
</script>











<%@include file="../include/openfoot.jspf"%>