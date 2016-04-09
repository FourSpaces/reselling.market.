<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
	<head>
  		<meta charset="utf-8">
      	<meta http-equiv="X-UA-Compatible" content="IE=edge">
      	<meta name="viewport" content="width=device-width, initial-scale=1">
      	<title><?php echo ($goodsDetails["goodsName"]); ?> - <?php echo ($CONF['mallTitle']); ?></title>
      	<meta name="keywords" content="<?php echo ($goodsDetails['goodsKeywords']); ?>" />
      	<meta name="description" content="<?php echo ($goodsDetails['goodsName']); ?>,<?php echo ($CONF['mallDesc']); ?>" />
      	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/common.css" />
     	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/goodsdetails.css" />
     	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/base.css" />
		<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/head.css" />
		<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/pslocation.css" />
		<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/magnifier.css" />
     	<script src="/reselling.market/Public/js/jquery.min.js"></script>
     	<script src="/reselling.market/Public/js/common.js"></script>
     	<script src="/reselling.market/Public/plugins/layer/layer.min.js"></script>
     	<style type="text/css">
     		.cmt-edit {background: #f5f5f5;}
     		.cmt-edit-top {padding: 10px 10px 2px;}
     		.cmt-user {
			    float: left;
			    width: 60px;
			    height: 60px;
			}
			.cmt-user img {
			    display: block;
			    max-width: 100%;
			}
			fieldset, img {
			    border: 0;
			}
			.cmt-add {
			    float: left;
			    margin: 0 0 5px 10px;
			    width: 630px;
			    height: 50px;
			    padding: 4px;
			    border: 1px solid #ababab;
			    background: #fff;
			}
			.cmt-add textarea {
			    border: 0;
			    border-width: 0;
			    overflow: auto;
			    word-wrap: break-word;
			    width: 100%;
			    height: 40px;
			    line-height: 20px;
			    outline: 0;
			}
			.cmt-edit-btm { padding: 0 10px 10px;}
			.cmt-send-el { float: right;color: #747474;margin-right: 90px;}
			.cmt-send-el0 { float: right;color: #747474;margin-right: 50px;}
			.cmt-send-textnum {padding-right: 5px; font-size: 12px;}
			.cmt-send-btn {
			    display: inline-block;
			    width: 43px;
			    height: 24px;
			    line-height: 24px;
			    text-decoration: none;
			    color: #000;
			    font-size: 12px;
			    font-weight: 400;
			    padding: 0;
			    text-align: center;
			    border: 1px solid #ababab;
			    background: #ccc;
			    background: -webkit-gradient(linear,left top,left bottom,from(#fff),to(#e5e5e5));
			}

			/***/
			.cmt-item {
    position: relative;
    border-top: 1px dashed #d5d5d5;
    padding: 10px 0;
}
			.cmt-reply-user {
    display: block;
    float: left;
    width: 30px;
    height: 30px;
}			
			.cmt-reply-user img {
    display: block;
    max-width: 100%;
}
	.cmt-cont-wrap {
    position: relative;
    padding-left: 50px;
}
	.cmt-cont {
    margin: -2px 0 0;
    color: #666;
    word-break: break-all;
    word-wrap: break-word;
}
	.cmt-user-name {
    margin-right: 5px;
}
	.cmt-date {
    color: #acacac;
}
	.cmt-reply-btn {
    position: absolute;
    right: 35px;
    bottom: 0;
    color: #369103;
    cursor: pointer;
}	
	.cmt-item .cmt-edit {
    display: none;
}
     	</style>
   	</head>
   	<body>
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
				<div style="display:none;" id="wst-panel-goods" class="<?php if($searchType == 1): ?>wst-panel-curr<?php else: ?>wst-panel-notcurr<?php endif; ?>">商品</div>
				<div style="display:none;" id="wst-panel-shop" class="<?php if($searchType == 2): ?>wst-panel-curr<?php else: ?>wst-panel-notcurr<?php endif; ?>">店铺</div>
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
		<input id="shopId" type="hidden" value="<?php echo ($goodsDetails['shopId']); ?>"/>
		<input id="goodsId" type="hidden" value="<?php echo ($goodsDetails['goodsId']); ?>"/>
		<!----加载商品楼层start----->
		<div class="wst-container">
			<div class="wst-nvg-title">
				<a href="<?php echo U('Home/Goods/getGoodsList/',array('c1Id'=>$goodsNav[0]['catId']));?>"><?php echo ($goodsNav[0]["catName"]); ?></a>&nbsp;>&nbsp;
				<a href="<?php echo U('Home/Goods/getGoodsList/',array('c1Id'=>$goodsNav[0]['catId'],'c2Id'=>$goodsNav[1]['catId']));?>"><?php echo ($goodsNav[1]["catName"]); ?></a>&nbsp;>&nbsp;
				<a href="<?php echo U('Home/Goods/getGoodsList/',array('c1Id'=>$goodsNav[0]['catId'],'c2Id'=>$goodsNav[1]['catId'],'c3Id'=>$goodsNav[2]['catId']));?>"><?php echo ($goodsNav[2]["catName"]); ?></a>
			</div>
			<div class="wst-goods-details">
				<div class="details-left">
					<div class="goods-img-box">
						 <!--产品参数开始-->
						  <div>
						    <div id="preview" class="spec-preview"> 
							    <span class="jqzoom">
							    	<img jqimg="/reselling.market/<?php echo ($goodsDetails['goodsImg']); ?>" src="/reselling.market/<?php echo ($goodsDetails['goodsImg']); ?>" height="350" width="350"/>
							    </span> 
						    </div>
						    <!--缩图开始-->
						    <div class="spec-scroll"> <a class="prev">&lt;</a> <a class="next">&gt;</a>
						      <div class="items">
						        <ul>
						        	<li><img alt="" bimg="/reselling.market/<?php echo ($goodsDetails['goodsImg']); ?>" src="/reselling.market/<?php echo ($goodsDetails['goodsImg']); ?>" onmousemove="preview(this);"></li>
						        	<?php if(is_array($goodsImgs)): $k = 0; $__LIST__ = $goodsImgs;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><li><img alt="" bimg="/reselling.market/<?php echo ($vo['goodsImg']); ?>" src="/reselling.market/<?php echo ($vo['goodsImg']); ?>" onmousemove="preview(this);"></li><?php endforeach; endif; else: echo "" ;endif; ?>
						        </ul>
						      </div>
						    </div>
						    <!--缩图结束-->
						  </div>
						  <!--产品参数结束-->
						  <div class='wst-short-tool'>
						       <div style='float:left;'>商品编号：<?php echo ($goodsDetails["goodsSn"]); ?></div>
						       <div style='float:right;'>
						         <a href='javascript:favoriteGoods(<?php echo ($goodsDetails['goodsId']); ?>)'>
						         <b></b>
						         <span id='f0_txt' f='<?php echo ($favoriteGoodsId); ?>'>
						         <?php if($favoriteGoodsId > 0): ?>已关注<?php else: ?>关注商品<?php endif; ?>
						         </span>
						         </a>
						       </div>
						  </div>
					</div>
					<div class="goods-des-box">
						<table class="goods-des-tab">
							<tbody>
								<tr>
									<td colspan="2">
										<div class="des-title" style="word-break:break-all;">
											<?php echo ($goodsDetails["goodsName"]); ?>
											</div>
										<div class='wst-goods-spec'><?php echo (htmlspecialchars_decode($goodsDetails["goodsSpec"])); ?></div>
									</td>
								</tr>
								
								<tr>
									<td width="70" ><div class="underline-chux" style="height:20px;">
										<span class="">转让价格：</span></div></td>
									
									
									<td><div class="underline-chux" style="height:20px;">
										<span style="font-weight: 600;color: #fb4f1c; font-size:22px;" id='shopGoodsPrice_<?php echo ($goodsDetails["goodsId"]); ?>' dataId='<?php echo ($goodsDetails["goodsAttrId"]); ?>'><span style="color:#999999;">￥</span><?php echo ($goodsDetails["shopPrice"]); ?></span>
										<span style="color:#999999;font-weight: 600; font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											 <sup>原价：￥<del><?php echo ($goodsDetails["marketPrice"]); ?></del></sup>
										</span>
										</div>
									</td>
									
								</tr>
								

								<tr>
									<td width="70"><span class="des-title-span">成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：</span></td>
									
									<?php if($goodsDetails["oldAndNew"] == 1 ): ?><td>全新</td>
										<?php else: ?>
										<td>非全新</td><?php endif; ?>
									
								</tr>
								<tr>
									<td width="70"><span class="des-title-span">讲&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</span></td>
									
									<?php if($goodsDetails["bargain"] == 1 ): ?><td><span style="color: #c1e358;font-size: 14px;"><b>允许</b></span></td>
										<?php else: ?>
										<td><span style="color: #fc0;font-size: 14px;"><b>拒绝</b></span></td><?php endif; ?>
									
								</tr>
								<tr style="">
									<td width="70"><span class="des-title-span">所&nbsp;&nbsp;在&nbsp;地：</span></td>
									<td><?php echo ($userData['areaName']); ?></td>
								</tr>
								<tr>
									<!--这里对联系方式 进行遮掩，非会员 无法看到-->
									<td width="70"><span class="des-title-span">联系方式：</span></td>
									<td><div id="lianxi_title" style="background: url('/reselling.market/Apps/Home/View/default/images/lxfsbj.png') no-repeat;background-size:100% 100%;-moz-background-size:100% 100%;-webkit-background-size:100% 100%;width:90px;height:28px;">
										<a href="javascript:showdizhi()" class="btn2Cart">
										<img src="/reselling.market/Apps/Home/View/default/images/lianxifanshi.png" style="width:90px;height:26px;" /></a>
										</div>
										<div id="sellerDiv" style="font-size:13px;width:180px;height:54px;display:none; background-color: rgb(220, 250, 125);">
											<?php if(($userLogin) == "true"): ?><div style="padding: 10px;">
													<b>联系人</b>：<?php echo ($goodsDetails["sellerName"]); ?><br/>
													<b>手机号</b>：<?php echo ($goodsDetails["phone"]); ?> <br/> 
												</div>
											<?php else: ?>
												<div style="padding: 10px;">
													<b>请登录后查看</b>
												</div><?php endif; ?>
											
										</div>
										</td>
								</tr>
								<tr>
									<td width="70"><span class="des-title-span">交易方式：</span></td>
									<td>线下交易</td>
								</tr>
								

								<!--删除 下面的配送至 -->
								<tr style="display:none;">
									<td width="70"><span class="des-title-span">配送至：</span></td>
									<td>
										<li id="summary-stock">
											<div class="dd">
												<div id="store-selector">
													<div class="text">
														<div></div>
														<b></b>
													</div>
												</div><!--store-selector end-->
												<div id="store-prompt">
													<strong></strong>
												</div>
												<!--store-prompt end -->
											</div>
										</li>
										<div class="wst-clear"></div>
									</td>
								</tr>

								<!--删除 下面的运费 -->
								<tr style="display:none;">
									<td width="70"><span class="des-title-span">运费：</span></td>
									<td><?php echo ($goodsDetails["deliveryStartMoney"]); ?>元起，配送费<?php echo ($goodsDetails["deliveryMoney"]); ?>元，<?php echo ($goodsDetails["deliveryFreeMoney"]); ?>元起免配送费</td>
								</tr>
								<!--删除 下面的服务 -->
								<tr style="display:none;">
									<td width="70"><span class="des-title-span">服务：</span></td>
									<td>由
									<?php if($goodsDetails['deliveryType'] == 1): echo ($CONF['mallName']); ?>
									<?php else: ?>
										<a href="<?php echo U('Home/Shops/toShopHome/',array('shopId'=>$goodsDetails['shopId']));?>"><?php echo ($goodsDetails['shopName']); ?></a><?php endif; ?>
									配送，并提供售后服务</td>
								</tr>
								<?php if( count($goodsAttrs['priceAttrs']) > 0): ?><tr style='height:15px;border-top:1px dashed #ddd;'>
								   <td colspan='2'></td>
								</tr>
								<tr>
									<td width="70"><span class="des-title-span"><?php echo ($goodsAttrs["priceAttrName"]); ?>：</span></td>
									<td>
									 <?php if(is_array($goodsAttrs['priceAttrs'])): $i = 0; $__LIST__ = $goodsAttrs['priceAttrs'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$avo): $mod = ($i % 2 );++$i;?><span class='wst-goods-attrs <?php if( $goodsDetails['goodsAttrId'] == $avo['id']): ?>wst-goods-attrs-on<?php endif; ?>' dataId='<?php echo ($avo["id"]); ?>' onclick='javascript:checkStock(this)'><?php echo ($avo['attrVal']); ?></span><?php endforeach; endif; else: echo "" ;endif; ?>
									</td>
								</tr><?php endif; ?>
								<tr>
								    <td></td>
								    <td></td>
								</tr>

								<!--删除 下面的购买数量 -->
								<?php if($goodsDetails['shopServiceStatus'] == 1): ?><tr style="display:none;">
									<td width="70"><span style="display:inline-block;width:70px;">购买数量：</span></td>
									<td>
										<div id="haveGoodsToBuy" <?php if($goodsDetails['goodsStock'] <= 0): ?>style="display:none;"<?php endif; ?>>
											<div class="goods-buy-cnt">
												<div class="buy-cnt-plus" onclick="changebuynum(1)"></div>
												<input id="buy-num" type="text" class="buy-cnt-txt" value="1" maxVal="<?php echo ($goodsDetails['goodsStock']); ?>" maxlength="3" onkeypress="return WST.isNumberKey(event);" onkeyup="changebuynum(0);" autocomplete="off"/>
												<div class="buy-cnt-add" onclick="changebuynum(2)"></div>
											</div>
											<div class='wst-goods-stock'>库存：<span id='goodsStock'><?php echo ($goodsDetails['goodsStock']); ?></span><?php echo ($goodsDetails['goodsUnit']); ?></div>
										</div>
										<div id="noGoodsToBuy" <?php if($goodsDetails['goodsStock'] > 0): ?>style="display:none;"<?php endif; ?>>
											<div style="font-weight: bold;">所选地区该商品暂时无货，非常抱歉！</div>
											<div style="clear: both;"></div>
											<br />
											<div>
												<a id="InitCartUrl" class="btn-append " href="javascript:void(0);" title="">
													<span>
														<img src="/reselling.market/Apps/Home/View/default/images/hcat.jpg" />
													</span>
												</a>
											</div>
										</div>
									</td>
								</tr>
								<?php else: ?>
								<tr>
									<td colspan="2">
										<div class="wst-gdetail-wait">休息中,暂停营业</div>
									</td>
								</tr><?php endif; ?>
								<!-- 去掉 -->
								<tr style="display:none;">
									<td style="position: relative;">
									<div id='qrBox' style='position:absolute ;top:-50px;left:450px;padding:2px;'>
										<div id='qrcode' style='width:132px;height:132px;border:1px solid #ddd;margin-bottom:2px;'></div>
										<div>下载移动客户端扫一扫</div>
									</div>
									</td>
									<td></td>
								</tr>

								<?php if($goodsDetails['goodsStock'] > 0): ?><tr>
									<td width="70"></td>
									<td>
										<?php if($comefrom == 1): ?><img src="/reselling.market/Apps/Home/View/default/images/hcat.jpg" />
										<?php else: ?>
											<?php if($goodsDetails['shopServiceStatus'] ==1){ ?>
												<!-- 删除 加入购物车-->
												<a style="display:none;" href="javascript:addCart(<?php echo ($goodsDetails['goodsId']); ?>,0,'<?php echo ($goodsDetails['goodsThums']); ?>')" class="btnCart"><img src="/reselling.market/Apps/Home/View/default/images/btn_buy_01_hover.png" width="112" height="38"/></a>
												&nbsp;&nbsp;
												<a style="display:none;" href="javascript:addCart(<?php echo ($goodsDetails['goodsId']); ?>,1)" class="btn2Cart">
													<img src="/reselling.market/Apps/Home/View/default/images/btn_buy_02.png" width="112" height="38"/>
												</a>
											<?php }else if($goodsDetails['shopServiceStatus'] ==0){ ?>
											
												<img src="/reselling.market/Apps/Home/View/default/images/hcat.jpg" />
											<?php } endif; ?>
									</td>
								</tr><?php endif; ?>
							</tbody>
						</table>
						
					</div>
				</div>

				<!--暂时去掉商家信息-->
				<div style="display:none;" class="details-right">
					<table class="details-tab">
						<tbody>
							<tr>
								<td class="title">店铺名称：</td>
								<td><?php echo ($goodsDetails["shopName"]); ?></td>
							</tr>
							<tr>
								<td class="title">营业时间：</td>
								<td><?php echo ($goodsDetails['serviceStartTime']); ?>-<?php echo ($goodsDetails['serviceEndTime']); ?></td>
							</tr>
							<tr>
								<td class="title">配送说明：</td>
								<td><?php echo ($goodsDetails["deliveryStartMoney"]); ?>元起，配送费<?php echo ($goodsDetails["deliveryMoney"]); ?>元<br/><?php echo ($goodsDetails["deliveryFreeMoney"]); ?>元起免配送费<br/><br/></td>
							</tr>
							<tr>
								<td class="title">店铺地址：</td>
								<td><?php echo ($goodsDetails['shopAddress']); ?></td>
							</tr>
							<tr>
								<td class="title">店铺电话：</td>
								<td><?php echo ($goodsDetails['shopTel']); ?></td>
							</tr>
							<?php if($goodsDetails['qqNo'] != ''): ?><tr>
								<td class="title">&nbsp;QQ咨询：</td>
								<td>
									<a href="tencent://message/?uin=<?php echo ($goodsDetails['qqNo']); ?>&Site=QQ交谈&Menu=yes">
									<img border="0" src="http://wpa.qq.com/pa?p=1:<?php echo ($goodsDetails['qqNo']); ?>:7" alt="QQ交谈" width="71" height="24" />
									</a><br/>
								</td>
							</tr><?php endif; ?>
							<tr>
								<td ></td>
								<td></td>
							</tr>
							<tr>
								<td colspan="2" class="wst-shop-eval">
									<div class="shop-eval-box" style="width:220px;margin:0 auto;">
										    <li>商品<br/><?php echo ($shopScores["goodsScore"]); ?></li>
											<li class="li-center">时效<br/><?php echo ($shopScores["timeScore"]); ?></li>
											<li>服务<br/><?php echo ($shopScores["serviceScore"]); ?></li>
										<div class="wst-clear"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td ></td>
								<td></td>
							</tr>
							<tr>
								<td colspan="2" class="wst-shop-eval">
									<div class="shop-eval-box" style="width:214px;margin:0 auto;">
										<a class='wst-shop-btn' href="<?php echo U('Home/Shops/toShopHome/',array('shopId'=>$goodsDetails['shopId']));?>">
										进入店铺
										</a>
										<a class='wst-shop-btn' href="javascript:favoriteShops(<?php echo ($goodsDetails['shopId']); ?>)">
										<span id='f1_txt' f='<?php echo ($favoriteShopId); ?>'><?php if($favoriteShopId > 0): ?>已关注<?php else: ?>关注店铺<?php endif; ?></span>
										</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="wst-clear"></div>
			</div>
			
			<div class="wst-goods-pdetails">
				<div class="wst-goods-pdetails-left">
					<!--
					<?php echo W('Goods/getHotGoods',array('shopId'=>$goodsDetails['shopId']));?>
					-->
					<?php echo W('Goods/getViewGoods');?>
				</div>
				<div id="wst-goods-pdetails-right" class="wst-goods-pdetails-right">
					<div class="goods-nvg">
						<ul class="tab">
							<li onclick="tabs('#wst-goods-pdetails-right',0)" class="curr">宝贝介绍</li>
							<?php if( count($goodsAttrs['attrs']) > 0): ?><li onclick="tabs('#wst-goods-pdetails-right',1)">商品属性</li>
							<li onclick="tabs('#wst-goods-pdetails-right',2)">留言</li>
							<?php else: ?>
							<li onclick="tabs('#wst-goods-pdetails-right',1)">留言</li><?php endif; ?>
						</ul>
						<div class="wst-clear"></div>
					</div>
					<div class="tabcon">
						<div id="wst_goods_desc" style="font-weight:bolder;height:auto;line-height:30px;padding-left:8px;">
						<?php echo ($goodsDetails["goodsDesc"]); ?>
						</div>
					</div>
					<?php if( count($goodsAttrs['attrs']) > 0): ?><div class="tabcon" style="display:none;">
						<table class='wst-attrs-list'>
						  <?php if(is_array($goodsAttrs['attrs'])): $i = 0; $__LIST__ = $goodsAttrs['attrs'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['attrContent'] !='' ): ?><tr>
						    <th nowrap><?php echo ($vo['attrName']); ?>：</th>
						    <td><?php echo ($vo['attrContent']); ?></td>
						  </tr><?php endif; endforeach; endif; else: echo "" ;endif; ?>
						</table>
					</div><?php endif; ?>
					<div class="tabcon"  style="display:none;">
				        <div class="cmt-edit-wrap">
						    <div class="cmt-edit" >
						        <div class="cmt-edit-top clearfix">
						            <div class="cmt-user">
						                <img src="/reselling.market/Apps/Home/View/default/images/2674228161.jpg" alt="">
						            </div>
						            <div class="cmt-add">
						                <textarea id="content" placeholder="我也插句话..."></textarea>

						            </div>

						        </div>
						        <div class="cmt-edit-btm clearfix">
						            <span class="cmt-send-el">
						                <em id="contenttextnum" class="cmt-send-textnum">0/140</em>
						                <button id="comment"  class="cmt-send-btn">评论</button>
						            </span>
						        </div>
						    </div>
						</div>					
						<table id="appraiseTab" width="90%">
							<tr>
								<td>

		                   
		                        </td>
		                	</tr>
							<tr>
								<td>
		                      	 	<div style="margin-top: 10px;" id="allgoodsppraises">
		                           		 请稍等...
		                        	</div>
		                        </td>
		                	</tr>
	                   	</table>  
	                   	<div id="wst-page-items" style="text-align:center;margin-top:5px;"></div>                  
					</div>
					<div class="wst-clear"></div>
				</div>
				<div class="wst-clear"></div>
			</div>
			<div class="wst-clear"></div>
		</div>
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

		<link rel="stylesheet" type="text/css" href="/reselling.market/Apps/Home/View/default/css/cart.css" />
<script src="/reselling.market/Apps/Home/View/default/js/userlogin.js"></script>
<script type="text/javascript" src="/reselling.market/Apps/Home/View/default/js/cart/common.js?v=725"></script>
<script type="text/javascript" src="/reselling.market/Apps/Home/View/default/js/cart/quick_links.js"></script>
<!--[if lte IE 8]>
<script src="/reselling.market/Apps/Home/View/default/js/cart/ieBetter.js"></script>
<![endif]-->
<script src="/reselling.market/Apps/Home/View/default/js/cart/parabola.js"></script>
<!--右侧贴边导航quick_links.js控制-->
	<div id="flyItem" class="fly_item" style="display:none;">
		<p class="fly_imgbox">
		<img src="/reselling.market/Apps/Home/View/default/images/item-pic.jpg"
			width="30" height="30">
		</p>
	</div>
	<div class="mui-mbar-tabs">
		<div class="quick_link_mian">
			<div class="quick_links_panel">
				<div id="quick_links" class="quick_links" style="display:none;">
					<li><a href="#" class="my_qlinks" style="margin-top: 5px;"><i class="setting"></i></a>
						<div class="ibar_login_box status_login">
							<?php if($WST_USER['userId'] > 0): ?><div class="avatar_box">
								<p class="avatar_imgbox">
									<img
										src="/reselling.market/Apps/Home/View/default/images/no-img_mid_.jpg" />
								</p>
								<?php if($WST_USER['userId'] > 0): ?><ul class="user_info">
									<li>用户名：<?php echo ($WST_USER['loginName']); ?></li>
									<li>级&nbsp;别：普通会员</li>
								</ul><?php endif; ?>
							</div>
							
							<div class="ibar_recharge-btn">
								<input type="button" value="我的订单" onclick="getMyOrders();"/>
							</div>
							<i class="icon_arrow_white"></i>
						</div> <?php else: ?>
							<div style="margin: 0 auto;padding: 15px 0; width: 220px;">
							<div class="ibar_recharge-field">
								<label>帐号</label>
								<div class="ibar_recharge-fl">
									<div class="ibar_recharge-iwrapper">
										<input id="loginName" name="loginName" value="<?php echo ($loginName); ?>" type="text" name="19" placeholder="用户名/手机号/邮箱" />
									</div>
									<i class="ibar_username-contact"></i>
								</div>
							</div>
							<div class="ibar_recharge-field">
								<label>密码</label>
								<div class="ibar_recharge-fl">
									<div class="ibar_recharge-iwrapper">
										<input id="loginPwd" name="loginPwd" type="password" name="19" placeholder="密码" />
									</div>
									<i class="ibar_password-contact"></i>
								</div>
							</div>
							<div class="ibar_recharge-field">
								<label>验证码</label>
								<div class="ibar_recharge-fl" style="width:80px;">
									<div class="ibar_recharge-iwrapper">
										<input id="verify" style="ime-mode:disabled;width:80px;" name="verify" class="text text-1" tabindex="6" autocomplete="off" maxlength="6" type="text" placeholder="验证码"/>
									</div>
								</div>
								<label class="img" onclick="javascript:getVerify()">
				                	<img style='vertical-align:middle;cursor:pointer;height:30px;width:93px;' class='verifyImg' src='/reselling.market/Apps/Home/View/default/images/clickForVerify.png' title='刷新验证码' onclick='javascript:getVerify()'/> 
								</label>
							</div>
							<div class="ibar_recharge-btn">
								<input type="button" value="登录" onclick="checkLoginInfo();"/>
							</div>
							</div><?php endif; ?></li>
					<li style="display:none;" id="shopCart"><a href="#" class="message_list"><i class="message"></i>
					<div style="display:none;" class="span">购物车</div> <span class="cart_num">0</span></a></li>
					<?php if($CONF['qqNo'] != ''): ?><li style="display:none;">
						<a href="tencent://message/?uin=<?php echo ($CONF['qqNo']); ?>&Site=QQ交谈&Menu=yes" style="padding-top:5px;padding-bottom:5px;margin-bottom: 5px;">
						<img src="/reselling.market/Apps/Home/View/default/images/qq.jpg"  height="38" width="40" />
						</a>
					</li><?php endif; ?>
					
				</div>
				<div class="quick_toggle">
					
					<li><a href="#none"><i class="mpbtn_qrcode"></i></a>
						<div class="mp_qrcode" style="display: none;">
							<img
								src="/reselling.market/Apps/Home/View/default/images/wstmall_weixin.png"
								width="148"  /><i class="icon_arrow_white"></i>
						</div>
					</li>
					
					<li><a href="#top" class="return_top"><i class="top"></i></a></li>
				</div>
			</div>
			<div id="quick_links_pop" class="quick_links_pop hide"></div>
		</div>
	</div>
	<script type="text/javascript">
	var numberItem = <?php echo WSTCartNum();?>;
	$('.cart_num').html(numberItem);
	$(".quick_links_panel li").mouseenter(function() {
		getVerify();
		$(this).children(".mp_tooltip").animate({
			left : -92,
			queue : true
		});
		$(this).children(".mp_tooltip").css("visibility", "visible");
		$(this).children(".ibar_login_box").css("display", "block");
	});
	$(".quick_links_panel li").mouseleave(function() {
		$(this).children(".mp_tooltip").css("visibility", "hidden");
		$(this).children(".mp_tooltip").animate({
			left : -121,
			queue : true
		});
		$(this).children(".ibar_login_box").css("display", "none");
	});
	$(".quick_toggle li").mouseover(function() {
		$(this).children(".mp_qrcode").show();
	});
	$(".quick_toggle li").mouseleave(function() {
		$(this).children(".mp_qrcode").hide();
	});

	// 元素以及其他一些变量
	var eleFlyElement = document.querySelector("#flyItem"), eleShopCart = document
			.querySelector("#shopCart");
	eleFlyElement.style.visibility = "hidden";
	
	var numberItem = 0;
	// 抛物线运动
	var myParabola = funParabola(eleFlyElement, eleShopCart, {
		speed : 100, //抛物线速度
		curvature : 0.0012, //控制抛物线弧度
		complete : function() {
			eleFlyElement.style.visibility = "hidden";
			jQuery.post(domainURL +"/index.php/Home/Cart/getCartGoodCnt/" ,{"axm":1},function(data) {
				var cart = WST.toJson(data);
				eleShopCart.querySelector("span").innerHTML = cart.goodscnt;
			});
			
		}
	});
	// 绑定点击事件
	if (eleFlyElement && eleShopCart) {
		[].slice
				.call(document.getElementsByClassName("btnCart"))
				.forEach(
						function(button) {
							button
									.addEventListener(
											"click",
											function(event) {
												// 滚动大小
												var scrollLeft = document.documentElement.scrollLeft
														|| document.body.scrollLeft
														|| 0, scrollTop = document.documentElement.scrollTop
														|| document.body.scrollTop
														|| 0;
												eleFlyElement.style.left = event.clientX
														+ scrollLeft + "px";
												eleFlyElement.style.top = event.clientY
														+ scrollTop + "px";
												eleFlyElement.style.visibility = "visible";
												$(eleFlyElement).show();
												// 需要重定位
												myParabola.position().move();
											});
						});
	}

	function getMyOrders(){
		document.location.href = "<?php echo U('Home/Orders/queryByPage/');?>";
	}
</script>
   	</body>
   	
<script src="/reselling.market/Apps/Home/View/default/js/goods.js"></script>
<script src="/reselling.market/Public/js/common.js"></script>
<script src="/reselling.market/Apps/Home/View/default/js/head.js" type="text/javascript"></script>
<script src="/reselling.market/Apps/Home/View/default/js/common.js" type="text/javascript"></script>
<script src="/reselling.market/Apps/Home/View/default/js/pslocation.js" type="text/javascript"></script>
<script src="/reselling.market/Apps/Home/View/default/js/jquery.jqzoom.js" type="text/javascript"></script>

<script src="/reselling.market/Apps/Home/View/default/js/magnifier.js" type="text/javascript"></script>
<!--
<script src="/reselling.market/Public/js/qrcode.js"></script>
-->
<script> 
$("#store-selector").hover(function() {
}, function(){
	$("#store-selector").removeClass("hover");
});

var RespondTab = false;

$(function(){

	getGoodsappraise(<?php echo ($goodsDetails["goodsId"]); ?>,0);
	$("#wst_goods_desc img").each(function(){
		if($(this).width()>940){
			$(this).width(940);
		}
	});

	//输入文字 内容改变事件
	$('#content').on('input propertychange', function() {
	    $('#contenttextnum').html($(this).val().length + '/140');
	    //$(this).children(".cmt-send-textnum").html($(this).val().length + '/140');
	});

	//输入文字 内容改变事件
	$(document).on('input propertychange','#rcontent', function() {
		var id = document.querySelector('#rcontent').dataset.ids;
	    $('#rtextnum'+id).html($(this).val().length + '/140');
	});
});




//
$('#comment').bind("click", function() {
	//获得内容
	var content = $('#content').val();
	
	//验证内容
	if($('#content').val().length<141 && content!='' && content!=undefined && content!=null ){
		var params = {};
		params.toUserId = <?php echo ($goodsDetails["userId"]); ?>;
		params.goodsId = <?php echo ($goodsDetails["goodsId"]); ?>;
		params.content = content;
		params.parentId = 0;
		//alert(JSON.stringify(params));
		addLetter(params);
	}
	else {
		 WST.msg('留言字数 违反限制！请检查', {icon: 5,time:2500});
	}
  
});

function RemoveRespond(pointer){
	$("#"+pointer).html('');
	RespondTab = false;
}

function addRespond(element,userName,parentId,goodsId){
	//alert(element.dataset.pointer);
	if(!RespondTab){
			var html = new Array();
		//html.push('<div class="">');
			html.push('<div class="cmt-edit-top clearfix">');
				html.push('<div class="cmt-user">  <img src="/reselling.market/Apps/Home/View/default/images/2674228161.jpg" alt=""> </div>');
				html.push('<div class="cmt-add" style="width:530px;">  <textarea id="rcontent" class="rcontents" placeholder="回复'+userName+'" data-ids="'+parentId+'" ></textarea> </div>');
				html.push('<a title="关闭" href="javascript:RemoveRespond(\''+element.dataset.pointer+'\')" style="background-image: url(/reselling.market/Apps/Home/View/default/images/close_bottons.png); background-size: 100%;width: 25px; height: 25px; display: block; float: right;margin-right: 20px;"></a>');
			html.push('</div>');
			html.push('<div class="cmt-edit-btm clearfix"> <span class="cmt-send-el0"> <em id="rtextnum'+parentId+'"   class="cmt-send-textnum">0/140</em> <button  class="cmt-send-btn" onclick="Respond('+parentId+','+goodsId+')">评论</button> </span> </div>');
		//html.push('</div>');

		$("#"+element.dataset.pointer).html(html);
		RespondTab = true;
	}else{
		WST.msg('请先完成已打开的回复!', {icon: 5});
	}



}

function Respond(parentId,goodsId) {
    //alert($("#rcontent").val());
		//获得内容
	var content = $('#rcontent').val();
	
	//验证内容
	if($('#rcontent').val().length<141 && content!='' && content!=undefined && content!=null ){
		var params = {};
		params.toUserId = <?php echo ($goodsDetails["userId"]); ?>;
		params.goodsId = <?php echo ($goodsDetails["goodsId"]); ?>;
		params.content = content;
		params.parentId = parentId;

		addLetter(params);
	}
	else {
		 WST.msg('留言字数 违反限制！请检查', {icon: 5,time:2500});
	}


}

function addLetter(params){
		jQuery.post(Think.U("Home/GoodsAppraises/addGoodsAppraises") ,params,function(data){
			var json = WST.toJson(data);
			if(json.status=='1'){
				WST.msg('操作成功!', {icon: 1},function(){
					getGoodsappraise(<?php echo ($goodsDetails["goodsId"]); ?>,0);
				});
				$('#content').val('');
				//alert(JSON.stringify(data));
			} else if (json.status=='-888'){
				WST.msg('请先登录后，再留言!', {icon: 5});
				//alert(JSON.stringify(data));
			} else {
				WST.msg('操作失败!', {icon: 5});
				//alert(JSON.stringify(data));
			}
		});
}
function getGoodsappraise(goodsId,p){
	var params = {}; 
	params.goodsId = goodsId;
	params.p = p;
	//加载商品评价
	jQuery.post(Think.U("Home/GoodsAppraises/getGoodsappraises") ,params,function(data) {
		var json = WST.toJson(data);
		if(json.root && json.root.length){
			var html = new Array();		    	
			for(var j=0;j<json.root.length;j++){
			    var appraises = json.root[j];	
			   	
			    	html.push('<div class="cmt-item clearfix" data-touserid="'+appraises.toUserId+'" data-nick="'+appraises.toUserName+'" data-userid="'+appraises.userId+'">');
			    	html.push('<a href="javascript:;" target="_blank" class="cmt-reply-user"> <img src="/reselling.market/Apps/Home/View/default/images/2674228161.jpg" alt=""> </a>');
			    	html.push('<div class="cmt-cont-wrap">');	
			    	if(appraises.parentId==0){
			    		html.push('<p class="cmt-cont"> <span class="cmt-user-name">'+appraises.userName+'</span> <span class="cmt-cont-text">'+appraises.content+'</span> </p>');
			    	} else{
			    		html.push('<p class="cmt-cont"> <span class="cmt-user-name">'+appraises.userName+'</span>回复<span class="cmt-user-name">'+appraises.toUserName+' : </span><span class="cmt-cont-text">'+appraises.content+'</span> </p>');
			    	}
			    	
			    	html.push('<p class="cmt-date">'+appraises.createTime+'</p>');
			    	html.push('<span class="cmt-reply-btn respond" data-pointer="respond_'+appraises.id+'" onclick="addRespond(this,\''+appraises.userName+'\','+appraises.id+','+goodsId+')">回复</span>');
			    	html.push('</div></div>');
			    	html.push('<div id="respond_'+appraises.id+'" class="cmt-edit" style="padding-left: 50px;" ></div>')
			}
			$("#appraiseTab").html(html.join(""));
			if(json.totalPage>1){
				laypage({
				    cont: 'wst-page-items',
				    pages: json.totalPage,
				    curr: json.currPage,
				    skip: true,
				    skin: '#e23e3d',
				    groups: 3,
				    jump: function(e, first){
				        if(!first){
				        	getGoodsappraises(goodsId,e.curr);
				        }
				    }
				});
			}
		}else{
			$("#appraiseTab").html("<tr><td><div style='font-size:15px;text-align:center;'>没有评价信息</div></td></tr>");
		}	
	});
}

function showdizhi(){
  $("#lianxi_title").animate({width:'140px',paddingLeft:'40px'});
  $("#sellerDiv").slideDown();
}

</script>
   	
</html>