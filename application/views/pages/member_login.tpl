<link rel="stylesheet" href="<%$baseUrl%>/css/validation/validationEngine.jquery.css">
<script src="<%$baseUrl%>/js/jquery.1.7.0.js"></script>
<script src="<%$baseUrl%>/js/validation/jquery.validationEngine-zh_CN.js"></script>
<script src="<%$baseUrl%>/js/validation/jquery.validationEngine.js"></script>

<script>

jQuery(document).ready( function() {
  // binds form submission and fields to the validation engine
  jQuery("#login").validationEngine();
  $("#login").validationEngine("attach",{ 
      showOneMessage:true
  });
});

</script>

<form id="login" action="<%$baseUrl%>/member/login_check" method="post" class="pageform">
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
</form>