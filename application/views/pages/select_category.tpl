<form id="addproduct" action="<%$baseUrl%>/image/index" method="post" class="pageform">
    <div class="pf-item">
      <div class="pf-l">
        <label class="pf-label">选择上传图片类别</label>
      </div>
      <div class="pf-r">
          <select name="category" id="category" class="pf-select">
            <%foreach from=$categorylist item=row %>
              <%foreach from=$row key=keys item=value %>
                <%if $keys eq name%>
                  <option value="<%$row.enname%>"><%$value%></option>
                <%/if%>
              <%/foreach%>
            <%/foreach%>
          </select>
        </div>
    </div>
    <div class="pf-button">
      <input type="submit" class="btn btn-submit" value="确 定" />
    </div>

</form>