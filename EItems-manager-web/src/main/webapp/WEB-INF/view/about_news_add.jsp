<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="${pageContext.request.contextPath}/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/taotao.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>

<div style="padding:10px 10px 10px 10px">
	<form id="itemAddForm" class="itemForm" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td>新闻标题:</td>
	            <td><input class="easyui-textbox" type="text" name="newstitle" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>新闻简述:</td>
	            <td><input class="easyui-textbox" name="point" data-options="multiline:true,validType:'length[0,150]'" style="height:60px;width: 280px;"></input></td>
	        </tr>
			<tr>
				<td>产品图片:</td>
				<td>
					<a href="javascript:void(0)" class="easyui-linkbutton picFileUpload">卡片式图片上传</a>
					<input type="hidden" name="image"/>
				</td>
			</tr>

			<tr>
				<td>状态设置:</td>
				<td>
					<input class="easyui-radio" type="radio" name="status" value="1" data-options="required:true" style="width: 10px;">开启</input>
					<input class="easyui-radio" type="radio" name="status" value="0" style="width: 10px;">关闭</input>
				</td>
			</tr>
	        <tr>
	            <td>新闻具述:</td>
	            <td>
	                <textarea style="width:1100px;height:400px;visibility:hidden;" name="content"></textarea>
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
       // TT.initOnePicUpload();
	    itemAddEditor = KindEditor.create("#itemAddForm [name=content]", TT.kingEditorParams);
        TAOTAO.init({fun:function(node){
            //根据商品的分类id取商品 的规格模板，生成规格信息。第四天内容。
            TAOTAO.changeItemParam(node, "itemAddForm");
        }});
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
		$.post("${pageContext.request.contextPath}/about/saveNews.do",$("#itemAddForm").serialize(), function(data){
			if(data.status == 200){
				$.messager.alert('提示',data.msg);
				clearForm();
			}
            if(data.status == 500){
                $.messager.alert('提示',data.msg);
            }
		});
	}
	
	function clearForm(){
		$('#itemAddForm').form('reset');
		itemAddEditor.html('');
	}
</script>
