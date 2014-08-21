商品名称:<%$name%><br>
商品价格:<%$sprice%><br>
会员价格:<%$mprice%><br>
商品类别:<%$category%><br>
商品图片:<br>
<%foreach from=';'|explode:$picpath item=item %>
	<img src="<%$baseUrl%>/images/<%$category%>/<%$item%>"></img>
<%/foreach%>
<br>
<a href='<%$baseUrl%>/product/show_update/<%$name%>'>修改</a>

<%if $is_admin eq 1 %>
<a href='<%$baseUrl%>/product/confirm_delete/<%$name%>'>删除</a><br>
<%/if%>

<a href='<%$baseUrl%>/product/list_products'>查看所有商品</a><br>
