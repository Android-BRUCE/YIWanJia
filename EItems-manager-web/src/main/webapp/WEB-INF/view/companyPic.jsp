<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<link href="${pageContext.request.contextPath}/js/kindeditor-4.1.10/themes/default/default.css" type="text/css"
      rel="stylesheet">
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/icon.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/taotao.css"/>
<script>

    $.ajax({
        type: "POST",
        url: "${pageContext.request.contextPath}/role/position_names.do",
        cache: false,
        dataType: "json",
        success: function (results) {
            for (var i = 0; i < results[0].positions.length; i++) {
                var positionName = results[0].positions[i].position_name;
                var positionId = results[0].positions[i].position_id;
                $("#position_id").append("<option value='" + positionId + "'>" + positionName + "</option>");
            }
        }
    });

</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<div style="padding:10px 10px 10px 10px">
    <form id="itemAddForm" class="itemForm" method="post">
        <table cellpadding="5">
            <tr>
                <td>目前图片：&nbsp;&nbsp;
                    <div>
                        <%--<ul>--%>
                        <%--&nbsp;&nbsp; <li><a href="${pic.image}" target="_blank"><img--%>
                        <%--src="${pic.image}" width="800"--%>
                        <%--height="322" id="image1"></a></li>--%>
                        <%--</ul>--%>
                        <%--</div>--%>
                        <a href="javascript:void(0)" onclick="window.open('${pic.image}')">点击查看</a>
                </td>
            </tr>
            <tr>
                <td>图片添加（选择一张）:&nbsp;&nbsp;
                    <a href="javascript:void(0)" class="easyui-linkbutton picFileUpload">图片上传</a>
                    <input type="hidden" name="image" hidden/>
                </td>
            </tr>
        </table>
        <input type="hidden" name="itemParams"/>
    </form>
    <div style="padding:5px">
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
    </div>
</div>
<script type="text/javascript">
    var itemAddEditor;
    //页面初始化完毕后执行此方法
    $(function () {
        //   TT.initOnePicUpload();
        itemAddEditor = KindEditor.create("#itemAddForm [name=content]", TT.kingEditorParams);
        TAOTAO.init({
            fun: function (node) {
            }
        });
    });

    //提交表单
    function submitForm() {
        //有效性验证
        if (!$('#itemAddForm').form('validate')) {
            $.messager.alert('提示', '表单还未填写完成!');
            return;
        }
        //ajax的post方式提交表单
        //$("#itemAddForm").serialize()将表单序列号为key-value形式的字符串
        $.post("${pageContext.request.contextPath}/company/honourPic.do", $("#itemAddForm").serialize(), function (data) {
            if (data.status == 200) {
                $.messager.alert('提示', data.msg+"3秒后刷新");
                setTimeout("yanchi()",3000);
               // window.location.href = "${pageContext.request.contextPath}/companyPic.html"
                clearForm();
            }
        });
    }
function yanchi() {
    window.location.href = "${pageContext.request.contextPath}/companyPic.html";
}
    function clearForm() {
        $('#itemAddForm').form('reset');
        itemAddEditor.html('');
    }
</script>