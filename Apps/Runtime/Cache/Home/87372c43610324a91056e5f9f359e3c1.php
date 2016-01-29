<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
	<head>
  		<meta charset="utf-8">
      	<meta http-equiv="X-UA-Compatible" content="IE=edge">
      	<meta name="viewport" content="width=device-width, initial-scale=1">
      	<title>店铺注册 - <?php echo ($CONF['mallTitle']); ?></title>
      	<meta name="keywords" content="<?php echo ($CONF['mallKeywords']); ?>" />
      	<meta name="description" content="<?php echo ($CONF['mallDesc']); ?>,店铺注册" />
      	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/common.css">
      	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/regist.css">
     	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/passport.css">
     	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/base.css" />
		<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/head.css" />
     	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/footer.css">
     	<style>
		.div1{ background: #E23C3D none repeat scroll 0 0;border: 1px solid red;border-radius: 2px;float: left;height: 35px;position: relative;top: 0px;width: 45px; }
		.div1:hover{background: none repeat scroll 0 0 red;border: 1px solid red;border-radius: 2px;float: left;height: 35px;position: relative;top: 0px;width: 45px;}
		.div2{font-size: 13px;line-height: 35px;text-align: center;}
		.inputstyle{cursor: pointer;font-size: 13px;height: 35px;left: 0px;opacity: 0;outline: medium none;position: absolute;top: 0px;width: 45px;}
		</style>
     	<script>
     	var filetypes = ["gif","jpg","png","jpeg"];
   		</script>	
   	</head>
   	<body>
    <style>
    .yj-select select{height:30px;font-size:14px;margin-right:5px;}
    .ATRoot{padding:0px 5px;height:22px;line-height:22px;clear:both;}
    .ATNode{margin-right:5px;;line-height:22px;width:150px;float:left;margin-top:2px;}
    label{cursor:pointer;}
    .tleft{float:left;}
    .Hide{display:none;}
    dl.areaSelect{display: inline-block; width:100%; margin-bottom: 0;}
    dl.areaSelect:hover{border:1px solid #E5CD29;}
    dl.areaSelect:hover dd{display: block;}
    dl.areaSelect dd{margin-left:20px;width:100%;}
    </style>
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
			<li class="fore1 ld"><b></b><a href="javascript:addToFavorite()"
				rel="nofollow">收藏<?php echo ($CONF['mallName']); ?></a></li><s></s>
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
			<li class="fore1" id="loginbar"><a href="<?php echo U('Home/Orders/queryByPage');?>"><span style='color:blue'><?php echo ($WST_USER['loginName']); ?></span></a> 欢迎您来到 <a href='<?php echo WSTDomain();?>'><?php echo ($CONF['mallName']); ?></a>！<s></s>&nbsp;
			<span>
				<?php if(!$WST_USER['userId']): ?><a href="<?php echo U('Home/Users/login');?>">[登录]</a>
				<a href="<?php echo U('Home/Users/regist');?>"	class="link-regist">[免费注册]</a><?php endif; ?>
				<?php if($WST_USER['userId'] > 0): ?><a href="javascript:logout();">[退出]</a><?php endif; ?>
			</span>
			</li>
			<li class="fore2 ld"><s></s>
			<?php if(session('WST_USER.userId')>0){ ?>
				<?php if(session('WST_USER.userType')==0){ ?>
				    <a href="<?php echo U('Home/Shops/toOpenShopByUser');?>" rel="nofollow">我要开店</a>
				<?php }else{ ?>
				    <?php if(session('WST_USER.loginTarget')==0){ ?>
				        <a href="<?php echo U('Home/Shops/index');?>" rel="nofollow">卖家中心</a>
				    <?php }else{ ?>
				        <a href="<?php echo U('Home/Users/index');?>" rel="nofollow">买家中心</a>
				    <?php } ?>
				<?php } ?>
			<?php }else{ ?>
			    <a href="<?php echo U('Home/Shops/toOpenShop');?>" rel="nofollow">我要开店</a>
			<?php } ?>
			</li>
		</ul>
		<span class="clr"></span>
	</div>
</div>

<div style="height:132px;">
<div id="mainsearchbox" style="text-align:center;">
	<div id="wst-search-pbox">
		<div style="float:left;width:240px;" class="wst-header-car">
		  <a href='<?php echo WSTDomain();?>'>
			<img id="wst-logo" width='240' height='132' src="<?php echo WSTDomain();?>/<?php echo ($CONF['mallLogo']); ?>"/>
		  </a>	
		</div>
		<div id="wst-search-container">
			<div id="wst-search-type-box">
				<input id="wst-search-type" type="hidden" value="<?php echo ($searchType); ?>"/>
				<div id="wst-panel-goods" class="<?php if($searchType == 1): ?>wst-panel-curr<?php else: ?>wst-panel-notcurr<?php endif; ?>">商品</div>
				<div id="wst-panel-shop" class="<?php if($searchType == 2): ?>wst-panel-curr<?php else: ?>wst-panel-notcurr<?php endif; ?>">店铺</div>
				<div class="wst-clear"></div>
			</div>
			<div id="wst-searchbox">
				<input id="keyword" class="wst-search-keyword" data="wst_key_search" onkeyup="getSearchInfo(this,event);" placeholder="<?php if($searchType == 2): ?>搜索 店铺<?php else: ?>搜索 商品<?php endif; ?>" autocomplete="off"  value="<?php echo ($keyWords); ?>">
				<div id="btnsch" class="wst-search-button">搜&nbsp;索</div>
				<div id="wst_key_search_list" style="position:absolute;top:38px;left:-1px;border:1px solid #b8b8b8;min-width:567px;display:none;background-color:#ffffff;z-index:1000;">dfdf</div>
			</div>
			<div id="wst-hotsearch-keys">
				<?php if(is_array($CONF['hotSearchs'])): $k = 0; $__LIST__ = $CONF['hotSearchs'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><a href="<?php echo U('Home/goods/getGoodsList',array('keyWords'=>$vo));?>"><?php echo ($vo); ?></a><?php if($k < count($CONF['hotSearchs'])): ?>&nbsp;&nbsp;|&nbsp;&nbsp;<?php endif; endforeach; endif; else: echo "" ;endif; ?>
			</div>
		</div>
		<div id="wst-search-des-container">
			<div class="des-box" style="display:none;">
				<div class='wst-reach'>
					<img src="/reselling.market/Apps/Home/View/default/images/sadn.jpg"  height="38" width="40"/>
					<div style="float:left;position:absolute;top:0px;left:38px;"><span style="font-weight:bolder;">闪电配送</span><br/><span style="color:#e23c3d;">最快1小时送达</span></div>
				</div>
				<div class='wst-since'>
					<img src="/reselling.market/Apps/Home/View/default/images/sqzt.jpg"  height="38" width="40"/>
					<div style="float:left;position:absolute;top:0px;left:38px;"><span style="font-weight:bolder;">社区自提</span><br/><span style="color:#e23c3d;">330家自提点</span></div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<div class="headNav">
		  <div class="navCon w1020">
		  	<div class="wst-slide-controls">
		  		<?php if(is_array($indexAds)): $k = 0; $__LIST__ = $indexAds;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($k == 1): ?><span class="curr"><?php echo ($k); ?></span>
		  		  	<?php else: ?>
		  		    	<span class=""><?php echo ($k); ?></span><?php endif; endforeach; endif; else: echo "" ;endif; ?>
			</div>
		    <div class="navCon-cate fl navCon_on" >
		      <div class="navCon-cate-title"> <a href="<?php echo U('Home/goods/getGoodsList');?>">全部商品分类</a></div>
		      
		      	<?php if($ishome == 1): ?><div class="cateMenu1" >
		      	<?php else: ?>
		      		<div class="cateMenu2" style="display:none;" ><?php endif; ?>
		        <div id="wst-nvg-cat-box" style="position:relative;">
		        	<div class="wst-nvgbk" style="diplay:none;"></div>
		        	<?php $_result=WSTGoodsCats();if(is_array($_result)): $k1 = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($k1 % 2 );++$k1; if($k1 < 7): ?><li class="wst-nvg-cat-nlt6" style="border-top: none;" >
				    	<?php else: ?>
				    	<li class="wst-nvg-cat-gt6" style="border-top: none;display:none;" ><?php endif; ?>
				    	<div>
				            <div class="cate-tag"> 
				            <div class="listModel">
				             <p > 
				            	<strong><s<?php echo ($k1); ?>></s<?php echo ($k1); ?>>&nbsp;<a style="font-weight:bold;" href="<?php echo U('Home/goods/getGoodsList',array('c1Id'=>$vo1['catId']));?>"><?php echo ($vo1["catName"]); ?></a></strong>
				             </p> 
				             </div>
				              <div class="listModel">
				                <p> 
				                <?php if(is_array($vo1['catChildren'])): $k2 = 0; $__LIST__ = $vo1['catChildren'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($k2 % 2 );++$k2;?><a href="<?php echo U('Home/goods/getGoodsList',array('c1Id'=>$vo1['catId'],'c2Id'=>$vo2['catId']));?>"><?php echo ($vo2["catName"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
				                </p>
				              </div>
				            </div>
				            <div class="list-item hide">
				              <ul class="itemleft">
				              	<?php if(is_array($vo1['catChildren'])): $k2 = 0; $__LIST__ = $vo1['catChildren'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($k2 % 2 );++$k2;?><dl>
				                  <dt><a href="<?php echo U('Home/goods/getGoodsList',array('c1Id'=>$vo1['catId'],'c2Id'=>$vo2['catId']));?>"><?php echo ($vo2["catName"]); ?></a></dt>
				                  <dd> 
				                  <?php if(is_array($vo2['catChildren'])): $k3 = 0; $__LIST__ = $vo2['catChildren'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo3): $mod = ($k3 % 2 );++$k3;?><a href="<?php echo U('Home/goods/getGoodsList',array('c1Id'=>$vo1['catId'],'c2Id'=>$vo2['catId'],'c3Id'=>$vo3['catId']));?>"><?php echo ($vo3["catName"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
				                  </dd>
				                </dl>
				                <div class="fn-clear"></div><?php endforeach; endif; else: echo "" ;endif; ?>
				              </ul>
				            </div>
				            </div>
				  		</li><?php endforeach; endif; else: echo "" ;endif; ?>
		          	
		          	<li style="display:none;"></li>
		        </div>
		      </div>
		    </div>
		    
		    <div class="navCon-menu fl">
		      <ul class="fl">
		        <?php $_result=WSTNavigation(0);if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li ><a href="<?php echo ($vo['navUrl']); ?>" <?php if($vo['isOpen'] == 1): ?>target="_blank"<?php endif; ?> <?php if($vo['active'] == 1): ?>class="curMenu"<?php endif; ?>>&nbsp;&nbsp;<?php echo ($vo['navTitle']); ?>&nbsp;&nbsp;</a></li><?php endforeach; endif; else: echo "" ;endif; ?>
		      </ul>
		    </div>

		    <!--下面两个暂时没有用处-->
		    <li id="wst-nvg-cart" style="display:none;">
		    	<div class='wst-nvg-cart-cost'>
		       		&nbsp;<span class="wst-nvg-cart-cnt">0</span>件&nbsp;|&nbsp;<span class="wst-nvg-cart-price">0.00</span>元
		       	</div>
			</li>
			<div style="display:none;" class="wst-cart-box"><div class="wst-nvg-cart-goods">购物车中暂无商品</div></div>
		  </div>
		</div>
		<script>
		$(function(){
			checkCart();
		});
		</script>
	<div class="wst-regist" id="regist">	    
	    <div class="mc" style="position:relative;">
	        <div style="font-size:30px;color:black;padding-left:355px;border-bottom:dotted 1px #ddd; ">店铺注册</div>
	    	<iframe name="upload" style="display:none"></iframe>
			<form id="uploadform_Filedata" autocomplete="off" style="position:absolute;top:453px;left:341px;z-index:10;" enctype="multipart/form-data" method="POST" target="upload" action="<?php echo U('Home/Shops/uploadPic');?>" >
				<div style="position:relative;">
				<input id="shopImg" name="shopImg" class="text wstipt" type="text" value="<?php echo ($object["shopImg"]); ?>" readonly style="margin-right:4px;float:left;margin-left:8px;width:237px;"/>
				<div class="div1">
					<div class="div2">浏览</div>
					<input type="file" class="inputstyle" id="Filedata" name="Filedata" onchange="updfile('Filedata');" >
				</div>
				<div style="clear:both;"></div>
				<div >&nbsp;图片大小:150 x 150 (px)(格式为 gif, jpg, jpeg, png)</div>
				<input type="hidden" name="dir" value="shops">
				<input type="hidden" name="width" value="150">
				<input type="hidden" name="folder" value="Filedata">
				<input type="hidden" name="sfilename" value="Filedata">
				<input type="hidden" name="fname" value="shopImg">
				<input type="hidden" id="s_Filedata" name="s_Filedata" value="">
				
				</div>
			</form>
	        <form name="myform" method="post" id="myform" autocomplete="off">
	            <div class="form">
	                <div class="item" id="select-regName">
	                    <span class="label"><b class="ftx04">*</b>登录账户：</span>	
	                    <div class="fl item-ifo">
	                        <div class="o-intelligent-regName" style="position:relative;">	                       
	                            <input id="loginName" name="loginName" class="text wstipt" tabindex="1" maxlength="30" type="text" onkeypress="return WST.isNumberCharKey(event)"/>
	                            <div id="loginNameTip" style="display: inline-block; "></div>
	                        </div>	                        
	                    </div>
	                </div>	                
	                <div id="o-password">
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>请设置密码：</span>	
	                        <div class="fl item-ifo">
	                            <input id="loginPwd" name="loginPwd" class="text wstipt" tabindex="2" style="ime-mode:disabled;" autocomplete="off" type="password"/>
	                            <label id="pwd_succeed" class="pwdblank"></label>	                           
	                        </div>
	                    </div>	
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>请确认密码：</span>	
	                        <div class="fl item-ifo">
	                            <input id="reUserPwd" name="reUserPwd" class="text wstipt" tabindex="3" autocomplete="off" type="password"/>	                            
	                            <label id="pwdRepeat_succeed" class="pwdblank"></label>	                           
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>店铺名称：</span>	
	                        <div class="fl item-ifo">
	                            <input id="shopName" name="shopName" class="text wstipt" tabindex="3" type='text'/>	                            
	                            <label id="shopName_succeed" class="pwdblank"></label>	                           
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>店主姓名：</span>	
	                        <div class="fl item-ifo">
	                            <input id="userName" name="userName" class="text wstipt" tabindex="3" type='text'/>	                            
	                            <label id="userName_succeed" class="pwdblank"></label>	                           
	                        </div>
	                    </div>	                    
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>公司名称：</span>	
	                        <div class="fl item-ifo">
	                            <input id="shopCompany" name="shopCompany" class="text wstipt" tabindex="3" autocomplete="off" style="" type="text"/>	                           
	                            <label id="shopCompany_succeed" ></label>	                           
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>店铺电话：</span>	
	                        <div class="fl item-ifo">
	                            <input id="shopTel" name="shopTel" class="text wstipt" tabindex="3" autocomplete="off" style="" type="text"/>	                           	                           
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label">QQ：</span>	
	                        <div class="fl item-ifo">
	                            <input id="qqNo" name="qqNo" class="text wstipt" tabindex="3" autocomplete="off" style="" type="text"/>	                           	                           
	                        </div>
	                    </div>
	                    <div class="item" style='height:auto;position:relative;'>
	                        <span class="label">店铺图标：</span>	
	                        <div class="fl item-ifo">
	                            <div id="preview_Filedata" style="margin-top: 70px;">
                                <img id='preview' src='' ref='' width='100' style='display:none'/>	 
                                </div>                          
	                        </div>
	                    </div>
	                   
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>所属地区：</span>	
	                        <div class="fl item-ifo yj-select">
	                            <select id='areaId1' class='wstipt' onchange='javascript:getAreas("areaId2",this.value,"","areaId2,areaId3")'>
					               <option value=''>请选择</option>
					               <?php if(is_array($areaList)): $i = 0; $__LIST__ = $areaList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value='<?php echo ($vo['areaId']); ?>' <?php if($area['parentId'] == $vo['areaId'] ): ?>selected<?php endif; ?>><?php echo ($vo['areaName']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
					             </select>
					             <select id='areaId2' class='wstipt' onchange='javascript:getAreas("areaId3",this.value,"","areaId3");'>
					               <option value=''>请选择</option>
					             </select>
					             <select id='areaId3' class='wstipt'>
					               <option value=''>请选择</option>
					             </select>
	                            <label id="shopTel_succeed" ></label>	                           
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>店铺地址：</span>	
	                        <div class="fl item-ifo">
	                            <input id="shopAddress" name="shopAddress" class="text wstipt" tabindex="3" autocomplete="off" style="" type="text"/>	                           
	                            <label id="shopAddress_succeed" ></label>	                           
	                        </div>
	                    </div>
	                    <div class="item" style='height:440px;'>
	                    <span class="label">&nbsp;</span>	
                        <div class="fl item-ifo">
                             <div id="mapContainer" style='height:400px;width:660px;'>等待地图初始化...</div>
                             <div style='color:red'>(注意：提交开店申请之后店铺地址将无法修改)</div>
				             <div style='display:none'>
				             <input type='text' id='latitude' class='wstipt' name='latitude' value=""/>
				             <input type='text' id='longitude' class='wstipt' name='longitude' value=""/>
				             <input type='text' id='mapLevel' class='wstipt' name='mapLevel' value="13"/>
				             </div>
				        </div>
				        </div>
						<div class="item">
	                        <span class="label"><b class="ftx04">*</b>行业：</span>	
	                        <div class="fl item-ifo yj-select">
	                            <select id='goodsCatId1' class='wstipt'>
					                <option value=''>请选择</option>
					                <?php if(is_array($goodsCatsList)): $i = 0; $__LIST__ = $goodsCatsList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value='<?php echo ($vo['catId']); ?>' <?php if($object['goodsCatId1'] == $vo['catId'] ): ?>selected<?php endif; ?>><?php echo ($vo['catName']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
					            </select>
	                            <label id="shopTel_succeed" ></label>	                           
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>营业状态：</span>	
	                        <div class="fl item-ifo">
	                            <label>
					             <input type="radio" id="shopAtive1" style='float:none;' class='wstipt' name="shopAtive" value="1">营业中&nbsp;&nbsp;&nbsp;&nbsp;
					            </label>
					            <label>
					             <input type="radio" id="shopAtive0" style='float:none;' class='wstipt' name="shopAtive" value="0" checked="">休息中
					            </label>	                           
	                        </div>
	                    </div>
	                    <div class="item" style='height:auto;'>
	                        <span class="label"><b class="ftx04">*</b>配送区域：</span>	
	                        <div class="fl item-ifo yj-select" style='width:670px;'>
             					 <div id='areaTree'></div>	                           
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>订单配送起步价：</span>	
	                        <div class="fl item-ifo">
	                            <input type="text" id="deliveryStartMoney" class="text wstipt" value="0.0" onkeypress="return WST.isNumberdoteKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxlength="8">            
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>包邮起步价：</span>	
	                        <div class="fl item-ifo">
	                            <input type="text" id="deliveryFreeMoney" class='text wstipt' value='0.0' onkeypress="return WST.isNumberdoteKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxlength="8">	                           
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>邮费：</span>	
	                        <div class="fl item-ifo">
	                           <input type="text" id="deliveryMoney" class='text wstipt' value='0.0' onkeypress="return WST.isNumberdoteKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxlength="8">
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>平均配送时间：</span>	
	                        <div class="fl item-ifo">
	                           <input type="text" id="deliveryCostTime" class='text wstipt' value='0' onkeypress="return WST.isNumberKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxlength="8">
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>平均消费金额：</span>	
	                        <div class="fl item-ifo">
	                           <input type="text" id="avgeCostMoney" class='text wstipt' value='0.0' onkeypress="return WST.isNumberdoteKey(event)" onkeyup="javascript:WST.isChinese(this,1)" maxlength="8">
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>能否开发票：</span>	
	                        <div class="fl item-ifo">
	                           <label>
					             <input type="radio" id="isInvoice1" style='float:none;' class='wstipt' onclick="javascript:WST.showHide(1,'#invoiceRemarkstr')" name="isInvoice" value="1">能&nbsp;&nbsp;&nbsp;&nbsp;
					             </label>
					             <label>
					             <input type="radio" id="isInvoice0" style='float:none;' class='wstipt' onclick="javascript:WST.showHide(0,'#invoiceRemarkstr')" name="isInvoice" value="0" checked>否
					             </label>
	                        </div>
	                    </div>
	                   <div id='invoiceRemarkstr' class="item" style='display:none'>
			             <span class="label"><b class="ftx04">*</b>发票说明：</span>
			             <div class="fl item-ifo">
			             <input type='text' id='invoiceRemarks' class="text wstipt" value='<?php echo ($object["invoiceRemarks"]); ?>' style='width:350px;' maxLength='100'/>
			             </div>
			            </div>    
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>转账银行：</span>	
	                        <div class="fl item-ifo yj-select">
	                           <select id='bankId' class='wstipt'>
					                <option value=''>请选择</option>
					                <?php if(is_array($bankList)): $i = 0; $__LIST__ = $bankList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value='<?php echo ($vo['bankId']); ?>'><?php echo ($vo['bankName']); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
					             </select>
	                        </div>
	                    </div> 
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>银行卡卡号：</span>	
	                        <div class="fl item-ifo">
	                           <input type="text" class='text wstipt' id="bankNo" maxlength="25" size="50">
	                        </div>
	                    </div>
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>营业时间：</span>	
	                        <div class="fl item-ifo yj-select">
	                           <select id='serviceStartTime' class='wstipt'></select>
                               <div class='tleft'>&nbsp;至&nbsp;</div> 
                               <select id='serviceEndTime' class='wstipt'></select>
	                        </div>
	                    </div>    
	                    <div class="item">
	                        <span class="label"><b class="ftx04">*</b>手机号码：</span>	
	                        <div class="fl item-ifo">
	                            <input id="userPhone" name="userPhone" class="text wstipt" tabindex="3" autocomplete="off" type="text" maxlength="11"/>	                           
	                            <label id="userPhone_succeed" ></label>	                           
	                        </div>
	                    </div>
	                    <?php if($CONF['phoneVerfy'] == 1): ?><div class="item" id="mobileCodeDiv" >
	                        <span class="label"><b class="ftx04">*</b>短信验证码：</span>	
	                        <div class="fl item-ifo">
	                            <input maxlength="6" autocomplete="off" tabindex="6" class="text text-1 wstipt" name="mobileCode" style="ime-mode:disabled" id="mobileCode" type="text"/>
	                            <label class="blank invisible"></label>
	                            <a class="btn" href="javascript:void(0);" onclick="getVerifyCode();" id="sendMobileCode">
	                                <span id="timeTips">获取短信验证码</span>
	                           	</a>
	                        </div>
	                        <span class="clr"></span>
	                    </div>		
	                 	<?php else: ?>
	                 	<div class="item" id="authcodeDiv">
	                         <span class="label"><b class="ftx04">*</b>验证码：</span>	
	                         <div class="fl item-ifo">
	                             <input id="verify" style="ime-mode:disabled" name="verify" class="text text-1 wstipt" tabindex="6" autocomplete="off" maxlength="6" type="text"/>
	                             <label class="img">
	                                 <img style='vertical-align:middle;cursor:pointer;height:39px;' class='verifyImg' src='' title='刷新验证码' onclick='javascript:getVerify()'/> 
							     </label>      	
	                             <label class="ftx23">&nbsp;看不清？<a href="javascript:getVerify()" onclick="setTimeout(verc,50);" class="flk13">换一张</a></label>
	                         </div>
	                 	</div><?php endif; ?> 
	                </div>
	                <input name="qVoCgWxtvu" value="EqaRK" type="hidden"/>	
	                <div class="item item-new">
	                    <span class="label">&nbsp;</span>	
	                    <div class="fl item-ifo">
	                        <label>
	                        <input class="checkbox" id="protocol" name="protocol" type="checkbox"/>
	                                                                        我已阅读并同意</label><a href="javascript:;" class="blue" id="protocolInfo" onclick="showXiey();">《用户注册协议》</a>                       
	                        <label id="protocol_error" class="error hide">请接受服务条款</label>
	                    </div>
	                </div>
	                <div class="item">
	                    <span class="label">&nbsp;</span>
	                    <input class="btn-img btn-regist" id="registsubmit" value="立即注册" tabindex="8"  type="submit"/>
	                </div>
	            </div>
	            <div class="phone">
	                
	            </div>
	      		<span class="clr"></span>
	        </form>
	    </div>
	</div>
	<!--footer start--> 
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

	<!--footer end-->
	<script src="/reselling.market/Public/plugins/layer/layer.min.js"></script>
   	<script src="/reselling.market/Public/plugins/formValidator/formValidator-4.1.3.js"></script>
    <script src="/reselling.market/Public/js/common.js"></script>
    <script src="/reselling.market/Apps/Home/View/default/js/common.js"></script>
    <script src="/reselling.market/Apps/Home/View/default/js/open_shop.js"></script>
    <script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=37f0869604ca86505487639427d52bf6"></script>
    <script type="text/javascript">
       $(function(){
    	   visitorShopInit();
    	   getAreas("areaId2",'<?php echo ($area["parentId"]); ?>',"<?php echo ($area['areaId']); ?>","areaId2,areaId3",function(){
    		   getCommunityForOpen();
    		   getAreas("areaId3",'<?php echo ($area["areaId"]); ?>',"","areaId3");
    	   });
    	   
       })
   </script>
   <style>
   	.layui-layer-btn a{background:#e23c3d;}
   	</style>
</body>
</html>