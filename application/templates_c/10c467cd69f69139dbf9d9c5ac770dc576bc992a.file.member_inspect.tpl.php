<?php /* Smarty version Smarty-3.1.18, created on 2014-09-13 05:57:22
         compiled from "application\views\pages\member_inspect.tpl" */ ?>
<?php /*%%SmartyHeaderCode:297195413dcc2490d55-88571775%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '10c467cd69f69139dbf9d9c5ac770dc576bc992a' => 
    array (
      0 => 'application\\views\\pages\\member_inspect.tpl',
      1 => 1410578926,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '297195413dcc2490d55-88571775',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'username' => 0,
    'realname' => 0,
    'email' => 0,
    'permission' => 0,
    'is_admin' => 0,
    'baseUrl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5413dcc25a4b20_41164633',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5413dcc25a4b20_41164633')) {function content_5413dcc25a4b20_41164633($_smarty_tpl) {?>用户名:<?php echo $_smarty_tpl->tpl_vars['username']->value;?>
<br>
用户姓名:<?php echo $_smarty_tpl->tpl_vars['realname']->value;?>
<br>
用户邮箱:<?php echo $_smarty_tpl->tpl_vars['email']->value;?>
<br>
用户权限:<?php echo $_smarty_tpl->tpl_vars['permission']->value;?>
<br>

<?php if ($_smarty_tpl->tpl_vars['is_admin']->value==1) {?>
<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/member/show_update/<?php echo $_smarty_tpl->tpl_vars['username']->value;?>
'>修改</a>
<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/member/confirm_delete/<?php echo $_smarty_tpl->tpl_vars['username']->value;?>
'>删除</a><br>
<?php }?>

<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/member/list_members'>查看所有用户</a><br>
<?php }} ?>
