<script src="<%$baseUrl%>/js/jquery.1.7.0.js"></script>
<script src="<%$baseUrl%>/js/ajax3.0.js"></script>
<script type="text/javascript">
var ajax = new Ajax();
</script>

<div id='ajaxinfo'>

	<table border="1" cellpadding="2" cellspacing="1" class="pagetable">
		<%foreach from=$product_list item=row %>

			<tr>
				<%foreach from=$row key=keys item=value %>
					<%if $keys eq 'name'%>
						<td><a href="<%$baseUrl%>/product/inspect_product/<%$value%>"><%$value%></a></td>
					<%elseif $keys eq 'picpath'%>

						<%foreach from=';'|explode:$value item=item%>
							<td><img src="<%$item%>"></img></td>
						<%/foreach%>
					<%else%>
						<td><%$value%></td>
					<%/if%>
				<%/foreach%>
				<%if $is_admin %>
					<td>
						<a href='<%$baseUrl%>/product/show_update/<%$row.name%>'>修改</a>
						<a href='<%$baseUrl%>/product/confirm_delete/<%$row.name%>'>删除</a>
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

		if(url!='undefined'){
		      ajax.get(url,function(data){
		            $("#ajaxinfo").html(data);
		      });
		}

		return false;
	});
</script>