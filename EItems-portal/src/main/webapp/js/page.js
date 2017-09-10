//分页插件
/**
 2017-06-15 zh
 **/
(function($){
    var ms = {
        init:function(obj,args){
            return (function(){
                ms.fillHtml(obj,args);
                ms.bindEvent(obj,args);

            })();
        },
        //填充html
        fillHtml:function(obj,args){
            return (function(){
                obj.empty();

                //上一页
                if(parseInt(args.current) > 1){
                    obj.append('
                    上一页

                    '); }else{ obj.remove('.prevPage'); obj.append('
                    上一页

                    '); } //中间页码 if(parseInt(args.current) != 1 && parseInt(args.current) >= 4 && parseInt(args.pageCount) != 4){ obj.append('
                    '+1+'

                    '); } if(parseInt(args.current-2) > 2 && parseInt(args.current) <= parseInt(args.pageCount) && parseInt(args.pageCount) > 5){ obj.append('
                        ...

                    '); } var start = parseInt(args.current) -2; var end = parseInt(args.current) +2; if((start > 1 && parseInt(args.current) < 4)||parseInt(args.current) == 1){ end++; } if(parseInt(args.current) > parseInt(args.pageCount)-4 && parseInt(args.current) >= parseInt(args.pageCount)){ start--; } for (;start <= end; start++) { if(start <= parseInt(args.pageCount) && start >= 1){ if(start != parseInt(args.current)){ obj.append('
                    '+ start +'

                    '); }else{ obj.append('
                    '+ start +'

                    '); } } } if(parseInt(args.current) + 2 < parseInt(args.pageCount) - 1 && parseInt(args.current) >= 1 && parseInt(args.pageCount) > 5){ obj.append('
                        ...

                    '); } if(parseInt(args.current) != parseInt(args.pageCount) && parseInt(args.current) < parseInt(args.pageCount) -2 && parseInt(args.pageCount) != 4){ obj.append('
                    '+args.pageCount+'

                    '); } //下一页 if(parseInt(args.current) < parseInt(args.pageCount)){ obj.append('
                    下一页

                    '); }else{ obj.remove('.nextPage'); obj.append('
                    下一页

                    '); } obj.append('
                    跳转
                    页

                    确定'); })(); }, //绑定事件 bindEvent:function(obj,args){ return (function(){ obj.off("click","a.tcdNumber"); obj.on("click","a.tcdNumber",function(){ var current = parseInt($(this).text()); ms.fillHtml(obj,{"current":current,"pageCount":args.pageCount}); if(typeof(args.backFn)=="function"){ args.backFn(current); } }); //上一页 obj.off("click","a.prevPage"); obj.on("click","a.prevPage",function(){ var current = parseInt(obj.children("span.current").text()); ms.fillHtml(obj,{"current":current-1,"pageCount":args.pageCount}); if(typeof(args.backFn)=="function"){ args.backFn(current-1); } }); //下一页 obj.off("click","a.nextPage"); obj.on("click","a.nextPage",function(){ var current = parseInt(obj.children("span.current").text()); ms.fillHtml(obj,{"current":current+1,"pageCount":args.pageCount}); if(typeof(args.backFn)=="function"){ args.backFn(current+1); } }); obj.off("click","a.btn"); obj.on("click","a.btn",function(){ var current =$("#pageIndex").val(); if(parseInt(current)>0 && parseInt(current)<=parseInt(args.pageCount) && current!=""){ ms.fillHtml(obj,{"current":current,"pageCount":args.pageCount}); if(typeof(args.backFn)=="function"){ args.backFn(current); } $("#pageIndex").val(current); }else{ $("#pageIndex").val(""); } }); })(); }, init1:function(obj,args){ return (function(){ ms.fillHtml(obj,args); })(); } } $.fn.createPage = function(options){ var args = $.extend({ pageCount : 50, current : 1, backFn : function(){ } },options); ms.init(this,args); }; })(jQuery);