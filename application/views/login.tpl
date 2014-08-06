<form id="goodForm" action="<%$baseUrl%>/login/check" method="post" class="pageform">
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
        <input name="password" data-prompt-position="inline" data-prompt-target="passwordmessage" class="pf-text validate[required]" type="text"  value=""/>
        <span class="pf-help">请输入密码</span><div id="passwordmessage"></div>
      </div>
    </div>

    
    <div class="pf-button">
      <input type="submit" class="btn btn-submit" value="登 录" />
    </div>
</form>