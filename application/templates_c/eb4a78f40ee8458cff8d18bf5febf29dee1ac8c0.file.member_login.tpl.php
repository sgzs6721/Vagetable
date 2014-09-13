<?php /* Smarty version Smarty-3.1.18, created on 2014-09-13 05:56:16
         compiled from "application\views\pages\member_login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:255215413dc80d9a903-44649480%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eb4a78f40ee8458cff8d18bf5febf29dee1ac8c0' => 
    array (
      0 => 'application\\views\\pages\\member_login.tpl',
      1 => 1410578926,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '255215413dc80d9a903-44649480',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'baseUrl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5413dc81003158_92184447',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5413dc81003158_92184447')) {function content_5413dc81003158_92184447($_smarty_tpl) {?><link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/css/validation/validationEngine.jquery.css">
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/jquery.1.7.0.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/validation/jquery.validationEngine-zh_CN.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/validation/jquery.validationEngine.js"></script>

<script>

jQuery(document).ready( function() {
  // binds form submission and fields to the validation engine
  jQuery("#login").validationEngine();
  $("#login").validationEngine("attach",{ 
      showOneMessage:true
  });
});

</script>

<form id="login" action="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/member/login_check" method="post" class="pageform">
    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户名</label>
      </div>
      <div class="pf-r">
        <input name="username" data-prompt-position="inline" data-prompt-target="namemessage" class="pf-text validate[required]" type="text"  value=""/>
        <span class="pf-help">请输入登录的用户名</span><div id="namemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户密码</label>
      </div>
      <div class="pf-r">
        <input name="passwd" data-prompt-position="inline" data-prompt-target="passwordmessage" class="pf-text validate[required]" type="password"  value=""/>
        <span class="pf-help">请输入密码</span><div id="passwordmessage"></div>
      </div>
    </div>
    
    <div class="pf-button">
      <input type="submit" class="btn btn-submit" value="登 录" />
    </div>
</form><?php }} ?>
