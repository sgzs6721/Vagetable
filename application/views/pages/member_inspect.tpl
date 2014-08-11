用户名:<%$username%><br>
用户姓名:<%$realname%><br>
用户邮箱:<%$email%><br>
用户权限:<%$permission%><br>

<%if $is_admin eq 1 %>
<a href='<%$baseUrl%>/member/show_update/<%$username%>'>修改</a>
<a href='<%$baseUrl%>/member/confirm_delete/<%$username%>'>删除</a><br>
<%/if%>

<a href='<%$baseUrl%>/member/list_members'>查看所有用户</a><br>
