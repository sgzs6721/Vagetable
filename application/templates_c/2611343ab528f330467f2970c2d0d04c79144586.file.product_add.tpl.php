<?php /* Smarty version Smarty-3.1.18, created on 2014-09-13 07:09:26
         compiled from "application\views\pages\product_add.tpl" */ ?>
<?php /*%%SmartyHeaderCode:72785413eda68edfa9-68669132%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2611343ab528f330467f2970c2d0d04c79144586' => 
    array (
      0 => 'application\\views\\pages\\product_add.tpl',
      1 => 1410578926,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '72785413eda68edfa9-68669132',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'baseUrl' => 0,
    'categorylist' => 0,
    'row' => 0,
    'keys' => 0,
    'value' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5413eda6a11480_73371595',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5413eda6a11480_73371595')) {function content_5413eda6a11480_73371595($_smarty_tpl) {?><link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/css/validation/validationEngine.jquery.css">
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/jquery.1.7.0.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/ajax3.0.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/validation/jquery.validationEngine-zh_CN.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/validation/jquery.validationEngine.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/imagepicker/image-picker.js"></script>
<script src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/js/imagepicker/image-picker.min.js"></script>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/css/image-picker.css">

<script type="text/javascript">
var ajax = new Ajax();

jQuery(document).ready( function() {
  // binds form submission and fields to the validation engine
  jQuery("#addproduct").validationEngine();
  $("#addproduct").validationEngine("attach",{
      showOneMessage:true
  });
});

</script>

<form id="addproduct" action="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/product/add" method="post" class="pageform">
    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品名称</label>
      </div>
      <div class="pf-r">
        <input name="name" data-prompt-position="inline" data-prompt-target="namemessage" class="pf-text validate[required,ajax[ajaxProductCall]]]" type="text" id='name' value=""/>
        <span class="pf-help">请输入商品名称</span><div id="namemessage"></div>
      </div>
    </div>

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品类别</label>
      </div>
      <div class="pf-r">
          <select name="category" id="category" class="pf-select">
            <option value="">----选择商品类别----</option>
            <?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['categorylist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value) {
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>
              <?php  $_smarty_tpl->tpl_vars['value'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['value']->_loop = false;
 $_smarty_tpl->tpl_vars['keys'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['row']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['value']->key => $_smarty_tpl->tpl_vars['value']->value) {
$_smarty_tpl->tpl_vars['value']->_loop = true;
 $_smarty_tpl->tpl_vars['keys']->value = $_smarty_tpl->tpl_vars['value']->key;
?>
                <?php if ($_smarty_tpl->tpl_vars['keys']->value=='name') {?>
                  <option value="<?php echo $_smarty_tpl->tpl_vars['row']->value['enname'];?>
"><?php echo $_smarty_tpl->tpl_vars['value']->value;?>
</option>
                <?php }?>
              <?php } ?>
            <?php } ?>
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

    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">商品图片</label>
      </div>
      <div class="show_images">
        <!--
        <select multiple="multiple" class="image-picker show-html" name='picpath[]'>
          <option data-img-src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/thumbnail/1.jpg" value="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/thumbnail/1.jpg">image1</option>
          <option data-img-src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/thumbnail/2.jpg" value="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/thumbnail/2.jpg">image2</option>
          <option data-img-src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/thumbnail/3.jpg" value="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/thumbnail/3.jpg">image3</option>
          <option data-img-src="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/thumbnail/4.jpg" value="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/images/thumbnail/4.jpg">image4</option>
        </select>
      -->
      </div>
    </div>
    
    <div class="pf-button">
      <input type="submit" class="btn btn-submit" value="确 认" />
    </div>
</form>

<script type="text/javascript">

    jQuery("select.image-picker").imagepicker({
      hide_select:  true,
    });

    $('#category').change(function(){
      var category = $('#category').val();
      var url = '<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
/image/get_images/' + category;
      ajax.get(url,function(data){

        $('.show_images').html(data);

      });

    });
</script>





<?php }} ?>
