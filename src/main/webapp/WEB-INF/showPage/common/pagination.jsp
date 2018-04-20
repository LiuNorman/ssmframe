<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="paging">
    <ul class="pagination">
        <!-- 上一页 -->
        <li><a onclick="pagination('${pageBean.pageIndex-1}','${pageBean.pageCount}')">&laquo;</a></li>
        <li><a onclick="pagination(1)">1</a></li>
        <li><a onclick="pagination(2)">2</a></li><!-- class="disabled" -->
        <li><a onclick="pagination(3)">3</a></li>
        <li><a onclick="pagination(4)">4</a></li>
        <li><a onclick="pagination(5)">5</a></li>
        <!-- 下一页 -->

        <li>
            <select id="pageCount" name="pageCount" style="height: 30px" onclick="selectCount()">
                <option value="5" <c:if test="${pageBean.pageCount==5}">selected="selected"</c:if>>每页显示5条</option>
                <option value="10" <c:if test="${pageBean.pageCount==10}">selected="selected"</c:if>>每页显示10条</option>
                <option value="15" <c:if test="${pageBean.pageCount==15}">selected="selected"</c:if>>每页显示15条</option>
                <option value="20" <c:if test="${pageBean.pageCount==20}">selected="selected"</c:if>>每页显示20条</option>
            </select>
        </li>
        <li><a onclick="pagination('${pageBean.pageIndex+1}','${pageBean.pageCount}')">&raquo;</a></li>
    </ul>
</div>