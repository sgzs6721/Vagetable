<?php /* Smarty version Smarty-3.1.18, created on 2014-09-13 05:56:31
         compiled from "application\views\pages\member_add.tpl" */ ?>
<?php /*%%SmartyHeaderCode:42465413dc8f893fe5-53779405%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c2b5323fa6100c87ad09fd9923599860a1df809b' => 
    array (
      0 => 'application\\views\\pages\\member_add.tpl',
      1 => 1410578926,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '42465413dc8f893fe5-53779405',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'baseUrl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5413dc8f95bfa2_30957226',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5413dc8f95bfa2_30957226')) {function content_5413dc8f95bfa2_30957226($_smarty_tpl) {?><link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
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
  jQuery("#addmember").validationEngine();
  $("#addmember").validationEngine("attach",{ 
      showOneMessage:true
  });
});

</script>

<form id="addmember" action="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/member/add" method="post" class="pageform">
    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户名</label>
      </div>
      <div class="pf-r">
        <input name="username" data-prompt-position="inline" data-prompt-target="namemessage" class="pf-text validate[required,ajax[ajaxMemberCall]]" type="text" id='username' value=""/>
        <span class="pf-help">请输入登录的用户名</span><div id="namemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户姓名</label>
      </div>
      <div class="pf-r">
        <input name="realname" data-prompt-position="inline" data-prompt-target="realnamemessage" class="pf-text validate[required]" type="text"  value=""/>
        <span class="pf-help">请输入姓名</span><div id="realnamemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户电话</label>
      </div>
      <div class="pf-r">
        <input name="phone" data-prompt-position="inline" data-prompt-target="phonemessage" class="pf-text" type="text"  value=""/>
        <span class="pf-help">请输入电话号码</span><div id="phonemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户邮箱</label>
      </div>
      <div class="pf-r">
        <input name="email" data-prompt-position="inline" data-prompt-target="emailmessage" class="pf-text" type="text"  value=""/>
        <span class="pf-help">请输入姓名</span><div id="emailmessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户权限</label>
      </div>
      <div class="pf-r">
          <select name="permission" id="permission" class="pf-select validate[required]" data-prompt-position="inline" data-prompt-target="permissionmessage">
            <option value="">--选择用户权限--</option>
            <option value="0">管理员</option>
            <option value="1">普通用户</option>
          </select>
          <span class="pf-help">请选择新增会员的级别</span><div id="permissionmessage"></div>
        </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户密码</label>
      </div>
      <div class="pf-r">
        <input name="passwd" data-prompt-position="inline" data-prompt-target="passwordmessage" class="pf-text validate[required]" type="password"  value="123456" readonly/>
        <span class="pf-help">默认密码为“123456”</span><div id="passwordmessage"></div>
      </div>
    </div>
    
    <div class="pf-button">
      <input type="submit" class="btn btn-submit" value="确 认" />
    </div>
</form><?php }} ?>
