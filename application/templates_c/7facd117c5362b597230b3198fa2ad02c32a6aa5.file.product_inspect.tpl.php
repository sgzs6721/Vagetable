<?php /* Smarty version Smarty-3.1.18, created on 2014-09-13 07:09:29
         compiled from "application\views\pages\product_inspect.tpl" */ ?>
<?php /*%%SmartyHeaderCode:138065413eda9a95882-31253853%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7facd117c5362b597230b3198fa2ad02c32a6aa5' => 
    array (
      0 => 'application\\views\\pages\\product_inspect.tpl',
      1 => 1410578926,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '138065413eda9a95882-31253853',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'name' => 0,
    'sprice' => 0,
    'mprice' => 0,
    'category' => 0,
    'picpath' => 0,
    'baseUrl' => 0,
    'item' => 0,
    'is_admin' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5413eda9b76078_67072039',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5413eda9b76078_67072039')) {function content_5413eda9b76078_67072039($_smarty_tpl) {?>商品名称:<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
<br>
商品价格:<?php echo $_smarty_tpl->tpl_vars['sprice']->value;?>
<br>
会员价格:<?php echo $_smarty_tpl->tpl_vars['mprice']->value;?>
<br>
商品类别:<?php echo $_smarty_tpl->tpl_vars['category']->value;?>
<br>
商品图片:<br>
<?php if ($_smarty_tpl->tpl_vars['picpath']->value!=null) {?>
	<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_from = explode(';',$_smarty_tpl->tpl_vars['picpath']->value); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->_loop = true;
?>
		<img src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/<?php echo $_smarty_tpl->tpl_vars['category']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['item']->value;?>
"></img>
	<?php } ?>
<?php } else { ?>
	&nbsp&nbsp&nbsp&nbsp暂无图片
<?php }?>
<br><br>

<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/product/add'>添加</a>
<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/product/show_update/<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
'>修改</a>

<?php if ($_smarty_tpl->tpl_vars['is_admin']->value==1) {?>
<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/product/confirm_delete/<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
'>删除</a><br>
<?php }?>

<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/product/list_products'>查看所有商品</a><br>
<?php }} ?>
