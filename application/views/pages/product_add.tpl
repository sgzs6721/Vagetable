<link rel="stylesheet" href="<%$baseUrl%>/css/validation/validationEngine.jquery.css">
<script src="<%$baseUrl%>/js/jquery.1.7.0.js"></script>
<script src="<%$baseUrl%>/js/validation/jquery.validationEngine-zh_CN.js"></script>
<script src="<%$baseUrl%>/js/validation/jquery.validationEngine.js"></script>

<script>

jQuery(document).ready( function() {
  // binds form submission and fields to the validation engine
  jQuery("#addmember").validationEngine();
  $("#addmember").validationEngine("attach",{ 
      showOneMessage:true
  });
});

</script>

<form id="addmember" action="<%$baseUrl%>/product/add" method="post" class="pageform">
    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品名</label>
      </div>
      <div class="pf-r">
        <input name="name" data-prompt-position="inline" data-prompt-target="namemessage" class="pf-text validate[required,ajax[ajaxUserCall]]" type="text" id='name' value=""/>
        <span class="pf-help">请输入商品名称</span><div id="namemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品价格</label>
      </div>
      <div class="pf-r">
        <input name="price" data-prompt-position="inline" data-prompt-target="realnamemessage" class="pf-text validate[required]" type="text"  value=""/>
        <span class="pf-help">请输入商品价格</span><div id="realnamemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">会员价格</label>
      </div>
      <div class="pf-r">
        <input name="phone" data-prompt-position="inline" data-prompt-target="phonemessage" class="pf-text" type="text"  value=""/>
        <span class="pf-help">请输入会员价格</span><div id="phonemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品描述</label>
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
</form>