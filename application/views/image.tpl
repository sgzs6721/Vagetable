<script src="<%$baseUrl%>/js/jquery.1.7.0.js"></script>
<script src="<%$baseUrl%>/js/imagepicker/image-picker.js"></script>
<script src="<%$baseUrl%>/js/imagepicker/image-picker.min.js"></script>
<link rel="stylesheet" href="<%$baseUrl%>/css/image-picker.css">


<select multiple="multiple" class="image-picker show-html">
  <option data-img-src="<%$baseUrl%>/images/thumbnail/1.jpg" value="1">image1</option>
  <option data-img-src="<%$baseUrl%>/images/thumbnail/2.jpg" value="2">image2</option>
  <option data-img-src="<%$baseUrl%>/images/thumbnail/3.jpg" value="3">image3</option>
  <option data-img-src="<%$baseUrl%>/images/thumbnail/4.jpg" value="4">image4</option>
</select>

<script type="text/javascript">

    jQuery("select.image-picker").imagepicker({
      hide_select:  true,
    });

</script>