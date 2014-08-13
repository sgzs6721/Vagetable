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
        <input name="name" data-prompt-position="inline" data-prompt-target="namemessage" class="pf-text validate[required]" type="text" id='name' value=""/>
        <span class="pf-help">请输入商品名称</span><div id="namemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品类别</label>
      </div>
      <div class="pf-r">
          <select name="category" id="category" class="pf-select">
            <%foreach from=$categorylist item=row %>
              <%foreach from=$row key=keys item=value %>
                <%if $keys eq name%>
                  <option value="<%$row.categoryid%>"><%$value%></option>
                <%/if%>
              <%/foreach%>
            <%/foreach%>
          </select>
        </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品进价</label>
      </div>
      <div class="pf-r">
        <input name="oprice" data-prompt-position="inline" data-prompt-target="opricemessage" class="pf-text validate[required]" type="text"  value=""/>
        <span class="pf-help">请输入商品的进价</span><div id="opricemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品价格</label>
      </div>
      <div class="pf-r">
        <input name="sprice" data-prompt-position="inline" data-prompt-target="spricemessage" class="pf-text validate[required]" type="text"  value=""/>
        <span class="pf-help">请输入商品价格</span><div id="spricemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">会员价格</label>
      </div>
      <div class="pf-r">
        <input name="mprice" data-prompt-position="inline" data-prompt-target="mpricemessage" class="pf-text" type="text"  value=""/>
        <span class="pf-help">请输入会员价格</span><div id="mpricemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品描述</label>
      </div>
      <div class="pf-r">
        <input name="desc" data-prompt-position="inline" data-prompt-target="descmessage" class="pf-text" type="text"  value=""/>
        <span class="pf-help">请输入商品描述信息</span><div id="descmessage"></div>
      </div>
    </div>
    
    <div class="pf-button">
      <input type="submit" class="btn btn-submit" value="确 认" />
    </div>
</form>