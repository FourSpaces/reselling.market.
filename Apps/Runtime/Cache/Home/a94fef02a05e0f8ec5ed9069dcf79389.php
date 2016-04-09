<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE>
<html lang="zh-cn">
	<head>
  		<meta charset="utf-8">
      	<meta http-equiv="X-UA-Compatible" content="IE=edge">
      	<meta name="viewport" content="width=device-width, initial-scale=1">
      	<title>商品列表 - <?php echo ($CONF['mallTitle']); ?></title>
      	<meta name="keywords" content="<?php echo ($CONF['mallKeywords']); ?>" />
      	<meta name="description" content="<?php echo ($CONF['mallDesc']); ?>,商品分类展示,搜索" />
      	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/common.css" />
     	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/goodslist.css" />
     	<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/base.css" />
		<link rel="stylesheet" href="/reselling.market/Apps/Home/View/default/css/head.css" />	
   	</head>
   	<style>
   		.hide{display: none;}
   	</style>
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
		<input id="c1Id" type="hidden" value="<?php echo ($c1Id); ?>"/>
		<input id="c2Id" type="hidden" value="<?php echo ($c2Id); ?>"/>
		<input id="c3Id" type="hidden" value="<?php echo ($c3Id); ?>"/>

		<input type="hidden" id="msort" value="<?php echo ($msort); ?>"/>   		
   		<input type="hidden" id="sj" value="<?php echo ($sj); ?>"/>
		

		<!----加载商品楼层start----->
		<div class="wst-container">
			<div class="wst-nvg-title">
				<a href="<?php echo U('Home/Goods/getGoodsList/',array('c1Id'=>$goodsNav[0]['catId']));?>"><?php echo ($goodsNav[0]["catName"]); ?></a>
				<?php if($goodsNav[1]['catId'] > 0): ?>&nbsp;>&nbsp;<a href="<?php echo U('Home/Goods/getGoodsList/',array('c1Id'=>$goodsNav[0]['catId'],'c2Id'=>$goodsNav[1]['catId']));?>"><?php echo ($goodsNav[1]["catName"]); ?></a><?php endif; ?>
				<?php if($goodsNav[2]['catId'] > 0): ?>&nbsp;>&nbsp;<a href="<?php echo U('Home/Goods/getGoodsList/',array('c1Id'=>$goodsNav[0]['catId'],'c2Id'=>$goodsNav[1]['catId'],'c3Id'=>$goodsNav[2]['catId']));?>"><?php echo ($goodsNav[2]["catName"]); ?></a><?php endif; ?>
			</div>
			<!-------------商品筛选栏---------------->
			<div class="wst-goods-search hide" style="">
				<div  class="search-title hide" style="">商品筛选</div>
				<div class="hide" class="search-panel">
					<div class="search-box">
						<div  class="search-items">
							<div class="items-title">配送区域：</div>
							<div id="wst-areas" class="items">
								<li id="city_0" <?php if($areaId3 == 0): ?>class="searched"<?php endif; ?> data="0" onClick="queryGoods(this,1);">全部</li>
								<?php if(is_array($districts)): $k = 0; $__LIST__ = $districts;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><li id="city_<?php echo ($vo['areaId']); ?>" <?php if($vo['areaId'] == $areaId3): ?>class="searched"<?php endif; ?> data="<?php echo ($vo['areaId']); ?>" onClick="queryGoods(this,1);"><?php echo ($vo["areaName"]); ?></li><?php endforeach; endif; else: echo "" ;endif; ?>
								<div class="wst-clear"></div>
							</div>
							<div class="wst-clear"></div>
						</div>
						<?php if($areaId3 > 0): ?><div class="wst-area-country">
							<div id="wst-communitys" class="items">
								<li <?php if($communityId == 0): ?>class="searched"<?php endif; ?> data="0" onClick="queryGoods(this,2);">全部</li>
								<?php if(is_array($communitys)): $k = 0; $__LIST__ = $communitys;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><li id="community_<?php echo ($vo['communityId']); ?>" <?php if($vo['communityId'] == $communityId): ?>class="searched"<?php endif; ?> data="<?php echo ($vo['communityId']); ?>" onClick="queryGoods(this,2);"><?php echo ($vo["communityName"]); ?></li><?php endforeach; endif; else: echo "" ;endif; ?>
								<div class="wst-clear"></div>
							</div>
							<div class="wst-clear"></div>
						</div><?php endif; ?>
					</div>
				</div>
				<div class="hide" class="search-panel">
					<div class="search-box">
						<div class="search-items">
							<div class="items-title">商品品牌：</div>
							<div id="wst-brand" class="items" >
								<input type="hidden" id="bs" value="<?php echo ($bs); ?>">
								<div id="wst-brand-tp" onclick="tohide(this,'wst-brand');">&nbsp;显示&nbsp;</div>
								<li <?php if($brandId == 0): ?>class="searched"<?php endif; ?> data="0" onClick="queryGoods(this,3);">全部</li>
								<?php if(is_array($brands)): $i = 0; $__LIST__ = $brands;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li id="brand_<?php echo ($vo['brandId']); ?>" <?php if($vo['brandId'] == $brandId): ?>class="searched"<?php endif; ?> data="<?php echo ($vo['brandId']); ?>" onClick="queryGoods(this,3);"><?php echo ($vo['brandName']); ?></li><?php endforeach; endif; else: echo "" ;endif; ?>
								<div class="wst-clear"></div>
							</div>
							<div class="wst-clear"></div>
						</div>
					</div>
				</div>
				<div class="hide" class="search-panel ">
					<div class="search-box">
						<div class="search-items">
							<div class="items-title">价格区间：</div>
							<div id="wst-price" class="items">
								<li <?php if($priceId == ''): ?>class="searched"<?php endif; ?> data="" onClick="queryGoods(this,4);">全部</li>
								<?php if(is_array($prices)): foreach($prices as $key2=>$price): ?><li id="price_<?php echo ($key2); ?>" <?php if(($key2) == $priceId): ?>class="searched"<?php endif; ?> data="<?php echo ($key2); ?>" onClick="queryGoods(this,4);"><?php echo ($price); ?>元</li><?php endforeach; endif; ?>
								
								<div class="wst-clear"></div>
							</div>
							<div class="wst-clear"></div>
						</div>
					</div>
				</div>
				
			</div>
			<!-----------------------商品列表---------------------------->
			<div class="wst-goods-list">
				<div class="wst-goods-header">
					<!--li>综合排序<?php echo ($rq); ?></li-->
					
					<li <?php if($msort == 1): ?>class="licurr"<?php endif; ?> onclick="queryGoods(this,1);">综合排序<s <?php if($msort == 1): ?>class="bscurr"<?php endif; ?>></s></li>
					
					<li class="hide"  <?php if($msort == 6): ?>class="licurr"<?php endif; ?> onclick="queryGoods(this,6);">人气<s <?php if($msort == 6): ?>class="bscurr"<?php endif; ?>></s></li>
					<li class="hide"  <?php if($msort == 7): ?>class="licurr"<?php endif; ?> onclick="queryGoods(this,7);">销量<s <?php if($msort == 7): ?>class="bscurr"<?php endif; ?>></s></li>
					<li <?php if($msort == 8 or $msort == 9): ?>class="licurr"<?php endif; ?> onclick="queryGoods(this,8);">价格<b <?php if($msort == 8): ?>class="bscurr"<?php endif; if($msort == 9): ?>class="bscurr_up"<?php endif; ?>></b></li>
					<li class="hide" <?php if($msort == 10): ?>class="licurr"<?php endif; ?> onclick="queryGoods(this,10);">好评度<s <?php if($msort == 10): ?>class="bscurr"<?php endif; ?>></s></li>
					<li <?php if($msort == 11): ?>class="licurr"<?php endif; ?> onclick="queryGoods(this,11);">上架时间<s <?php if($msort == 11): ?>class="bscurr"<?php endif; ?>></s></li>
					<div style="float:left;position: relative;">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<s class="rmb1"></s>
						<s class="rmb2"></s>
						<input type="text" class="wst-glist-price" id="sprice" value="<?php echo ($sprice); ?>"/>-
						<input type="text" class="wst-glist-price" id="eprice" value="<?php echo ($eprice); ?>"/>
						<button class="wst-glist-cofm" onclick="queryGoods(this,12);">确定</button>
					</div>
					<div class="wst-clear"></div>
				</div>
				<div class="wst-goods-page">
					<?php if(is_array($pages['root'])): $key = 0; $__LIST__ = $pages['root'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$goods): $mod = ($key % 2 );++$key;?><li class="wst-goods-item">
						<div class="goods-img">
							<a href="<?php echo U('Home/Goods/getGoodsDetails/',array('goodsId'=>$goods['goodsId']));?>">
							<img class='lazyImg' data-original="/reselling.market/<?php echo ($goods['goodsThums']); ?>" width="180" />
							</a>
						</div>
						<div class="goods-des">
							<div class="goods-title">
								<a href="<?php echo U('Home/Goods/getGoodsDetails/',array('goodsId'=>$goods['goodsId']));?>"><?php echo ($goods['goodsName']); ?></a>
							</div>
							<div class="goods-price"><span class="span1" id="shopGoodsPrice_<?php echo ($goods['goodsId']); ?>" dataId="<?php echo ($goods['goodsAttrId']); ?>">￥<?php echo ($goods['shopPrice']); ?></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="span2">￥<?php echo ($goods['marketPrice']); ?></span></div>
							<div class="goods-buy">
								<div class="goods-left">
									<span style="color:green;font-weight:bolder;margin-left:2px;"><?php echo ($goods["popularity"]); ?></span>人查看过此商品
								</div>
								<div class="goods-right">
								    <?php if($goods['goodsStock'] > 0): ?><a class="hide" href="javascript:addCart(<?php echo ($goods['goodsId']); ?>,0,'<?php echo ($goods['goodsThums']); ?>')" class="btnCart">
										<img src="/reselling.market/Apps/Home/View/default/images/btn_addcart.png" width="85"/>
										</a>
									<?php else: ?>
									    &nbsp;&nbsp;&nbsp;&nbsp;<font color='red'>(暂无商品)</font><?php endif; ?>
								</div>
								<div class="wst-clear"></div>
							</div>
						</div>
					</li><?php endforeach; endif; else: echo "" ;endif; ?>
					<div class="wst-clear"></div>
				</div>
			</div>
			<div class="wst-page" style="text-align:center;">
				<div id="wst-page-items"></div>
			</div>
			<div class="wst-clear"></div>
		</div>
	<script src="/reselling.market/Public/js/common.js"></script>
	<script src="/reselling.market/Public/plugins/layer/layer.min.js"></script>
	<script src="/reselling.market/Apps/Home/View/default/js/head.js" type="text/javascript"></script>
	<script src="/reselling.market/Apps/Home/View/default/js/common.js" type="text/javascript"></script>
	<script src="/reselling.market/Apps/Home/View/default/js/goods.js"></script>
	<script>
	<?php if($bs == 1): ?>$("#wst-brand-tp").click();<?php endif; ?>
	<?php if($pages['totalPage'] > 1): ?>laypage({
	    cont: 'wst-page-items',
	    pages: <?php echo ($pages["totalPage"]); ?>, //总页数
	    skip: true, //是否开启跳页
	    skin: '#e23e3d',
	    groups: 3, //连续显示分页数
	    curr: function(){ //通过url获取当前页，也可以同上（pages）方式获取
	        var page = location.search.match(/pcurr=(\d+)/);
	        return page ? page[1] : 1;
	    }(), 
	    jump: function(e, first){ //触发分页后的回调
	        if(!first){ //一定要加此判断，否则初始时会无限刷新
	        	var nuewurl = WST.splitURL("pcurr");
	        	var ulist = nuewurl.split("?");
	        	if(ulist.length>1){
	        		location.href = nuewurl+'&pcurr='+e.curr;
	        	}else{
	        		location.href = '?pcurr='+e.curr;
	        	}
	            
	        }
	    }
	});<?php endif; ?>
	
	</script>
		
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

   	</body>
</html>