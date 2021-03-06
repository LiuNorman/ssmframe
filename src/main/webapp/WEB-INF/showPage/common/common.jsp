<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- jQuery -->
    <script src="${path}/resources/js/common/jQuery2.1.4/js/jquery-2.1.4.min.js"></script>
    <!-- bootstrap -->
    <script src="${path}/resources/js/common/bootstrap3.3.5/js/bootstrap.min.js"></script>
    <script src="${path}/resources/js/common/bootstrap3.3.5/js/bootstrap-dialog.min.js"></script>
    <script src="${path}/resources/js/common/bootstrap3.3.5/js/bootstrap-datetimepicker.js"></script>
    <script src="${path}/resources/js/common/common/common.js"></script>

    <!-- <script type="text/javascript" src="${path}/resources/js/common/bootstrap3.3.5/js/bootstrap-datetimepicker.fr.js" ></script>-->
    <link rel="stylesheet" type="text/css" href="${path}/resources/js/common/bootstrap3.3.5/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${path}/resources/js/common/bootstrap3.3.5/css/bootstrap-dialog.min.css"/>

    <link rel="stylesheet" type="text/css"
          href="${path}/resources/js/common/bootstrap3.3.5/css/bootstrap-datetimepicker.min.css"/>

    <script type="text/javascript">
        var path = "${path}";
    </script>
</head>
</html>