<?php /* Smarty version Smarty-3.1.18, created on 2014-09-13 13:21:20
         compiled from "application\views\pages\user_login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:81965413e16d416506-96766031%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8e5575d378826b2406505e717e2c43c9d11ca667' => 
    array (
      0 => 'application\\views\\pages\\user_login.tpl',
      1 => 1410614453,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '81965413e16d416506-96766031',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5413e16d5afc40_10675908',
  'variables' => 
  array (
    'baseUrl' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5413e16d5afc40_10675908')) {function content_5413e16d5afc40_10675908($_smarty_tpl) {?><link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
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
/login/login_check" method="post" class="pageform">
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
