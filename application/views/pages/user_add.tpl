<link rel="stylesheet" href="<%$baseUrl%>/css/validation/validationEngine.jquery.css">
<script src="<%$baseUrl%>/js/jquery.1.7.0.js"></script>
<script src="<%$baseUrl%>/js/validation/jquery.validationEngine-zh_CN.js"></script>
<script src="<%$baseUrl%>/js/validation/jquery.validationEngine.js"></script>

<script>

/*jQuery(document).ready( function() {
  // binds form submission and fields to the validation engine
  jQuery("#adduser").validationEngine();
  $("#adduser").validationEngine("attach",{ 
      showOneMessage:true
  });
});*/

</script>

<form id="adduser" action="<%$baseUrl%>/login/register/1" method="post" class="pageform">
    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户名</label>
      </div>
      <div class="pf-r">
        <input name="username" data-prompt-position="inline" data-prompt-target="namemessage" class="username" type="text" id='username' value="" onblur='CheckName()'/>
        <span class="pf-help">请输入用户名</span><div id="namemessage"></div>
      </div>
    </div>


    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">用户密码</label>
      </div>
      <div class="pf-r">
        <input name="passwd" id="password" data-prompt-position="inline" data-prompt-target="passwordmessage" class="pf-text validate[required]" type="password"  value="" />
        <span class="pf-help">请输入密码</span><div id="passwordmessage"></div>
      </div>
    </div>

     <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">确认密码</label>
      </div>
      <div class="pf-r">
        <input name="configurepasswd" id="configurepasswd" data-prompt-position="inline" data-prompt-target="configurepasswdmessage" class="pf-text validate[required]" type="password"  value="" onblur='CheckPass()'/>
        <span class="pf-help">请输入确认密码</span><div id="configurepasswdmessage"></div>
      </div>
    </div>

    
    <div class="pf-button">
      <input type="button" class="btn btn-submit" value="确 认" onClick="Check()"/>
    </div>
</form>

<script>

        /*var password=jQuery("#password").val();
        var configurepasswd=jQuery("#configurepasswd").val();
        alert(password+configurepasswd)

        $("#configurepasswd").live('blur',function(){
             if(password==configurepasswd){
              $("#configurepasswdmessage").html("输入正确");
                
              }
            else{
                $("#configurepasswdmessage").html("两次输入的密码不一样");
                $("#configurepasswd").val("");
              }
        });*/

function CheckName(){
       
          var username=jQuery("#username").val();
          
          if(username==""){
             $("#namemessage").html("请填写用户名");
          }
          else{
           $.ajax({
                        type:'get',
                        //data: "username="+username,
                        //url: '<%$baseUrl%>/login/ajaxValidateFieldUser/username',
                        date: username,
                        url: '<%$baseUrl%>/login/ajaxValidateFieldUser/'+username,
                        dataType: 'json',
                        success: function(data_array){
                         //alert(data_array.data)
                            $("#namemessage").text("正在查询...");
                            setTimeout(function () { 
                                if(data_array.data=='true'){
                                    $("#namemessage").html("该用户名已存在");
                                    $("#username").val("");
                                   
                                }
                                else{
                                     $("#namemessage").html("该用户名可用");
                                   
                                }
                             }, 800);
                          },
                        error: function()
                        {
                            alert("error");
                        }
                    

                       });
                  } 
              if(username==""){
             $("#namemessage").html("请填写用户名");
          }
           
   
      }

      function CheckPass(){
          var password=jQuery("#password").val();
          var configurepasswd=jQuery("#configurepasswd").val();
          if(password!=configurepasswd){
                $("#configurepasswdmessage").html("两次输入的密码不一样");
                $("#configurepasswd").val("");
          }
          else{
               $("#configurepasswdmessage").html("输入正确");
          }
      }
    
    
     function Check(){
          var password=jQuery("#password").val();
          var configurepasswd=jQuery("#configurepasswd").val();
          var username=jQuery("#username").val();
          
          if(username==""){
             $("#namemessage").html("请填写用户名");
             
          }
          else if(password==""){
             $("#passwordmessage").html("请输入密码");
             return false;
          }
          else if(configurepasswd==""){
             $("#configurepasswdmessage").html("请输入确认密码");
             return false;
          }
          /*else if(password!=configurepasswd){
             $("#configurepasswdmessage").html("两次输入的密码不一样");
             return false;
          }*/
         /* jQuery("#adduser").action = '<%$baseUrl%>/login/register/' + 1;*/
          jQuery("#adduser").submit();
         
         

      }
      
      
    /*jQuery(document).ready( function() {
     
     $("#username").live('blur',function(){
          var username=jQuery("#username").val();
          
          if(username==""){
             $("#namemessage").html("请填写用户名");
          }
          else{
           $.ajax({
                        type:'get',
                        //data: "username="+username,
                        //url: '<%$baseUrl%>/login/ajaxValidateFieldUser/username',
                        date: username,
                        url: '<%$baseUrl%>/login/ajaxValidateFieldUser/'+username,
                        dataType: 'json',
                        success: function(data_array){
                         
                            $("#namemessage").text("正在查询...");
                            setTimeout(function () { 
                                if(data_array.data==true){
                                    $("#namemessage").html("该用户名已存在");
                                }
                                else{

                                    $("#namemessage").html("该用户名可用");
                                }
                             }, 800);
                          },
                        error: function()
                        {
                            alert("error");
                        }
                    

                       });
                  } 
              if(username==""){
             $("#namemessage").html("请填写用户名");
          }
            });
      
     Check();
   
});*/
          
</script>