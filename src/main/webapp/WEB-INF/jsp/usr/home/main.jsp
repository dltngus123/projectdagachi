<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageTitle" value="메인" />

<%@include file="/WEB-INF/jsp/include/head.jspf" %>
<!-- jquery CDN -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- fullcalendar CDN -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script>
  <!-- fullcalendar 언어 CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.min.js'></script>
  <!-- moment?쓰려고 가져옴 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

<style>
  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

  .progress {
    width: 100%;
    background-color: #f1f1f1;
    border-radius: 5px;
  }

  .progress-bar {
    width: 0%;
    height: 20px;
    background-color: #4CAF50;
    border-radius: 5px;
    transition: width 0.5s ease-in-out;
  }
</style>



<div class="content-wrapper">
  <div class="row" style="padding-top: 60px;">
    <div class="col-7">
      <div class="row m-4" style="width:100%;">
        <nav class="">
          <div class="nav nav-tabs" id="product-tab" role="tablist">
            <a class="nav-item nav-link active" id="approval-list-tab" data-toggle="tab" href="#approval-list" role="tab" aria-controls="approval-list" aria-selected="true">결재 목록</a>
            <a class="nav-item nav-link" id="approval-success-list-tab" data-toggle="tab" href="#approval-success-list" role="tab" aria-controls="approval-success-list" aria-selected="false">결재 승인 목록</a>
            <a class="nav-item nav-link" id="approval-false-list-tab" data-toggle="tab" href="#approval-false-list" role="tab" aria-controls="approval-false-list" aria-selected="false">결재 반려 목록</a>
          </div>
        </nav>
        <div class="tab-content" style="width:100%;" id="nav-tabContent">
          <div class="tab-pane fade show active" id="approval-list" role="tabpanel" aria-labelledby="product-desc-tab">
            <div class="card">
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th style="width:5%;">문서 번호</th>
                      <th style="width:40%;">문서 제목</th>
                      <th style="width:10%;">결재 날자</th>
                      <th style="width:5%;">첨부파일</th>
                      <th style="width:10%;">최초 결재자</th>
                      <th style="width:10%;">중간 결재자</th>
                      <th style="width:10%;">최종 결재자</th>
                      <th style="width:10%;">결재 상태</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:set var="count" value="0" />

                    <c:forEach var="test" items="${tests}">
                      <c:if test="${count lt 5}">
                        <tr>
                          <td>${test.tno}</td>
                          <td><a href="#" onclick="" style="color:black;">${test.title}</a></td>
                          <td>${test.date}</td>
                          <td style="text-align:center;">
                            <c:if test="${test.type ne null}">
                              <i class='fa fa-file'></i> <!-- Add your file icon element here -->
                            </c:if>
                          </td>
                          <td>${test.name}</td>
                          <td>${test.name}</td>
                          <td>${test.name}</td>
                          <td>
                            <c:choose>
                              <c:when test="${test.status eq 1}">대기</c:when>
                              <c:when test="${test.status eq 2}">승인</c:when>
                              <c:when test="${test.status eq 3}">반려</c:when>
                              <c:otherwise>Unknown</c:otherwise>
                            </c:choose>
                          </td>
                        </tr>
                        <c:set var="count" value="${count + 1}" />
                      </c:if>
                    </c:forEach>

                    <c:if test="${empty tests}">
                      <tr>
                        <td colspan="8">결재 내역이 없습니다.</td>
                      </tr>
                    </c:if>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="approval-success-list" role="tabpanel" aria-labelledby="product-comments-tab">
            <div class="card">
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th style="width:5%;">문서 번호</th>
                      <th style="width:40%;">문서 제목</th>
                      <th style="width:10%;">결재 날자</th>
                      <th style="width:5%;">첨부파일</th>
                      <th style="width:10%;">최초 결재자</th>
                      <th style="width:10%;">중간 결재자</th>
                      <th style="width:10%;">최종 결재자</th>
                      <th style="width:10%;">결재 상태</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:set var="count" value="0" />

                    <c:forEach var="test" items="${tests}">
                      <c:if test="${count lt 5}">
                      	<c:if test="${test.status eq 2}">
                        <tr>
                          <td>${test.tno}</td>
                          <td><a href="#" onclick="" style="color:black;">${test.title}</a></td>
                          <td>${test.date}</td>
                          <td style="text-align:center;">
                            <c:if test="${test.type ne null}">
                              <i class='fa fa-file'></i> <!-- Add your file icon element here -->
                            </c:if>
                          </td>
                          <td>${test.name}</td>
                          <td>${test.name}</td>
                          <td>${test.name}</td>
                          <td>
                            <c:if test="${test.status eq 2}">승인</c:if>
                          </td>
                        </tr>
                        <c:set var="count" value="${count + 1}" />
                        </c:if>
                      </c:if>
                    </c:forEach>
                    <c:if test="${empty tests}">
                      <tr>
                        <td colspan="8">승인된 결재 내역이 없습니다.</td>
                      </tr>
                    </c:if>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="approval-false-list" role="tabpanel" aria-labelledby="product-rating-tab">
            <div class="card">
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th style="width:5%;">문서 번호</th>
                      <th style="width:40%;">문서 제목</th>
                      <th style="width:10%;">결재 날자</th>
                      <th style="width:5%;">첨부파일</th>
                      <th style="width:10%;">최초 결재자</th>
                      <th style="width:10%;">중간 결재자</th>
                      <th style="width:10%;">최종 결재자</th>
                      <th style="width:10%;">결재 상태</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:set var="count" value="0" />

                    <c:forEach var="test" items="${tests}">
                      <c:if test="${count lt 5}">
                      	<c:if test="${test.status eq 3}">
                        <tr>
                          <td>${test.tno}</td>
                          <td><a href="#" onclick="" style="color:black;">${test.title}</a></td>
                          <td>${test.date}</td>
                          <td style="text-align:center;">
                            <c:if test="${test.type ne null}">
                              <i class='fa fa-file'></i> <!-- Add your file icon element here -->
                            </c:if>
                          </td>
                          <td>${test.name}</td>
                          <td>${test.name}</td>
                          <td>${test.name}</td>
                          <td>
                            <c:if test="${test.status eq 3}">반려</c:if>
                          </td>
                        </tr>
                        <c:set var="count" value="${count + 1}" />
                        </c:if>
                      </c:if>
                    </c:forEach>
                    <c:if test="${empty tests}">
                      <tr>
                        <td colspan="8">반려된 결재 내역이 없습니다.</td>
                      </tr>
                    </c:if>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row m-4" style="width:100%;">
        <nav class="">
          <div class="nav nav-tabs" id="product-tab" role="tablist">
            <a class="nav-item nav-link active" id="project-send-tab" data-toggle="tab" href="#project-send" role="tab" aria-controls="project-send" aria-selected="true">받은 요청 목록</a>
            <a class="nav-item nav-link" id="project-receive-tab" data-toggle="tab" href="#project-receive" role="tab" aria-controls="project-receive" aria-selected="false">보낸 요청 목록</a>
          </div>
        </nav>
        <div class="tab-content" style="width:100%;" id="nav-tabContent">
          <div class="tab-pane fade show active" id="project-send" role="tabpanel" aria-labelledby="product-desc-tab">
            <div class="card">
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th style="width:5%;">요청 번호</th>
                      <th>요청 제목</th>
                      <th style="width:10%;">요청 날자</th>
                      <th style="width:5%;">첨부파일</th>
                      <th style="width:10%;">요청자</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:set var="count" value="0" />

                    <c:forEach var="test" items="${tests}">
                      <c:if test="${count lt 5}">
                        <tr>
                          <td>${test.tno}</td>
                          <td><a href="#" onclick="" style="color:black;">${test.title}</a></td>
                          <td>${test.date}</td>
                          <td style="text-align:center;">
                            <c:if test="${test.type ne null}">
                              <i class='fa fa-file'></i> <!-- Add your file icon element here -->
                            </c:if>
                          </td>
                          <td>${test.name}</td>
                        </tr>
                        <c:set var="count" value="${count + 1}" />
                      </c:if>
                    </c:forEach>
                    <c:if test="${empty tests}">
                      <tr>
                        <td colspan="8">받은 요청이 없습니다.</td>
                      </tr>
                    </c:if>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="project-receive" role="tabpanel" aria-labelledby="product-comments-tab">
            <div class="card">
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th style="width:5%;">요청 번호</th>
                      <th>요청 제목</th>
                      <th style="width:10%;">요청 날자</th>
                      <th style="width:5%;">첨부파일</th>
                      <th style="width:10%;">요청자</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:set var="count" value="0" />

                    <c:forEach var="test" items="${tests}">
                      <c:if test="${count lt 5}">
                        <tr>
                          <td>${test.tno}</td>
                          <td><a href="#" onclick="" style="color:black;">${test.title}</a></td>
                          <td>${test.date}</td>
                          <td style="text-align:center;">
                            <c:if test="${test.type ne null}">
                              <i class='fa fa-file'></i> <!-- Add your file icon element here -->
                            </c:if>
                          </td>
                          <td>${test.name}</td>
                        </tr>
                        <c:set var="count" value="${count + 1}" />
                      </c:if>
                    </c:forEach>
                    <c:if test="${empty tests}">
                      <tr>
                        <td colspan="8">보낸 요청이 없습니다.</td>
                      </tr>
                    </c:if>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row m-4 w-100">
        <div class="col-6 pl-0">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">업무 진행도</h3>
            </div>
            <div class="card-body table-responsive p-0">
              <table class="table table-hover text-nowrap">
                <thead>
                  <tr>
                    <th style="width:20px;">번호</th>
                    <th>제목</th>
                    <th>진척도</th>
                  </tr>
                </thead>
                <tbody>
                  <c:set var="count" value="0" />

                  <c:forEach var="test" items="${tests}">
                    <c:if test="${count lt 5}">
                      <tr>
                        <td>${test.tno}</td>
                        <td><a href="#" onclick="" style="color:black;">${test.title}</a></td>
                        <td>
                          <div class="progress">
                            <div class="progress-bar" style="width: ${test.progress}%;" title="${test.progress}% 완료"></div>
                          </div>
                        </td>
                      </tr>
                      <c:set var="count" value="${count + 1}" />
                    </c:if>
                  </c:forEach>
                  <c:if test="${empty tests}">
                    <tr>
                      <td colspan="8">업무가 없습니다.</td>
                    </tr>
                  </c:if>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-6 pr-0">
<div class="card">
  <div class="card-header">
    <h3 class="card-title">공지사항</h3>
  </div>

  <div class="card-body table-responsive p-0">
    <table class="table table-hover text-nowrap">
      <thead>
        <tr>
          <th style="width:20px;">번호</th>
          <th>제목</th>
          <th>작성날짜</th>
        </tr>
      </thead>
      <tbody id="noticeTableBody">
        <!-- 여기에 동적으로 데이터를 추가할 예정 -->
      </tbody>
    </table>
  </div>
</div>
        </div>
      </div>
    </div>
    <div class="col-5">
      <div class="row mt-4">

        <div id='calendar'></div>

      </div>
      <div class="row m-4">
        <div class="card card-row card-secondary w-100 m-4 h-100">
          <div class="card-header">
            <h3 class="card-title">
              오늘 할일
            </h3>
          </div>
<div class="card-body">
    <div class="card card-info card-outline">
        <div class="card-body" style="text-align:left; font-weight: bold;">
            <div id="todayCheckbox"></div>
            <div id="message"></div>
        </div>
    </div>
</div>
        </div>
      </div>
    </div>
  </div>


<script>
  $(document).ready(function() {
    // AJAX 요청을 보내서 데이터를 받아옴
    $.ajax({
      url: "/article/noticeList", // 컨트롤러의 URL 경로
      type: "GET",
      dataType: "json",
      success: function(response) {
        if (response.length > 0) {
          // 받아온 데이터를 테이블에 동적으로 추가
          var tableBody = $("#noticeTableBody");
          $.each(response, function(index, article) {
            var row = "<tr>" +
              "<td>" + article.tno + "</td>" +
              "<td><a href='#' onclick='' style='color:black;'>" + article.title + "</a></td>" +
              "<td>" + article.date + "</td>" +
              "</tr>";
            tableBody.append(row);
          });
        } else {
          // 데이터가 없을 경우 처리
          var noDataMessage = "<tr><td colspan='3'>공지사항이 없습니다.</td></tr>";
          $("#noticeTableBody").append(noDataMessage);
        }
      },
      error: function() {
        console.log("Error occurred while fetching data.");
      }
    });
  });
</script>


<script>
$.ajax({
    url: "/getPersonalCalendar",
    type: "GET",
    dataType: "json",
    success: function(data) {
        var today = new Date(); // Get today's date
        var project_s = "";

        for (var i = 0; i < data.length; i++) {
            var item = data[i];
            var title = item.title;
            var start = new Date(item.start);

            // Check if the start date is the same as today's date
            if (start.toDateString() === today.toDateString()) {
                var formattedDate = formatDate(start);
                project_s += '<p>' + title + ' - ' + formattedDate + '</p>';
            }
        }

        if (project_s === "") {
            $("#message").text("업무가 없습니다.");
        } else {
            $("#todayCheckbox").html(project_s);
        }
    },
    error: function(xhr, status, error) {
        console.log("Error: " + error);
    }
});

function formatDate(date) {
    return date.toLocaleString("en-US", { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', second: '2-digit' });
}
</script>


 <script>
document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth',
      headerToolbar: {
        left: 'prev,next addEventButton',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      navLinks: true,
      selectable: true,
      nowIndicator: true,
      dayMaxEvents: true,
      locale: 'ko',
      selectMirror: true,
      select: function(arg) {
    	  var title = prompt('Event Title:');
    	  if (title) {
    	    var schedule_code = arg.schedule_code;
    	    var title = arg.title;
    	    var content = arg.content;
    	    var start = arg.start;
    	    var end = arg.end;
    	    var writer = arg.writer;
    	    // Prompt the user for the schedule_code value
    	    var schedule_code = prompt('schedule_code:');
          // Send the event data to the server and save it in the database
          $.ajax({
            url: '/getCommonlCalendar',
            method: 'GET',
            data: {
            	schedule_code : arg.schedule_code,
                title : arg.title,
                content : arg.content,
                start : arg.start,
                end : arg.end,
                writer : arg.writer
            },
            success: function(response) {
              // If the event is saved successfully, add it to the calendar
              var eventData = JSON.parse(response);
			
            },
            error: function() {
              alert('저장 실패.');
            }
          });
        }
        calendar.unselect();
      },
      events: function(fetchInfo, successCallback, failureCallback) {
        $.ajax({
          url: '/getCommonCalendar',
          method: 'GET',
          dataType: 'json',
          success: function(data) {
            var loginUser = '${loginUser.member_id}';
            var events = data.map(function(event) {
            var eventData = {
            	schedule_code:event.schedule_code,
                title: event.title,
                content:event.content,
                start: event.start,
                end: event.end,
                schedule_code : event.schedule_code
              };
              

                return eventData;

            });

            successCallback(events);
          },
          error: function() {
            failureCallback({ message: '서버에서 이벤트를 불러오는 데 실패했습니다.' });
          }
        });
      },
      customButtons: {
        addEventButton: {
          text: '일정 추가',
          click: function() {
              // Server-side condition
              var memberAuth = ${loginUser.member_auth};
              if (memberAuth !== 1) {
            	location.href='/schedule/commonCal';
            	
              } else {
            	 
                alert("공용 일정 등록 권한이 없습니다.");
                if (confirm("공용일정 페이지로 이동하시겠습니까?")) {
                	location.href='/schedule/commonCal';
                }
            }
          }
        }
      },
      // other calendar options...
    });
    calendar.on('eventClick', function(info) {
         // Get the event data
         var event = info.event;
         var eventData = event.extendedProps;
         var startFormatted = moment(event.start).format('YYYY-MM-DD HH:mm');
         var endFormatted = moment(event.end).format('YYYY-MM-DD HH:mm');

         // Set the values in the modal inputs
         //상세
         $("#schedule_title_detail").val(event.title);
         $("#schedule_content_detail").val(eventData.content);
         $("#schedule_start_detail").val(startFormatted);
         $("#schedule_end_detail").val(endFormatted);
         $("#schedule_code").val(eventData.schedule_code);

         $("#modifyButton").show();
         $("#deleteButton").show();
         
         //삭제
         $("#deleteButton").click(function() {
             if (confirm("정말 삭제하시겠습니까?")) {
                
            	  $("#schedule_code").val(eventData.schedule_code);

                 $.ajax({
                     url: "<%=request.getContextPath()%>/schedule/delete",
                     type: "POST",
                     data: { schedule_code: eventData.schedule_code },
                     success: function(response) {
                         alert("정상적으로 삭제되었습니다.");
                         location.reload();
                     },
                     error: function(error) {
                         alert("삭제 중에 오류가 발생했습니다.");
                     }
                 });
             }
         });
   		

         // Show the modal
         $("#calendarDetailModal").modal("show");
         
         //수정
	 $("#modifyButton").click(function() {
	  // Get the event data
	
	  // Set the values in the calendarModifyModal inputs
	  $("#schedule_title_modify").val(event.title);
	  $("#schedule_content_modify").val(eventData.content);
	  $("#schedule_start_modify").val(startFormatted);
	  $("#schedule_end_modify").val(endFormatted);
	  $("#schedule_code").val(eventData.schedule_code);
	  
	  // Get the schedule_code value
	  var schedule_code = $("#schedule_code").val();

            // Show the calendarModifyModal
            $("#calendarModifyModal").modal("show");
            
            $("#confirmModifyButton").click(function(e) {
            	e.stopPropagation()
                // Get the updated values from the calendarModifyModal inputs
                var title = $("#schedule_title_modify").val();
                var content = $("#schedule_content_modify").val();
                var start = $("#schedule_start_modify").val();
                var end = $("#schedule_end_modify").val();
                var scheduleCode = $("#schedule_code").val();
				
                
                // Construct the data object to be sent to the server
                var updatedData = {
                    title: title,
                    content: content,
                    start: start,
                    end: end,
                    schedule_code: scheduleCode
                };

                // Make an AJAX request to update the database
                $.ajax({
                    url: "/schedule/modify",
                    type: "POST",
                    data: JSON.stringify(updatedData),
                    contentType: "application/json",
                    success: function(response) {
                        alert("정상적으로 수정 되었습니다.");
                        location.reload();
                    },
                    error: function(error) {
                        // Handle the error response
                        console.error("Error updating event:", error);
                        // Display an error message
                        alert("수정에러/수정에러/수정에러");
                    }
                });

                // Hide the calendarModifyModal
                $("#calendarModifyModal").modal("hide");
            });
          });
       });
    
    calendar.render();
   

    $("#addCalendar").on("click", function() {
        var title = $("#schedule_title").val();
        var content = $("#schedule_content").val();
        var start = $("#schedule_start").val();
        var end = $("#schedule_end").val();
        var register = '${loginUser.member_id}';

        if (!title || title === "") {
            alert("제목을 입력하세요.");
        } else if (!start || !end) {
            alert("날짜를 입력하세요.");
        } else if (new Date(end) < new Date(start)) {
            alert("종료일이 시작일보다 빠릅니다.");
        } else {
            var regtime = new Date();

            // Perform validation checks on the server side
            $.ajax({
                url: '<%=request.getContextPath()%>/schedule/common/saveEvent',
                method: 'POST',
                data: {
                	title : title,
                	content : content,
                	start : start,
                	end : end,
                	register : register,
                	regtime : regtime
                },
                success: function(response) {
                    if (response === "success") {
                        // If the event is saved successfully, add it to the calendar
                        var eventData = {
                            title: content,
                            content : content,
                            start: reservation_start,
                            end: reservation_end,

                        };
                        calendar.addEvent(eventData);
                        $("#calendarModal").modal("hide");
                        // Reload the window
                    }
                    $("#calendarModal").modal("hide");
                },
                error: function(error) {
                    // Handle the error response
                    console.error("Error updating event:", error);
                    // Display an error message
                    alert("등록에러/등록에러/등록에러");
                    return false;
                }
            });
            window.location.reload();
        }
    });


    

    $(".room-button").click(function() {
      var room_code = $(this).data("room-code");
      showEvents(room_code);
    });
  });
  

</script>


  <%@include file="/WEB-INF/jsp/include/foot.jspf" %>