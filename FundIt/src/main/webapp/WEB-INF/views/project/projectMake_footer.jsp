<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



		<div class="make-project-btn">
		
			<c:if test="${param.sectionName ne 'outline' }">
				<button type="button" class="prevBtn">
					<img src="${pageContext.request.contextPath }/resources/images/makeProject/prev.png" />
					이전
				</button>
			</c:if>
			
			<c:if test="${param.sectionName  ne 'account'}">
				<button type="button" class="nextBtn">
					다음
					<img src="${pageContext.request.contextPath }/resources/images/makeProject/next.png" />
				</button>
			</c:if>
		</div>
	</div>
</div>