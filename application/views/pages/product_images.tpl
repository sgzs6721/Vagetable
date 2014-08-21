<!--
<script src="<%$baseUrl%>/js/jquery.1.7.0.js"></script>
<script src="<%$baseUrl%>/js/ajax3.0.js"></script>
<script src="<%$baseUrl%>/js/imagepicker/image-picker.js"></script>
<script src="<%$baseUrl%>/js/imagepicker/image-picker.min.js"></script>
<link rel="stylesheet" href="<%$baseUrl%>/css/image-picker.css">
<script type="text/javascript">
var ajax = new Ajax();
</script>
-->
<div id='ajaxinfo'>
	<select multiple="multiple" class="image-picker show-html" name='picpath[]'>

		<%foreach from=$images item=value%>
			<option data-img-src="<%$baseUrl%>/images/<%$category%>/thumbnail/<%$value%>" value="<%$value%>"><%$value%></option>
		<%/foreach%>
		
	</select>
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

    jQuery("select.image-picker").imagepicker({
      hide_select:  true,
    });

</script>

