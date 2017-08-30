<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.4.1/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.4.1/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="/css/taotao.css" />
<script type="text/javascript" src="/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="/js/common.js"></script>

<div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm" class="itemForm" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td>产品名称:</td>
	            <td><input class="easyui-textbox" type="text" name="goodsttile" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>产品简述:</td>
	            <td><input class="easyui-textbox" name="point" data-options="multiline:true,validType:'length[0,150]'" style="height:60px;width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>产品分类:</td>
	            <td>
	                <%--<input class="easyui-textbox" type="text" name="barcode" data-options="validType:'length[1,30]'" />--%>
					<select name="cid" id="cid">
						<c:forEach items="${goodsCategory }" var="pr">
							<option value=${pr.id}>${pr.name}</option>
						</c:forEach>
					</select>
	            </td>
	        </tr>
	        <tr>
	            <td>产品图片:</td>
	            <td>
					<a href="javascript:void(0)" class="easyui-linkbutton onePicUpload">图片上传</a>
	                 <input type="hidden" name="image"/>
	            </td>
	        </tr>
	        <tr>
	            <td>产品具述:</td>
	            <td>
	                <textarea style="width:800px;height:300px;visibility:hidden;" name="goodsdesc"></textarea>
	            </td>
	        </tr>
	    </table>
	    <input type="hidden" name="itemParams"/>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
	var itemAddEditor ;
	//页面初始化完毕后执行此方法
	$(function(){
        TT.initOnePicUpload();
	    itemAddEditor = KindEditor.create("#itemAddForm [name=goodsdesc]", TT.kingEditorParams);
	});
	//提交表单
	function submitForm(){
		//有效性验证
		if(!$('#itemAddForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		//同步文本框中的商品描述
		itemAddEditor.sync();
		//ajax的post方式提交表单
		//$("#itemAddForm").serialize()将表单序列号为key-value形式的字符串
		$.post("/goods/save.do",$("#itemAddForm").serialize(), function(data){
			if(data.status == 200){
				$.messager.alert('提示',data.msg);
			}
		});
	}
	
	function clearForm(){
		$('#itemAddForm').form('reset');
		itemAddEditor.html('');
	}
</script>
