<?php /* Smarty version Smarty-3.1.18, created on 2014-09-13 13:16:36
         compiled from "application\views\pages\userHome.tpl" */ ?>
<?php /*%%SmartyHeaderCode:294485414426c062dc8-63577466%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e3ae0446e58d493c8f6978fbf26337266cf5a275' => 
    array (
      0 => 'application\\views\\pages\\userHome.tpl',
      1 => 1410614099,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '294485414426c062dc8-63577466',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5414426c0b3f46_04165124',
  'variables' => 
  array (
    'baseUrl' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5414426c0b3f46_04165124')) {function content_5414426c0b3f46_04165124($_smarty_tpl) {?>

<!-- <a href="<<?php ?>?php echo site_url('login/userLogin');?<?php ?>>">登陆</a><br><br>
<a href="<<?php ?>?php echo site_url('login/register');?<?php ?>>">注册</a><br><br><br> -->
<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/login/userLogin'>登陆</a>
<a href='<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/login/register/0'>注册</a>
<?php }} ?>
