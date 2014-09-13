<?php /* Smarty version Smarty-3.1.18, created on 2014-09-13 12:38:59
         compiled from "application\views\pages\user_inspect.tpl" */ ?>
<?php /*%%SmartyHeaderCode:82085413fbea71aa85-44096720%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ac656c6598b2c6ddf00dcc7628ac118da32f4960' => 
    array (
      0 => 'application\\views\\pages\\user_inspect.tpl',
      1 => 1410595912,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '82085413fbea71aa85-44096720',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5413fbea86cc72_33256542',
  'variables' => 
  array (
    'username' => 0,
    'baseUrl' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5413fbea86cc72_33256542')) {function content_5413fbea86cc72_33256542($_smarty_tpl) {?>用户名:<?php echo $_smarty_tpl->tpl_vars['username']->value;?>
<br>



<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/member/show_update/<?php echo $_smarty_tpl->tpl_vars['username']->value;?>
'>修改</a>




<?php }} ?>
