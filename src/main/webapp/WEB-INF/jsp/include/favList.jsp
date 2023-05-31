<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<li class="text-bold" style="list-style:none; width:100%; text-align:left;">즐겨찾기 목록</li>

<c:forEach var="fav" items="${favList }">
	<li style="list-style:none;">
          <a href="${fav.mcode }" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <div class="media-body">
                <h3 class="dropdown-item-title">	
                  ${fav.page_name}
                </h3>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
	</li>
</c:forEach>
