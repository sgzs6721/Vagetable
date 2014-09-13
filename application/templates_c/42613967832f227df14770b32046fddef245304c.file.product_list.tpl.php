<?php /* Smarty version Smarty-3.1.18, created on 2014-09-13 07:09:22
         compiled from "application\views\pages\product_list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:136715413eda2a1a064-91480008%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '42613967832f227df14770b32046fddef245304c' => 
    array (
      0 => 'application\\views\\pages\\product_list.tpl',
      1 => 1410578926,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '136715413eda2a1a064-91480008',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'baseUrl' => 0,
    'product_list' => 0,
    'row' => 0,
    'keys' => 0,
    'value' => 0,
    'is_admin' => 0,
    'item' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5413eda2ba7c69_79237276',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5413eda2ba7c69_79237276')) {function content_5413eda2ba7c69_79237276($_smarty_tpl) {?><script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/jquery.1.7.0.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/ajax3.0.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/jquery.lightbox.js"></script>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/css/lightbox.css" type="text/css" media="screen" />

<script type="text/javascript">
var ajax = new Ajax();
$(document).ready(function(){
		    
			$(".lightbox").lightbox({
			    fitToScreen: true,
			    imageClickClose: false,
			    overlayOpacity : 0.8,
			    fileLoadingImage: '<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/css/img/load.gif',
　　　　			fileBottomNavCloseImage: '<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/css/img/close.gif',
				disableNavbarLinks: false,
		    });
		});
</script>

<div id='ajaxinfo'>

	<table border="1" cellpadding="2" cellspacing="1" class="pagetable">
		<?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['product_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value) {
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>

			<tr class='product-info' id='<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
'>
				<?php  $_smarty_tpl->tpl_vars['value'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['value']->_loop = false;
 $_smarty_tpl->tpl_vars['keys'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['row']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['value']->key => $_smarty_tpl->tpl_vars['value']->value) {
$_smarty_tpl->tpl_vars['value']->_loop = true;
 $_smarty_tpl->tpl_vars['keys']->value = $_smarty_tpl->tpl_vars['value']->key;
?>
					<?php if ($_smarty_tpl->tpl_vars['keys']->value=='name') {?>
						<td><a href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/product/inspect_product/<?php echo $_smarty_tpl->tpl_vars['value']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['value']->value;?>
</a></td>

					<?php } elseif ($_smarty_tpl->tpl_vars['keys']->value=='picpath') {?>
						
					<?php } else { ?>
						<td><?php echo $_smarty_tpl->tpl_vars['value']->value;?>
</td>
					<?php }?>

				<?php } ?>
				<?php if ($_smarty_tpl->tpl_vars['is_admin']->value) {?>
					<td>
						<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/product/show_update/<?php echo $_smarty_tpl->tpl_vars['row']->value['name'];?>
'>修改</a>
						<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/product/confirm_delete/<?php echo $_smarty_tpl->tpl_vars['row']->value['name'];?>
'>删除</a>
					</td>
				<?php }?>
			</tr>
			<tr class='picinfo-<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
' style='display:none'>
				<td colspan=10>
					<?php if ($_smarty_tpl->tpl_vars['row']->value['picpath']!=null) {?>
						<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = explode(';',$_smarty_tpl->tpl_vars['row']->value['picpath']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
							<a href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/<?php echo $_smarty_tpl->tpl_vars['row']->value['category'];?>
/<?php echo $_smarty_tpl->tpl_vars['item']->value;?>
" rel="lightbox" class="lightbox"><img src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/<?php echo $_smarty_tpl->tpl_vars['row']->value['category'];?>
/thumbnail/<?php echo $_smarty_tpl->tpl_vars['item']->value;?>
"></img></a>
						<?php } ?>
					<?php } else { ?>
						暂无图片
					<?php }?>
				</td>
			</tr>

		<?php } ?>
	</table>
	<div class="pagination"><?php echo $_smarty_tpl->tpl_vars['link']->value;?>
</div>
	<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/product/add'>添加</a>
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
		$(this).siblings('.picinfo-' + this.id).toggle("fast");
	});

</script>






<?php }} ?>
