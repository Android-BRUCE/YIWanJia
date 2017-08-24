$(function(){
    var editing;
    var flag;
    $("#tt").datagrid({
        width:1010,
        height:215,
        collapsible:true,
        //idField:"id",只能选中一个行
        fitColumns:true,
        rownumbers:true,
        loadMsg:"正在加载中....",
        url:"banner/list.do",
        striped:true,
        columns:[[
            {field:"ck",checkbox:true, width:50},
            {field:"id",title:"主键", width:0,hidden:true},
            {field:'image',title:'轮播图片',width:50,
            formatter:function(value, rec) {//使用formatter格式化刷子
                var str = "";
                var aa= value;
                if (value == null||value=="") {

                    var aa="../skin/images/frame/book.gif";
                    var bb = "download()"
                str = "<img src='../skin/images/frame/book.gif ' onclick='download()'/>";
                return str; }else{
                    str = "<img src=\""+value+"\" />";
                }

                return str;
            }},

            {field:"title",title:"标题显示",width:50,align:"center"},
            {field:"point",title:"要点显示",width:80,align:"center",
                editor:{
                    type:"validatebox",
                    options:{
                        required:true,
                        validType:"usernameLength[4,12]",
                        missingMessage:"角色名称必填"
                    }
                }
            },
            {field:"status",title:"轮播状态",width:20,align:"center",
                formatter:function(value,rowData,rowIndex){
                    if(value==1)
                    {
                        return "开启";
                    }else if(value==0){
                        return "禁用";
                    }
                },
                /*                        editor:{
                                            type:"combobox",
                                            options:{
                                               url:"${pageContext.request.contextPath}/city_data.json",
                                valueField:"id",
                                textField:"text"
                        }
                   } */
            },
            {field:"createtime",title:"创建时间",width:50,align:"center"},
            {field:"updatetime",title:"修改时间",width:50,align:"center"}
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
                        /*                                 //增加一行
                                                             $("#tt").datagrid("getRowIndex",rows[0]);
                                                             editing=$("#tt").datagrid("getRows").length-1;
                                                             //开启编辑状态
                                                             $("#tt").datagrid("beginEdit",editing); */
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
                            ids=ids+rows[i].r_id+",";
                        }
                        ids=ids.substring(0,ids.length-1);
                        $.messager.confirm("确认框","您确定要删除吗?",function(b){
                            if(b)
                            {
                                $.post("${pageContext.request.contextPath}/role/role_delete.do","r_id="+ids,function(data){
                                    $.messager.show({
                                        title:"消息",
                                        width:200,
                                        height:100,
                                        msg:data.message
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
function download(address){
    var address =  address;
    $('#dd').dialog({
        title: '预览',
        width: 430,
        height:430,
        resizable:true,
        closed: false,
        cache: false,
        modal: true,
    });
    $("#address").attr("src","http:localhost:8080/skin/images/frame/book.gif");
}