<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>云端收藏夹</title>
<link rel="stylesheet" type="text/css"
	href="rel/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="rel/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="rel/css/index.css">
</head>
<body class="easyui-layout" style="width: 1024px; margin: 0px auto">
	<div data-options="region:'north', border:false" style="height: 70px">
		<div class="topTitle">云端收藏夹</div>
		<div class="addTag">
			<a href="javascript:void(0)" onclick="add();">添加书签</a>
		</div>
	</div>
	<div data-options="region:'west',collapsible:false, border:false"
		title="书签整理" style="width: 180px;">
		<div
			style="height: 100%; border-right: 20px solid #EAF2FF; color: red; padding-left: 20px;">
			<table id="labels_table">
				<tr>
					<td class="selected_label"><a href="javascript:void(0)"
						onclick="loadFavInfo('-0')">全部</a></td>
				</tr>
				<tr>
					<td><a href="javascript:void(0)" onclick="loadFavInfo('-1')">未分类</a></td>
				</tr>
				<tbody id="labelContent"></tbody>
				<tr>
					<td><a style="font-weight: bold;" href="fav.do?op=toCloud">云图</a></td>
				</tr>
			</table>
		</div>
	</div>
	<div data-options="region:'center', fit:true, border:false">
		<div id="listFavorites">
			<div style="padding: 6px 10px;">
				<div>
					<a href="http://www.apache.org/struts/"
						style="color: blue; font-size: 18px;" target="_blank">Apache
						Struts</a>
				</div>
				<div style="color: black; font-size: 16px;">Struts官方站点</div>
				<div style="color: green; font-size: 14px;">
					http://www.apache.org/struts/</div>
			</div>
			<!--<div style="padding: 6px 10px;">
				<div>
					<a href="http://www.sougaou.com"
						style="color: blue; font-size: 18px;" target="_blank">搜狗</a>
				</div>
				<div style="color: black; font-size: 16px;">aa</div>
				<div style="color: green; font-size: 14px;">
					http://www.sougaou.com</div>
			</div>

			<div style="padding: 6px 10px;">
				<div>
					<a href="http://www.sina.com" style="color: blue; font-size: 18px;"
						target="_blank">新浪</a>
				</div>
				<div style="color: black; font-size: 16px;">国内外著名门户网站</div>
				<div style="color: green; font-size: 14px;">
					http://www.sina.com</div>
			</div>

			<div style="padding: 6px 10px;">
				<div>
					<a href="http://www.taobao.com"
						style="color: blue; font-size: 18px;" target="_blank">淘宝</a>
				</div>
				<div style="color: black; font-size: 16px;">这是一个好网站在。。</div>
				<div style="color: green; font-size: 14px;">
					http://www.taobao.com</div>
			</div> -->
		</div>
	</div>

	<div id="addFav">
		<form method="post" id="addFavForm">
			<div class="topTitle">云端收藏夹</div>
			<table class="input_table">
				<tr>
					<td>名称:</td>
					<td><input name="flabel" size="40" placeholder='输入网站标签' /><br />
				</tr>
				<tr>
					<td>链接:</td>
					<td><input type="url" name="furl" size="40"
						placeholder='输入网站地址url' /><br />
				</tr>
				<tr>
					<td>书签:</td>
					<td><input name="ftags" size="40" placeholder='可以多个，用","隔开' /><br />
				</tr>
				<tr>
					<td>描述:</td>
					<td><textarea id="fdesc" name="fdesc" rows="4" cols="39"
							placeholder="输入网站描述信息"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<button onclick="return addWinClose();">&nbsp;&nbsp;取
							消&nbsp;&nbsp;</button>&nbsp;&nbsp;
						<button onclick="return addFavorite()">&nbsp;&nbsp;提
							交&nbsp;&nbsp;</button>&nbsp;
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript" src="rel/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="rel/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript"
		src="rel/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="rel/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="rel/ueditor/ueditor.all.min.js"</script>
	<script type="text/javascript" charset="utf-8"
		src="rel/ueditor/lang/zh-cn/zh-cn.js"></script>
	<script type="text/javascript" src="rel/js/index.js"></script>
</body>
</html>