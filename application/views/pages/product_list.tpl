<script src="<%$baseUrl%>/js/jquery.1.7.0.js"></script>
<script src="<%$baseUrl%>/js/ajax3.0.js"></script>
<script src="<%$baseUrl%>/js/jquery.lightbox.js"></script>
<link rel="stylesheet" href="<%$baseUrl%>/css/lightbox.css" type="text/css" media="screen" />

<script type="text/javascript">
var ajax = new Ajax();
$(document).ready(function(){
		    
			$(".lightbox").lightbox({
			    fitToScreen: true,
			    imageClickClose: false,
			    overlayOpacity : 0.8,
			    fileLoadingImage: '<%$baseUrl%>/css/img/load.gif',
　　　　			fileBottomNavCloseImage: '<%$baseUrl%>/css/img/close.gif',
				disableNavbarLinks: false,
		    });
		});
</script>

<div id='ajaxinfo'>

	<table border="1" cellpadding="2" cellspacing="1" class="pagetable">
		<%foreach from=$product_list item=row %>

			<tr class='product-info' id='<%$row.id%>'>
				<%foreach from=$row key=keys item=value %>
					<%if $keys eq 'name'%>
						<td><a href="<%$baseUrl%>/product/inspect_product/<%$value%>"><%$value%></a></td>

					<%elseif $keys eq 'picpath'%>
						
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
			<tr class='picinfo-<%$row.id%>' style='display:none'>
				<td colspan=10>
					<%if $row.picpath != null%>
						<%foreach from=';'|explode:$row.picpath item=item%>
							<a href="<%$baseUrl%>/images/<%$row.category%>/<%$item%>" rel="lightbox" class="lightbox"><img src="<%$baseUrl%>/images/<%$row.category%>/thumbnail/<%$item%>"></img></a>
						<%/foreach%>
					<%else%>
						暂无图片
					<%/if%>
				</td>
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

	$('#ajaxinfo tr.product-info').css("cursor","pointer").click(function(){
		$(this).siblings('.picinfo-' + this.id).fadeToggle("fast");
	});

</script>






