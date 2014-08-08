<link rel="stylesheet" href="<%$baseUrl%>/css/validation/validationEngine.jquery.css">
<script src="<%$baseUrl%>/js/jquery.1.7.0.js"></script>
<script src="<%$baseUrl%>/js/validation/jquery.validationEngine-zh_CN.js"></script>
<script src="<%$baseUrl%>/js/validation/jquery.validationEngine.js"></script>

<script>

jQuery(document).ready( function() {
  // binds form submission and fields to the validation engine
  jQuery("#updatemember,#updatepass").validationEngine();
  $("#updatemember,#updatepass").validationEngine("attach",{ 
      showOneMessage:true
  });
});

</script>

<form id="updatemember" action="#" method="post" class="pageform">
    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户名</label>
      </div>
      <div class="pf-r">
        <input name="username" data-prompt-position="inline" data-prompt-target="namemessage" class="pf-text validate[required]" type="text"  value="<%$username%>"/>
        <span class="pf-help">请输入登录的用户名</span><div id="namemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户姓名</label>
      </div>
      <div class="pf-r">
        <input name="realname" data-prompt-position="inline" data-prompt-target="realnamemessage" class="pf-text validate[required]" type="text"  value="<%$realname%>"/>
        <span class="pf-help">请输入姓名</span><div id="realnamemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户电话</label>
      </div>
      <div class="pf-r">
        <input name="phone" data-prompt-position="inline" data-prompt-target="phonemessage" class="pf-text" type="text"  value="<%$phone%>"/>
        <span class="pf-help">请输入电话号码</span><div id="phonemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户邮箱</label>
      </div>
      <div class="pf-r">
        <input name="email" data-prompt-position="inline" data-prompt-target="emailmessage" class="pf-text" type="text"  value="<%$email%>"/>
        <span class="pf-help">请输入姓名</span><div id="emailmessage"></div>
      </div>
    </div>

    <div class="pf-button">
      <input type="submit" class="btn btn-submit" value="确认修改" />
    </div>
</form>

<form id="updatepass" action="#" method="post" class="pageform">
    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">新密码</label>
      </div>
      <div class="pf-r">
        <input name="passwd" data-prompt-position="inline" data-prompt-target="passwordmessage" class="pf-text validate[required]" type="text"  value=""/>
        <span class="pf-help">请输入新密码</span><div id="passwordmessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">确认密码</label>
      </div>
      <div class="pf-r">
        <input name="passwd2" data-prompt-position="inline" data-prompt-target="password2message" class="pf-text validate[required]" type="text"  value=""/>
        <span class="pf-help">请确认密码</span><div id="password2message"></div>
      </div>
    </div>
    
    <div class="pf-button">
      <input type="submit" class="btn btn-submit" value="确 认" />
    </div>
</form>

<script>


</script>