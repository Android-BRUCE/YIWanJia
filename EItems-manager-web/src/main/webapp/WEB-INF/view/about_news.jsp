<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<html>
<head>

    <title>产品展示</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/skin/css/base.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.2.6/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.2.6/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.2.6/locale/easyui-lang-zh_CN.js"></script>
</head>
<body leftmargin="8" topmargin="8" background='${pageContext.request.contextPath}/skin/images/allbg.gif'>
<script>

    $(function(){
        var editing;
        var flag;
        $("#tt").datagrid({
            width:1200,
            height: 600,
            collapsible:true,
            //idField:"id",只能选中一个行
            fitColumns:true,
            rownumbers:true,
            loadMsg:"正在加载中....",
            url:"about/query/newsList.do",
            striped:true,
            nowrap:false,
            columns:[[
                {field:"ck",checkbox:true, width:50,},
                {field:"id",title:"主键", width:0,hidden:true,},
                {field:'newstitle',title:'新闻标题',width:50,align:"center",},
                {field:'point',title:'新闻简要',width:100,align:"left"},
                {field:'image',title:'产品图片',width:150,
                    formatter:function(value, rec) {//使用formatter格式化刷子
                        var str = "";
                        var aa= value;
                        if (value == null||value=="") {var aa="http://localhost:8080/skin/images/frame/book.gif";
                            str = "<img src='../skin/images/frame/book.gif ' onclick='download(\""+aa+"\")'/>";
                            return str; }else{str = "<img src=\'"+value+"\' onclick='download(\""+aa+"\")'  height='200' width='400'  />";}
                        return str;
                    }},
                {field:"createtime",title:"创建时间",width:70,align:"center",
                    formatter:function(value,row,index){
                        var unixTimestamp = new Date(value);
                        return unixTimestamp.toLocaleString();
                    }
                },
                {field:"status",title:"展示状态",width:50,align:"center",
                formatter(value){
                    if(value == 1){return "展示";}
                    return "取消";
                }
                },
            ]],
            pagination:true,
            pageNumber:1,
            pageSize:5,
            pageList:[5,10,15,20],
            toolbar:[
                {
                    iconCls:"icon-add",
                    text:"编辑详情",
                    handler:function(){
                        if(editing==undefined)
                        {
                            var rows=$("#tt").datagrid("getSelections");
                            //getChecked;
                            if(rows.length!=1)
                            {
                                $.messager.show({
                                    title:"消息",
                                    width:200,
                                    height:100,
                                    msg:"只能选择一行记录进行修改"
                                });

                            }else{
                                var ids="";
                                for(var i=0;i<rows.length;i++)
                                {
                                    ids=ids+rows[i].r_id+",";
                                }
                                ids=ids.substring(0,ids.length-1);
                                var path = "${pageContext.request.contextPath}/role/role_edit.do?r_id="+ids;
                                window.location=path;
                            }
                        }
                    }
                },
                {
                    iconCls:"icon-add",
                    text:"查询",
                    handler:function(){
                        var keyword = document.getElementById("keyword").value;
                        var cid = document.getElementById("cid").value;
                        $("#tt").datagrid(//重定向url
                            {
                                url:"${pageContext.request.contextPath}/role/dimRole.do?keyword="+keyword+"&cid="+cid
                            }
                        );
                    }
                },


                {
                    iconCls:"icon-add",
                    text:"查看详情",
                    handler:function(){
                        if(editing==undefined)
                        {
                            var rows=$("#tt").datagrid("getSelections");
                            //getChecked;
                            if(rows.length!=1)
                            {
                                $.messager.show({
                                    title:"消息",
                                    width:200,
                                    height:100,
                                    msg:"只能选择一行记录进行查看"
                                });

                            }else{
                                var ids="";
                                for(var i=0;i<rows.length;i++)
                                {
                                    ids=ids+rows[i].r_id+",";
                                }
                                ids=ids.substring(0,ids.length-1);
                                var path = "${pageContext.request.contextPath}/role/role_look.do?r_id="+ids;
                                window.location=path;
                            }
                            /*                                 //增加一行
                                                                 $("#tt").datagrid("getRowIndex",rows[0]);
                                                                 editing=$("#tt").datagrid("getRows").length-1;
                                                                 //开启编辑状态
                                                                 $("#tt").datagrid("beginEdit",editing); */
                        }




                    }
                },
                {
                    iconCls:"icon-remove",
                    text:"删除",
                    handler:function(){
                        var rows=$("#tt").datagrid("getSelections");
                        if(rows.length>0){
                            var ids="";
                            for(var i=0;i<rows.length;i++)
                            {
                                ids=ids+rows[i].id+",";
                            }
                            ids=ids.substring(0,ids.length-1);
                            $.messager.confirm("确认框","您确定要删除吗?",function(b){
                                if(b)
                                {
                                    $.post("about/delete/"+ids+"/deleteNews.do?",function(data){
                                        $.messager.show({
                                            title:"消息",
                                            width:200,
                                            height:100,
                                            msg:data.msg
                                        });
                                        //刷新datagrid
                                        $("#tt").datagrid("reload",{});
                                        //取消所选中的行
                                        $("#tt").datagrid("unselectAll");
                                    },"json");
                                }
                            });

                        }else{
                            $.messager.show({
                                title:"消息",
                                width:200,
                                height:100,
                                msg:"至少要选择一条记录进行删除"
                            });
                        }
                    }
                },
            ]
        });

    });

</script>
<div id="dd"></div>
<div id="address"></div>
<!--  快速转换位置按钮  -->
<table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#D1DDAA" align="left">
    <tr>
        <td height="26" background="${pageContext.request.contextPath}/skin/images/newlinebg3.gif">
            <table width="58%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td >
                        当前位置:关于我们管理>>公司新闻管理
                    </td>
                    <td>
                        <input type='button' class="coolbg np" onClick="location='about_news_add.do';" value='添加新闻信息' />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<!--  搜索表单  -->
<form name='form3' method='post'>
    <input type='hidden' name='dopost' value='' />
    <table width='98%'  border='0' cellpadding='1' cellspacing='1' bgcolor='#CBD8AC' align="left" style="margin-top:8px">
        <tr bgcolor='#EEF4EA'>
            <td background='${pageContext.request.contextPath}/skin/images/wbg.gif' align='left'>
                <table border='0' cellpadding='0' cellspacing='0'>
                    <tr>
                        <td width='90' align='center'>搜索条件：</td>
                        <td width='160'>
                            <select name='cid' style='width:150' id="cid">
                                <option value='0'>选择类型...</option>
                                <option value='1'>角色编号</option>
                                <option value='2'>角色名称</option>
                                <option value='3'>角色状态</option>
                            </select>
                        </td>
                        <td width='70'>
                            关键字：
                        </td>
                        <td width='160'>
                            <input type='text' name='keyword' style='width:120px' id="keyword"/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form><!--  内容列表   --><form id="tt"></form></body></html>
