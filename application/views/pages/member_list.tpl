<script src="<%$baseUrl%>/js/jquery.1.7.0.js"></script>
<script src="<%$baseUrl%>/js/ajax3.0.js"></script>
<script type="text/javascript">
var ajax = new Ajax();
</script>

<div id='ajaxinfo'>

	<table border="1" cellpadding="2" cellspacing="1" class="pagetable">
		<%foreach from=$member_list item=row %>

			<tr>
				<%foreach from=$row key=keys item=value %>
					<%if $keys eq 'username'%>
						<td><a href="<%$baseUrl%>/member/inspect_member/<%$value%>"><%$value%></a></td>
					<%else%>
						<td><%$value%></td>
					<%/if%>
				<%/foreach%>
				<%if $is_admin %>
					<td>
						<a href='<%$baseUrl%>/member/show_update/<%$row.username%>'>修改</a>
						<a href='<%$baseUrl%>/member/confirm_delete/<%$row.username%>'>删除</a>
					</td>
				<%/if%>
			</tr>

		<%/foreach%>
	</table>
	<div class="pagination"><%$link%></div>

</div>

<script type="text/javascript">
	$(".pagination a").live('click',function(){
		var url = $(this).attr('href');
		// $.ajax({
		// 	url: url,
		// 	dataType: 'html',
		// 	success: function(data){
		// 		$("#ajaxinfo").html(data);
		// 	}
		// });

		if(url!='undefined'){
		      ajax.get(url,function(data){
		            $("#ajaxinfo").html(data);
		      });
		}

		// $.get(url, function(data){
		// 	alert('request');
		// 	$('#ajaxinfo').html(data);
		// });
		return false;
	});
</script>