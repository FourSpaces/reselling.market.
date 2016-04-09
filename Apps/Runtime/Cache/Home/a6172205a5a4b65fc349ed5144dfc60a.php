<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  		<title>卖家中心 - <?php echo ($CONF['mallTitle']); ?></title>
  		<meta name="keywords" content="<?php echo ($CONF['mallKeywords']); ?>" />
      	<meta name="description" content="<?php echo ($CONF['mallDesc']); ?>,卖家中心" />
  		<meta http-equiv="Expires" content="0">
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Cache-control" content="no-cache">
		<meta http-equiv="Cache" content="no-cache">
  		<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/common.css" />
    	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/shop.css">
    	<link rel="stylesheet" type="text/css" href="/reselling.market/Public/plugins/webuploader/webuploader.css" />
      	<script>
		var publicurl = '/reselling.market/Public/';
		var shopId = '<?php echo ($orderInfo["order"]["shopId"]); ?>';
		var pageCount='<?php echo ($receiveOrders["totalPage"]); ?>';
		var current='<?php echo ($receiveOrders["currPage"]); ?>';
		</script>
		<?php echo WSTLoginTarget(1);?>
    </head>
    <body>
        <div class="wst-wrap">
          <div class='wst-header'>
			<script src="/reselling.market/Public/js/jquery.min.js"></script>
<script src="/reselling.market/Public/plugins/lazyload/jquery.lazyload.min.js?v=1.9.1"></script>
<script type="text/javascript">
var WST = ThinkPHP = window.Think = {
        "ROOT"   : "/reselling.market",
        "APP"    : "/reselling.market/index.php",
        "PUBLIC" : "/reselling.market/Public",
        "DEEP"   : "<?php echo C('URL_PATHINFO_DEPR');?>",
        "MODEL"  : ["<?php echo C('URL_MODEL');?>", "<?php echo C('URL_CASE_INSENSITIVE');?>", "<?php echo C('URL_HTML_SUFFIX');?>"],
        "VAR"    : ["<?php echo C('VAR_MODULE');?>", "<?php echo C('VAR_CONTROLLER');?>", "<?php echo C('VAR_ACTION');?>"],
        "DOMAIN" : "<?php echo WSTDomain();?>",
        "CITYID" : "<?php echo ($currArea['areaId']); ?>",
        "DEFAULT_IMG": "<?php echo WSTDomain();?>/<?php echo ($CONF['goodsImg']); ?>",
        "MALL_TITLE" : "<?php echo ($CONF['mallName']); ?>",
        "SMS_VERFY"  : "<?php echo ($CONF['smsVerfy']); ?>",
        "PHONE_VERFY"  : "<?php echo ($CONF['phoneVerfy']); ?>"
}
    var domainURL = "<?php echo WSTDomain();?>";
    var publicurl = "/reselling.market/Public";
    var currCityId = "<?php echo ($currArea['areaId']); ?>";
    var currCityName = "<?php echo ($currArea['areaName']); ?>";
    var currDefaultImg = "<?php echo WSTDomain();?>/<?php echo ($CONF['goodsImg']); ?>";
    var wstMallName = "<?php echo ($CONF['mallName']); ?>";
    $(function() {
    	$('.lazyImg').lazyload({ effect: "fadeIn",failurelimit : 10,threshold: 200,placeholder:WST.DEFAULT_IMG});
    });
</script>
<script src="/reselling.market/Public/js/think.js"></script>
<div id="wst-shortcut">
	<div class="w">
		<ul class="fl lh">
			<li class="fore1" ><b></b><a style="font-weight: bold;" href='<?php echo WSTDomain();?>'><?php echo ($CONF['mallName']); ?></a></li><s></s>
			<!--
			<li class="fore3 ld menu" id="app-jd" data-widget="dropdown">
				<span class="outline"></span> <span class="blank"></span> 
				<a href="#" target="_blank"><img src="/reselling.market/Apps/Home/View/default/images/icon_top_02.png"/>&nbsp;<?php echo ($CONF['mallName']); ?> 手机版</a>
			</li>
			-->
			<li class="fore4" id="biz-service" data-widget="dropdown" style='padding:0;'>&nbsp;<s></s>&nbsp;&nbsp;&nbsp;
				所在学校
				【<span class='wst-city'>&nbsp;<?php echo ($currArea["areaName"]); ?>&nbsp;</span>】
				<img src="/reselling.market/Apps/Home/View/default/images/icon_top_03.png"/>	
				&nbsp;&nbsp;<a href="javascript:;" onclick="toChangeCity();">切换学校</a><i class="triangle"></i>
			</li>
		</ul>
	
		<ul class="fr lh" style='float:right;'>
			<li class="fore1" id="loginbar"><a href="<?php echo U('Home/Orders/queryByPage');?>"><span style='color:blue'><?php echo ($WST_USER['loginName']); ?></span></a> 欢迎您来到 <a style="font-weight: bold;" href='<?php echo WSTDomain();?>'><?php echo ($CONF['mallName']); ?></a>！<s></s>&nbsp;
			<span>
				<?php if(!$WST_USER['userId']): ?><a href="<?php echo U('Home/Users/login');?>">[登录]</a>
				<a href="<?php echo U('Home/Users/regist');?>"	class="link-regist">[注册]</a><?php endif; ?>
				<?php if($WST_USER['userId'] > 0): ?><a href="javascript:logout();">[退出]</a><?php endif; ?>
			</span>
			</li>
			<li class="fore2 ld"><s></s>
			<?php if(session('WST_USER.userId')>0){ ?>
				<?php if(session('WST_USER.userType')==0){ ?>
					<!--
				    <a href="<?php echo U('Home/Shops/toOpenShopByUser');?>" rel="nofollow">成为服务商</a>
				-->
				    <a href="<?php echo U('Articles/index',array('articleId'=>7));?>" rel="nofollow">成为服务商</a>
				<?php }else{ ?>
				    <?php if(session('WST_USER.loginTarget')==0){ ?>
				        <a href="<?php echo U('Home/Shops/index');?>" rel="nofollow">卖家中心</a>
				    <?php }else{ ?>
				        <a href="<?php echo U('Home/Users/index');?>" rel="nofollow">买家中心</a>
				    <?php } ?>
				<?php } ?>
			<?php }else{ ?>
				<!--
			    <a href="<?php echo U('Home/Shops/toOpenShop');?>" rel="nofollow">成为服务商</a>
				-->

			    <a href="<?php echo U('Articles/index',array('articleId'=>7));?>" rel="nofollow">成为服务商</a>
			<?php } ?>
			</li>
		</ul>
		<span class="clr"></span>
	</div>
</div>

			<div class='wst-user-top'>
			<div class="wst-user-top-main">
					<div class='wst-user-top-logo'>
						<a href="<?php echo WSTDomain();?>"  title='商城首页'>
						<img src="<?php echo WSTDomain();?>/<?php echo ($CONF['mallLogo']); ?>" height="132" width='240'/>	
						</a>
					</div>
					<div class='wst-user-top-search'>
						<div class="search-box">
							<input id="wst-search-type" type="hidden" value="1"/>
							<input id="keyword" class="wst-search-ipt" me="q" tabindex="9" placeholder="搜索 商品" autocomplete="off" >
							<div id="btnsch" class="wst-search-btn">搜&nbsp;索</div>
						</div>
					</div>
					
				</div>
			</div>
			<div class="wst-shop-nav">
				<div class="wst-nav-box">
					<li class="liselect">
            <?php if(($userType == 1)): ?><a href="<?php echo U('Home/Shops/index');?>" style='color:#FFFFFF;'>卖家首页</a>
            <?php else: ?>
              <a href="<?php echo U('Home/Orders/queryByPage');?>">买家首页</a><?php endif; ?>
           
          </li>
					<div class="wst-clear" style=""></div>
          
				</div>
			</div>
			<div class="wst-clear;"></div>
		</div>
          <div class='wst-nav'></div>
          <div class='wst-main'>
            <div class='wst-menu'>
            	<span class='wst-menu-title' style="display:none;"><span></span>交易管理</span>
            
              	<a style="display:none;" href='<?php echo U("Home/Orders/toShopOrdersList");?>'><li id='li_toShopOrdersList' <?php if($umark == "toShopOrdersList"): ?>class='liselect'<?php endif; ?>>订单管理<span style="display:none;" class="wst-msg-tips-box"></span></li></a>
            	<span class='wst-menu-title' style='border-top:0px;'><span></span>商品管理</span>
                <a style="" href="<?php echo U('Home/GoodsAppraises/getAppraisesList/',array('speechType'=>'receive'));?>"><li <?php if($umark == "getAppraisesList"): ?>class='selected'<?php endif; ?>>留言管理</li></a>
               	<a style="display:none;" href="<?php echo U('Home/ShopsCats/index/');?>"><li <?php if($umark == "index"): ?>class='liselect'<?php endif; ?>>商品分类</li></a>
               	<a  style="display:none;" href="<?php echo U('Home/Goods/queryPenddingByPage/');?>"><li <?php if($umark == "queryPenddingByPage"): ?>class='liselect'<?php endif; ?>>待审核商品</li></a>
               	<a  style="display:none;" href="<?php echo U('Home/Goods/queryUnSaleByPage/');?>"><li <?php if($umark == "queryUnSaleByPage"): ?>class='liselect'<?php endif; ?>>仓库中的商品</li></a>
                <a style="display:none;" href="<?php echo U('Home/GoodsAppraises/index/');?>"><li <?php if($umark == "GoodsAppraises"): ?>class='liselect'<?php endif; ?>>评价管理</li></a>

                <a style="display:none;" href="<?php echo U('Home/AttributeCats/index');?>"><li <?php if($umark == "AttributeCats"): ?>class='liselect'<?php endif; ?>>商品类型</li></a>
                
                <!--分割线，上面的弃用 -->
                <a href="<?php echo U('Home/Goods/queryOnSaleByPage/');?>"><li <?php if($umark == "queryOnSaleByPage"): ?>class='liselect'<?php endif; ?>>出售中的宝贝</li></a>
               	<a href="<?php echo U('Home/Goods/toEdit/',array('umark'=>'toEditGoods'));?>"><li <?php if($umark == "toEditGoods"): ?>class='liselect'<?php endif; ?>>新增宝贝</li></a>
               	
               	<a style="display:none;" href="<?php echo U('Home/Imports/index');?>"><li <?php if($umark == "Imports"): ?>class='liselect'<?php endif; ?>>数据导入</li></a>
			          <?php if(($userType == 1)): ?><span class='wst-menu-title'><span></span>网店设置</span>
                  <a href="<?php echo U('Home/Shops/toEdit/');?>"><li <?php if($umark == "toEdit"): ?>class='liselect'<?php endif; ?>>店铺资料</li></a>
                  <a href="<?php echo U('Home/Shops/toShopCfg/');?>"><li <?php if($umark == "setShop"): ?>class='liselect'<?php endif; ?>>店铺设置</li></a><?php endif; ?>
              	  
                  <span class='wst-menu-title'><span></span>个人中心</span>
                  <a  href="<?php echo U('Home/Favorites/queryByPage/');?>"><li <?php if($umark == "queryFavoritesByPage"): ?>class='selected'<?php endif; ?>>我的关注</li></a>
                  <a href="<?php echo U('Home/Messages/queryByPage/');?>"><li id='li_queryMessageByPage' <?php if($umark == "queryMessageByPage"): ?>class='liselect'<?php endif; ?>>商城消息<span style="display:none;" class="wst-msg-tips-box"></span></li></a>
                  <a href="<?php echo U('Home/Users/toEdit/');?>"><li <?php if($umark == "toEditUser"): ?>class='selected'<?php endif; ?>>个人资料</li></a>
                  <a href="<?php echo U('Home/Users/toEditPass/');?>"><li <?php if($umark == "toEditPass"): ?>class='selected'<?php endif; ?>>修改密码</li></a>
            </div>
            <div class='wst-content'>
            

<script src="/reselling.market/Public/plugins/kindeditor/kindeditor.js"></script>
<script src="/reselling.market/Public/plugins/kindeditor/lang/zh_CN.js"></script>

<link rel="stylesheet" type="text/css" href="/reselling.market/Public/plugins/webuploader/style.css" />
<link rel="stylesheet" type="text/css" href="/reselling.market/Public/plugins/webuploader/webuploader.css" />
<script type="text/javascript" src="/reselling.market/Public/plugins/webuploader/webuploader.js"></script>
<script type="text/javascript" src="/reselling.market/Apps/Home/View/default/js/goodsbatchupload.js"></script>
<style>
.input-prepend {
    position: relative;
    white-space: nowrap;
    vertical-align: middle;

}
.input-prepend .add-on {
    position: absolute;
    color: #666;
    line-height: 24px;
    text-align: center;
    margin: 5px 8px;
}
.input-prepend .input.mobile {
    padding-left: 50px;
    width:90px;
}
.control-group .input {
    width: 135px;
    height: 14px;
    padding: 4px 5px;
    line-height: 14px;
}
</style>   
<script>
var ablumInit = false;
$(function () {
	   $('#tab').TabPanel({tab:0,callback:function(no){
		    if(no==2 && !ablumInit)uploadAblumInit();
	   }});
	   $.formValidator.initConfig({
		   theme:'Default',mode:'AutoTip',formID:"myform",debug:true,submitOnce:true,onSuccess:function(){
			       //editGoods('<?php echo ($umark); ?>');
			       editGoods('queryOnSaleByPage');
			       return false;
			},onError:function(msg){
		}});
	   /*
	   $("#goodsSn").formValidator({onShow:"",onFocus:"",onCorrect:"输入正确"}).inputValidator({min:1,max:50,onError:"请输入商品编号"});
	   */
	   $("#goodsName").formValidator({onShow:"",onFocus:"",onCorrect:"输入正确"}).inputValidator({min:1,max:200,onError:"请输入宝贝名称"});
	   $("#marketPrice").formValidator({onShow:"",onFocus:"",onCorrect:"输入正确"}).inputValidator({min:1,max:50,onError:"请输入原价"});
	   $("#shopPrice").formValidator({onShow:"",onFocus:"",onCorrect:"输入正确"}).inputValidator({min:1,max:50,onError:"请输入现价"});

	   $("#phone").formValidator({onShow:"",onFocus:"",onCorrect:"输入正确"}).inputValidator({min:11,max:11,onError:"请输入手机号"});
	   $("#sellerName").formValidator({onShow:"",onFocus:"",onCorrect:"输入正确"}).inputValidator({min:3,max:8,onError:"名字输入不合法"});
	   /*
	   $("#goodsStock").formValidator({onShow:"",onFocus:"",onCorrect:"输入正确"}).inputValidator({min:1,max:50,onError:"请输入库存"});
	   */
	   /*
	   $("#goodsUnit").formValidator({onShow:"",onFocus:"",onCorrect:"输入正确"}).inputValidator({min:1,max:50,onError:"请输入宝贝单位"});
	   */
	   $("#goodsCatId3").formValidator({onFocus:"请选择宝贝分类"}).inputValidator({min:1,onError: "请选择完整宝贝分类"});
	   /*
	   $("#shopCatId2").formValidator({onFocus:"请选择本店分类"}).inputValidator({min:1,onError: "请选择完整本店分类"});
	   */
	   KindEditor.ready(function(K) {
			editor1 = K.create('textarea[name="goodsDesc"]', {
				height:'250px',
				width:"800px",
				allowFileManager : false,
				allowImageUpload : true,
				items:[
				        'source', '|', 'undo', 'redo', '|', 'preview', 'print', 'template', 'cut', 'copy', 'paste',
				        'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
				        'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
				        'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
				        'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
				        'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|','image','multiimage','table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
				        'anchor', 'link', 'unlink', '|', 'about'
				],
				afterBlur: function(){ this.sync(); }
			});
		});
	   <?php if($object['goodsId'] !=0 ): ?>getCatListForEdit("goodsCatId2",<?php echo ($object["goodsCatId1"]); ?>,0,<?php echo ($object["goodsCatId2"]); ?>);
	   getCatListForEdit("goodsCatId3",<?php echo ($object["goodsCatId2"]); ?>,1,<?php echo ($object["goodsCatId3"]); ?>);
	   getShopCatListForEdit(<?php echo ($object["shopCatId1"]); ?>,<?php echo ($object["shopCatId2"]); ?>);<?php endif; ?>
	
});

function imglimouseover(obj){
	if(!$(obj).find('.file-panel').html()){
		$(obj).find('.setdel').addClass('trconb');
		$(obj).find('.setdel').css({"display":""});
	}
}

function imglimouseout(obj){
	
	$(obj).find('.setdel').removeClass('trconb');
	$(obj).find('.setdel').css({"display":"none"});
}

function imglidel(obj){
	if (confirm('是否删除图片?')) {
		$(obj).parent().remove("li");
		return;
	}
}

function imgmouseover(obj){
	$(obj).find('.wst-gallery-goods-del').show();
}
function imgmouseout(obj){
	$(obj).find('.wst-gallery-goods-del').hide();
}
function delImg(obj){
	   $(obj).parent().remove();
}

var filetypes = ["gif","jpg","png","jpeg"];
</script>
       <div class="wst-body"> 
       <div class='wst-page-header'>卖家中心 > <?php if($object['goodsId'] ==0 ): ?>新增<?php else: ?>编辑<?php endif; ?>商品资料</div>
       <div class='wst-page-content'>
       <div id='tab' class="wst-tab-box">
		<ul class="wst-tab-nav">
	    	<li>宝贝信息</li>
	    	
	    	<li style="display:none;">属性</li>
	  
	        <li>宝贝相册</li>
	    </ul>
    	<div class="wst-tab-content" style='width:99%;margin-bottom: 10px;'>
    	 
    	
    	<!-- 商品基础信息 -->
    	<div class='wst-tab-item' style="position: relative;style='display:none'">
    		<iframe name="upload" style="display:none"></iframe>
			<form id="uploadform_Filedata" autocomplete="off" style="position:absolute;top:100px;left:300px;z-index:10;" enctype="multipart/form-data" method="POST" target="upload" action="<?php echo U('Home/Shops/uploadPic');?>" >
				<div style="position:relative;">
				<input id="goodsImg" name="goodsImg" type="text" value="<?php echo ($object["goodsImg"]); ?>" readonly style="margin-right:4px;float:left;margin-left:8px;width:140px;"/>
				<div class="div1">
					<div class="div2">浏览</div>
					<input type="file" class="inputstyle" id="Filedata" name="Filedata" onchange="updfile('Filedata');" >
				</div>
				<div style="clear:both;"></div>
				<div >&nbsp;图片大小:150 x 120 (px)(格式为 gif, jpg, jpeg, png)</div>
				<input type="hidden" name="dir" value="goods">
				<input type="hidden" name="width" value="500">
				<input type="hidden" name="folder" value="Filedata">
				<input type="hidden" name="sfilename" value="Filedata">
				<input type="hidden" name="fname" value="goodsImg">
				<input type="hidden" id="s_Filedata" name="s_Filedata" value="">
				
				</div>
			</form>
	       <form name="myform" method="get" id="myform" autocomplete="off">
	        <input type='hidden' id='id' value='<?php echo ($object["goodsId"]); ?>'/>
	      
	        <input type='hidden' id='goodsThumbs' value='<?php echo ($object["goodsThums"]); ?>'/>
	        <table class="wst-form" >
	            <tr style="display:none;">
	             <th width='120'>商品编号<font color='red'>*</font>：</th>
	             <td width='300'>
	             <input type='text' id='goodsSn' name='goodsSn' class="form-control wst-ipt" value='<?php echo ($object["goodsSn"]); ?>' maxLength='25'/>
	             </td>
	            </tr>

	            <tr>
	              <th width='120'>标题<font color='red'>*</font>：</th>
	              <td><input type='text' style="width:138px" id='goodsName' name='goodsName' class="form-control wst-ipt" value='<?php echo ($object["goodsName"]); ?>' maxLength='100'/></td>
	            </tr>
				<tr>
	             <th width='120'>宝贝图片<font color='red'>*</font>：</th>
	             <td valign='top'>
	               <div id="preview_Filedata">
		           <img id='goodsImgPreview' src='<?php if($object['goodsImg'] =='' ): ?>/reselling.market/<?php echo ($CONF['goodsImg']); else: ?>/reselling.market/<?php echo ($object['goodsImg']); endif; ?>' height='152'/><br/>
	               </div>
	             </td>
	            </tr>
				<tr>
	             <th width='120'>类别<font color='red'>*</font>：</th>
	             <td colspan='3'>
	             <select id='goodsCatId1' onchange='javascript:getCatListForEdit("goodsCatId2",this.value,0)'>
	                <option value=''>请选择</option>
	                <?php if(is_array($goodsCatsList)): $i = 0; $__LIST__ = $goodsCatsList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['serviceType'] == $userType): ?><option value='<?php echo ($vo['catId']); ?>' <?php if($object['goodsCatId1'] == $vo['catId'] ): ?>selected<?php endif; ?>><?php echo ($vo['catName']); ?></option><?php endif; endforeach; endif; else: echo "" ;endif; ?>

	             </select>
	             <select id='goodsCatId2' onchange='javascript:getCatListForEdit("goodsCatId3",this.value,1);'>
	                <option value=''>请选择</option>
	             </select>
	             <select id='goodsCatId3'>
	                <option value=''>请选择</option>
	             </select>
	             </td>
	           </tr>

				<!-- 2016 0131 2347 添加 新旧-->
				<tr>
	              <th width='120'>新旧<font color='red'>*</font>：</th>
				  <td colspan='3'>
		            <label>
		             <input type='radio' id='oldAndNew0' name='oldAndNew' <?php if($object['oldAndNew'] ==0 ): ?>checked<?php endif; ?> value='0'/>非全新
		             <input type='radio' id='oldAndNew1' name='oldAndNew' <?php if($object['oldAndNew'] ==1 ): ?>checked<?php endif; ?> value='1'/>全新
		             </label>
		             <label>
		            </label>
	              </td>

	            </tr>
	           	<tr>
	             <th width='120'>转让价<font color='red'>*</font>：</th>
	             <td>
	             	<?php if($object["recommPrice"] > 0): ?><input type='text' style="width:138px" style="width:138px" id='shopPrice' name='shopPrice' disabled="disabled" class="form-control wst-ipt"  value='<?php echo ($object["recommPrice"]); ?>' onkeypress="return WST.isNumberdoteKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxLength='10'/>
	             	<?php else: ?>
	             		<input type='text' style="width:138px" id='shopPrice' name='shopPrice' class="form-control wst-ipt" value='<?php echo ($object["shopPrice"]); ?>' onkeypress="return WST.isNumberdoteKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxLength='10'/><?php endif; ?>
	             	
	             </td>
	            </tr>

	            <tr>
	             <th width='120'>原价<font color='red'>*</font>：</th>
	             <td>
	             	<input type='text' style="width:138px" id='marketPrice' name='marketPrice' class="form-control wst-ipt" value='<?php echo ($object["marketPrice"]); ?>' onkeypress="return WST.isNumberdoteKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxLength='10'/>
	             </td>
	           </tr>
				
				<!-- 2016 0131 2348 添加 讲价-->
				<tr>
	              <th width='120'>讲价<font color='red'>*</font>：</th>
	              <td colspan='3'>
		            <label>
		             <input type='radio' id='bargain0' name='bargain' <?php if($object['bargain'] ==0 ): ?>checked<?php endif; ?> value='0'/>拒绝
		             <input type='radio' id='bargain1' name='bargain' <?php if($object['bargain'] ==1 ): ?>checked<?php endif; ?> value='1'/>接受
		             </label>
		             <label>
		            </label>
	              </td>
	            </tr>

	            <tr style="display:none;">
	             <th width='120'>商品库存<font color='red'>*</font>：</th>
	             <td><input type='text' id='goodsStock' name='goodsStock' class="form-control wst-ipt" value='<?php echo ($object["goodsStock"]); ?>' onkeypress="return WST.isNumberKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxLength='25' <?php if(count($object['priceAttrs']) > 0 ): ?>disabled<?php endif; ?> />
	             </td>
	           	</tr>
				
	           	<!--2016 0131 2330 去掉宝贝计量单位-->
	           <tr style="display:none;">
	             <th width='120'>单位<font color='red'>*</font>：</th>
	             <?php if(empty($name)): ?><td><input type='text' id='goodsUnit' name='goodsUnit' class="form-control wst-ipt" value='件'  maxLength='25'/></td>
				 	<?php else: ?>
				 	<td><input type='text' id='goodsUnit' name='goodsUnit' class="form-control wst-ipt" value='<?php echo ($object["goodsUnit"]); ?>'  maxLength='25'/></td><?php endif; ?>
	             
	           </tr>
	           <tr>
	             <th width='120'>宝贝关键字：</th>
	             <td colspan='3'>
	             <input type='text' style="width:138px" id='goodsKeywords' name='goodsKeywords' value='<?php echo ($object["goodsKeywords"]); ?>' maxlength="100">
	             </td>
	           </tr>
			   <tr>
	             <th width='120'>联系方式：<font color='red'>*</font></th>
	             <td colspan='3'>
	             <div class="input-prepend">
            		<label class="add-on" for="phone">&nbsp;手&nbsp;机：</label>
            		<input id="phone" type="text" class="input mobile" name="phone" value="<?php echo ($object["phone"]); ?>" maxlength="11">
            	 </div>
	             </td>
	             </td>
	           </tr>
	           <tr>
	             <th width='120'></th>
	             <td colspan='3'>
	             <div class="input-prepend">
            		<label class="add-on" for="sellerName">&nbsp;名&nbsp;字：</label>
            		<input id="sellerName" type="text" class="input mobile" name="sellerName" value="<?php echo ($object["sellerName"]); ?>" placeholder="某先生/女士">
            	 </div>
	             </td>
	           </tr>
	           <!--2016 0131 2332 去掉商品信息-->
	           <tr style="display:none;">
	             <th width='120'>宝贝信息：</th>
	             <td colspan='3'>
	             <textarea rows="2" style="width:788px" id='goodsSpec' name='goodsSpec'><?php echo ($object["goodsSpec"]); ?></textarea>
	             </td>
	           </tr>
	           <tr>
	             <th width='120'>商品状态<font color='red'>*</font>：</th>
	             <td colspan='3'>
	             <label>
	             <input type='radio' id='isSale1' name='isSale' <?php if($object['isSale'] ==1 ): ?>checked<?php endif; ?> value='1'/>上架
	             </label>
	             <label>
	             <input type='radio' id='isSale0' name='isSale' <?php if($object['isSale'] ==0 ): ?>checked<?php endif; ?> value='0'/>下架
	             </label>
	             </td>
	           </tr>
	           <tr style="display:none;">
	             <th width='120'>商品属性：</th>
	             <td colspan='3'>
	             <label>
	             <input type='checkbox' id='isRecomm' name='isRecomm' <?php if($object['isRecomm'] ==1 ): ?>checked<?php endif; ?> value='1'/>推荐
	             </label>
	             <label>
	             <input type='checkbox' id='isBest' name='isBest' <?php if($object['isBest'] ==1 ): ?>checked<?php endif; ?> value='1'/>精品
	             </label>
	             <label>
	             <input type='checkbox' id='isNew' name='isNew' <?php if($object['isNew'] ==1 ): ?>checked<?php endif; ?> value='1'/>新品
	             </label>
	             <label>
	             <input type='checkbox' id='isHot' name='isHot' <?php if($object['isHot'] ==1 ): ?>checked<?php endif; ?> value='1'/>热销
	             </label>
	             </td>
	           </tr>

	           <!--2016 0131 2317 去掉本店分类-->
	           <tr style="display:none;">
	             <th width='120'>本店分类<font color='red'>*</font>：</th>
	             <td colspan='3'>
	             <select id='shopCatId1' onchange='javascript:getShopCatListForEdit(this.value,"<?php echo ($object['shopCatId2']); ?>")'>
	                <option value='0'>请选择</option>
	                <?php if(is_array($shopCatsList)): $i = 0; $__LIST__ = $shopCatsList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value='<?php echo ($vo['catId']); ?>' <?php if($object['shopCatId1'] == $vo['catId'] ): ?>selected<?php endif; ?>><?php echo ($vo['catName']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
	             </select>
	             <select id='shopCatId2'>
	                <option value='0'>请选择</option>
	             </select>
	             </td>
	           </tr>
	           <!--2016 0131 2317 去掉品牌-->
	           <tr style="display:none;">

	             <th width='120' align='right'>品牌：</th>
	             <td>
	             <select id='brandId' dataVal='<?php echo ($object["brandId"]); ?>'>
	                <option value='0'>请选择</option>
	             </select>
	             </td>
	           </tr>
	           <tr>
	           	<!--2016 0131 2316 商品修改为宝贝-->
	             <th width='120'>宝贝描述<font color='red'>*</font>：</th>
	             <td colspan='3'>
	             <?php if(empty($object["goodsDesc"])): ?><textarea rows="2" cols="60" id='goodsDesc' name='goodsDesc'>
						1. 使用时长：<br/>
						2. 新旧程度描述：<br/>
						3. 存在的问题：<br/>
						4. 到手时间/有效期/适用条件：<br/>
					</textarea>
				 <?php else: ?>
				 <textarea rows="2" cols="60" id='goodsDesc' name='goodsDesc'><?php echo ($object["goodsDesc"]); ?></textarea><?php endif; ?>
	             
	             </td>
	           </tr>
	           <tr>
	             <td colspan='3' style='padding-left:320px;'>
	                 <button class='wst-btn-query' type="submit">保&nbsp;存</button>
	                 <?php if($umark !='toEdit' ): ?><button class='wst-btn-query' type="button" onclick='javascript:location.href="/reselling.market/index.php/Home/Goods/<?php echo ($umark); ?>"'>返&nbsp;回</button><?php endif; ?>
	             </td>
	           </tr>
	        </table>
	        </form>
	      </div>
	     
	      <div class='wst-tab-item' style="display:none;">
	      商品类型：<select id='attrCatId' onchange='javascript:getAttrList(this.value)'>
	         <option value='0'>请选择</option>
	         <?php if(is_array($attributeCatsCatsList)): $i = 0; $__LIST__ = $attributeCatsCatsList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value='<?php echo ($vo["catId"]); ?>' <?php if($object['attrCatId'] == $vo['catId'] ): ?>selected<?php endif; ?>><?php echo ($vo["catName"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
	      </select>
	      <div>
	        <fieldset id='priceContainer' class='wst-goods-fieldset' <?php if(count($object['priceAttrs']) > 0): ?>style='display:block'<?php endif; ?>>
			    <legend>价格类型</legend>
			    <input type='hidden' class="hiddenPriceAttr" dataId='<?php echo ($object["priceAttrId"]); ?>' dataNo="<?php echo (count($object['priceAttrs'])); ?>" value='<?php echo ($object["priceAttrName"]); ?>'/>
			    <table class="wst-form wst-goods-price-table">
	             <thead><tr><th>属性</th><th>规格</th><th>价格</th><th>推荐</th><th>库存</th><th>操作</th></tr></thead>
	             <tbody id="priceConent">
	             <?php if(is_array($object['priceAttrs'])): $i = 0; $__LIST__ = $object['priceAttrs'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
		              <td style="text-align:right"><?php echo ($vo['attrName']); ?>：</td>
		              <td><input type="text" id="price_name_<?php echo ($vo['attrId']); ?>_<?php echo ($i); ?>" value="<?php echo ($vo['attrVal']); ?>"/></td>
		              <td><input type="text" id="price_price_<?php echo ($vo['attrId']); ?>_<?php echo ($i); ?>" value="<?php echo ($vo['attrPrice']); ?>" onblur="checkAttPrice(<?php echo ($vo['attrId']); ?>,<?php echo ($i); ?>);" onkeypress="return WST.isNumberdoteKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxLength="10"/></td>
		              <td><input type="radio" id="price_isRecomm_<?php echo ($vo['attrId']); ?>_<?php echo ($i); ?>" name="price_isRecomm" onclick="checkAttPrice(<?php echo ($vo['attrId']); ?>,<?php echo ($i); ?>);" <?php if($vo['isRecomm'] == 1): ?>checked<?php endif; ?>/></td>
		              <td><input type="text" id="price_stock_<?php echo ($vo['attrId']); ?>_<?php echo ($i); ?>" onblur="getTstock();" value="<?php echo ($vo['attrStock']); ?>" onblur="javascript:statGoodsStaock()" onkeypress="return WST.isNumberdoteKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxLength="10"/></td>
		              <td>
		              <?php if($i == 1): ?><a title="新增" class="add btn" href="javascript:addPriceAttr()"></a>
		              <?php else: ?>
		              <a title="删除" class="del btn" href="javascript:delPriceAttr(<?php echo ($i); ?>)"></a><?php endif; ?>
		              </td>
		           </tr><?php endforeach; endif; else: echo "" ;endif; ?>
	             </tbody>
	            </table>
			</fieldset>
			<fieldset id='attrContainer' class='wst-goods-fieldset' <?php if(count($object['attrs']) > 0): ?>style='display:block'<?php endif; ?>>
			    <legend>属性类型</legend>
			    <table class="wst-form" style='width:100%'>
	              <tbody id='attrConent'>
	              <?php if(is_array($object['attrs'])): $i = 0; $__LIST__ = $object['attrs'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
		              <td style="width:80px;text-align:right" nowrap><?php echo ($vo['attrName']); ?>：</td>
		              <td>
		              <?php if($vo['attrType']==0){ ?>
		              <input type="text" style='width:70%;' class="attrList" id="attr_name_<?php echo ($vo['attrId']); ?>_<?php echo ($i); ?>" value="<?php echo ($vo['attrVal']); ?>" dataId="<?php echo ($vo['attrId']); ?>"/>
		              <?php }else if($vo['attrType']==2){ ?>
		              <select class="attrList" id="attr_name_<?php echo ($vo['attrId']); ?>_<?php echo ($i); ?>" dataId="<?php echo ($vo['attrId']); ?>">
		              <?php if(is_array($vo['opts']['txt'])): $i = 0; $__LIST__ = $vo['opts']['txt'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$attrvo): $mod = ($i % 2 );++$i;?><option value='<?php echo ($attrvo); ?>' <?php if($attrvo == $vo['attrVal']): ?>selected<?php endif; ?> ><?php echo ($attrvo); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
		              </select>
		              <?php }else if($vo['attrType']==1){ ?>
		              <input type='hidden' class="attrList" dataId='<?php echo ($vo['attrId']); ?>' dataType="1"/>
		              <?php if(is_array($vo['opts']['txt'])): $i = 0; $__LIST__ = $vo['opts']['txt'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$attrvo): $mod = ($i % 2 );++$i;?><label><input type='checkbox' name="attrTxtChk_<?php echo ($vo['attrId']); ?>" value="<?php echo ($attrvo); ?>" <?php if($vo['opts']['val'][$attrvo] == 1): ?>checked<?php endif; ?>/><?php echo ($attrvo); ?></label>&nbsp;&nbsp;<?php endforeach; endif; else: echo "" ;endif; ?>
		              <?php } ?>
		              </td>
		             </tr><?php endforeach; endif; else: echo "" ;endif; ?>
	              </tbody>
	            </table>
			</fieldset>
			<div style='width:100%;text-align:center;'>
			<button class='wst-btn-query' type="button" onclick='javascript:$("#myform").submit()'>保&nbsp;存</button>
	        <?php if($umark !='toEdit' ): ?><button class='wst-btn-query' type="button" onclick='javascript:location.href="/reselling.market/index.php/Home/Goods/<?php echo ($umark); ?>"'>返&nbsp;回</button><?php endif; ?>
			</div>
	      </div>
	      </div>
	      
	      <!-- 相册 -->
	      <div class='wst-tab-item' style="display:none;">
	      <!-- 
	       <div><input type='text' id='galleryImgUpload'/></div>
	        -->
	       <div id='galleryImgs' class='wst-gallery-imgs'>
                  <div id="tt"></div>
                  <?php if(count($object['gallery']) == 0): ?><div id="wrapper">
                           <div id="container">
            <!--头部，相册选择和格式选择-->
                              <div id="uploader">
                               <div class="queueList">
                                   <div id="dndArea" class="placeholder">
                                      <div id="filePicker"></div>
                                      </div>
                                   <ul class="filelist"></ul>
                               </div>
                             <div class="statusBar" style="display:none">
                               <div class="progress">
                                    <span class="text">0%</span>
                                    <span class="percentage"></span>
                               </div>
                                    <div class="info"></div>
                               <div class="btns">
                                 <div id="filePicker2" class="webuploader-containe webuploader-container"></div><div class="uploadBtn state-finish">开始上传</div>
                               </div>
                            </div>
                         </div>
                      </div>
                   </div>
               <?php else: ?>
               	<div id="wrapper">
                       <div id="container">
                          <div id="uploader">
                             <div class="queueList">
                                 <div id="dndArea" class="placeholder element-invisible">
                                    <div id="filePicker" class="webuploader-container"></div>
                                    </div>
                                 <ul class="filelist">
                                 	<?php if(is_array($object['gallery'])): $i = 0; $__LIST__ = $object['gallery'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li style="border: 1px solid rgb(59, 114, 165)" order="100" onmouseover="imglimouseover(this)" onmouseout="imglimouseout(this)">
	                                 		<input type="hidden" class="gallery-img" iv="<?php echo ($vo["goodsThumbs"]); ?>" v="<?php echo ($vo["goodsImg"]); ?>" />
	                                 		<img width="152" height="152" src="/reselling.market/<?php echo ($vo["goodsThumbs"]); ?>"><span class="setdef" style="display:none">默认</span><span class="setdel" onclick="imglidel(this)" style="display:none">删除</span>
                                 		</li><?php endforeach; endif; else: echo "" ;endif; ?>
                                 </ul>
                            </div>
                            <div class="statusBar" style="">
                               <div class="progress">
                                    <span class="text"></span>
                                    <span class="percentage"></span>
                               </div>
                               <div class="info"></div>
                               <div class="btns">
                                  <div id="filePicker2" class="webuploader-containe webuploader-container"></div>
                                  <div class="uploadBtn state-finish">开始上传</div>
                               </div>
                            </div>
                        </div>
                    </div>
                 </div><?php endif; ?>
		   
	       
	       
	           
	       </div>
	       <div style='clear:both;'></div>
	      </div>
	      
       </div>
       </div>
       
       </div>
       <div style='clear:both;'></div>
       </div>

            </div>
          </div>
          <div style='clear:both;'></div>
          <br/>
          <div class='wst-footer'>
          	<div class="wst-footer-fl-box">
	<div class="wst-footer" >
		<div class="wst-footer-cld-box">
			<div class="wst-footer-fl">友情链接：</div>
			<div style="padding-left:30px;">
				<?php if(is_array($friendLikds)): $k = 0; $__LIST__ = $friendLikds;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><div style="float:left;"><a href="<?php echo ($vo["friendlinkUrl"]); ?>" target="_blank"><?php echo ($vo["friendlinkName"]); ?></a>&nbsp;&nbsp;</div><?php endforeach; endif; else: echo "" ;endif; ?>
				<div class="wst-clear"></div>
			</div>
		</div>
	</div>
</div>

<div class="wst-footer-hp-box">
	<div class="wst-footer">
		<div class="wst-footer-hp-ck1" >
			<?php if(is_array($helps)): $k1 = 0; $__LIST__ = $helps;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($k1 % 2 );++$k1;?><div class="wst-footer-wz-ca" style="display:none;">
				<div class="wst-footer-wz-pt">
				    <img src="/reselling.market/Apps/Home/View/default/images/a<?php echo ($k1); ?>.jpg" height="18" width="18"/>
					<span class="wst-footer-wz-pn"><?php echo ($vo1["catName"]); ?></span>
					<div style='margin-left:30px;'>
						<?php if(is_array($vo1['articlecats'])): $k2 = 0; $__LIST__ = $vo1['articlecats'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($k2 % 2 );++$k2;?><a href="<?php echo U('Home/Articles/index/',array('articleId'=>$vo2['articleId']));?>"><?php echo ($vo2['articleTitle']); ?></a><br/><?php endforeach; endif; else: echo "" ;endif; ?>
					</div>
				</div>
			</div><?php endforeach; endif; else: echo "" ;endif; ?>
			
			<div class="wst-footer-wz-clt" style="display:none;">
				<div style="padding-top:5px;line-height:25px;">
				    <img src="/reselling.market/Apps/Home/View/default/images/a6.jpg" height="18" width="18"/>
					<span class="wst-footer-wz-kf">联系客服</span>
					<div style='margin-left:30px;'>
						<a href="#">联系电话</a><br/>
						<?php if($CONF['phoneNo'] != ''): ?><span class="wst-footer-pno"><?php echo ($CONF['phoneNo']); ?></span><br/><?php endif; ?>
						<?php if($CONF['qqNo'] != ''): ?><a style="display:none;" href="tencent://message/?uin=<?php echo ($CONF['qqNo']); ?>&Site=QQ交谈&Menu=yes">
						<img border="0" src="http://wpa.qq.com/pa?p=1:<?php echo ($CONF['qqNo']); ?>:7" alt="QQ交谈" width="71" height="24" />
						</a><br/><?php endif; ?>
						
					</div>
				</div>
			</div>
			<div class="wst-clear"></div>
		</div>
	    
		<div class="wst-footer-hp-ck2" style="display:none;">
			<img src="/reselling.market/Apps/Home/View/default/images/alipay.jpg" height="40" width="120"/>支付宝签约商家&nbsp;|&nbsp;
			<span class="wst-footer-frd">正品保障</span><span >100%原产地</span>&nbsp;|&nbsp;
			<span class="wst-footer-frd">7天退货保障</span>购物无忧&nbsp;|&nbsp;
			<span class="wst-footer-frd">免费配送</span>满98包邮&nbsp;|&nbsp;
			<span class="wst-footer-frd">货到付款</span>400城市送货上门
		</div>
	    <div class="wst-footer-hp-ck3">
	        <div class="links"> 
	            <?php $_result=WSTNavigation(1);if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a rel="nofollow" <?php if($vo['isOpen'] == 1): ?>target="_blank"<?php endif; ?> href="<?php echo ($vo['navUrl']); ?>"><?php echo ($vo['navTitle']); ?></a>&nbsp;<?php if($vo['end'] == 0): ?>|&nbsp;<?php endif; endforeach; endif; else: echo "" ;endif; ?>
	        </div>
	        
	        <div class="copyright">
	         
	         <?php if($CONF['mallFooter']!=''){ echo htmlspecialchars_decode($CONF['mallFooter']); } ?>
	      	<?php if($CONF['visitStatistics']!=''){ echo htmlspecialchars_decode($CONF['visitStatistics'])."<br/>"; } ?>
	        <?php if($CONF['mallLicense'] ==''): ?><div>
				Copyright©2015 Powered By <a target="_blank" href="">AntFerry</a>
			</div>
			<?php else: ?>
				<div id="wst-mallLicense" data='1' style="display:none;">Copyright©2015 Powered By <a target="_blank" href="">AntFerry</a></div><?php endif; ?>
	        </div>
	    	
	        	 
	     
	    </div>
	</div>
</div>

          </div>
        </div>
    </body>
      	<script src="/reselling.market/Public/plugins/formValidator/formValidator-4.1.3.js"></script>
     	  <script src="/reselling.market/Public/js/common.js"></script>
      	<script src="/reselling.market/Apps/Home/View/default/js/shopcom.js"></script>
      	<script src="/reselling.market/Apps/Home/View/default/js/head.js"></script>
      	<script src="/reselling.market/Apps/Home/View/default/js/common.js"></script>
      	<script src="/reselling.market/Public/plugins/layer/layer.min.js"></script>
</html>