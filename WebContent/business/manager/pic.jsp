<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>roles</title>
    <script type="text/javascript" src="plugs/jquery-3.1.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <!-- boostrap table  -->
   	
	<!-- bootstrap -->
	<link rel="stylesheet" href="plugs/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="plugs/bootstrap/js/bootstrap.min.js"></script>
	<!-- 分页插件 -->
	<link rel="stylesheet" href="plugs/bootstrap-table/bootstrap-table.min.css">
	<script type="text/javascript" src="plugs/bootstrap-table/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="plugs/bootstrap-table/bootstrap-table-locale-all.min.js"></script>
	<!-- 行内编辑 -->
	<script type="text/javascript" src="plugs/editable/bootstrap-editable.js"></script>
	<script type="text/javascript" src="plugs/editable/bootstrap-table-editable.js"></script>
	<script src="business/js/uploadPreview.js" type="text/javascript"></script>
</head>
<body>
<!--查询列表-->
<div class="container" style="margin-top:20px">
			<div class="row">
				<!-- 表格 
				 <div id="toolbar">
        			<button value="删除" id="delete">删除</button>
				</div>
				-->
				<div class="col-xs-12">
					<table class="table table-striped table-bordered table-hover" ></table>
				</div>
			</div>
</div>
<!-- 图片上传和预览 -->
<div id="pic">
		<div class="closepic">
		<button id="close">关闭</button>
		</div>
        <form class="form-horizontal" id="pic_form" method="post" enctype="multipart/form-data" action="../picUpload.do">
            <fieldset>
                <!-- Form Name -->
                <legend>产品溯源页面图片上传</legend>
                <!-- upload pic one-->
                <div class="control-group">
                    <label class="control-label" for="passwordinput-0"><span class="need">*</span> 上传第一张图片</label>
                    <div class="controls inline">
                        <input id="up_img1"  type="file" name="img1">
                        <p class="help-block"></p>
                    </div>
                </div>

                <!-- upload pic two-->
                <div class="control-group">
                    <label class="control-label" for="passwordinput-2"><span class="need">*</span> 上传第二张图片</label>
                    <div class="controls">
                        <input id="up_img2" name="img2" type="file">
                        <p class="help-block"></p>
                    </div>
                </div>
                
                 <!-- upload pic free-->
                <div class="control-group">
                    <label class="control-label" for="passwordinput-2"><span class="need">*</span> 上传第三张图片</label>
                    <div class="controls">
                        <input id="up_img3" name="img3" type="file">
                        <p class="help-block"></p>
                    </div>
                </div>
                
                 <!-- upload pic four-->
                <div class="control-group">
                    <label class="control-label" for="passwordinput-2"><span class="need">*</span> 上传第四张图片</label>
                    <div class="controls">
                        <input id="up_img4" name="img4" type="file">
                        <p class="help-block"></p>
                    </div>
                </div>
                
                 <!-- upload pic five-->
                <div class="control-group">
                    <label class="control-label" for="passwordinput-2"><span class="need">*</span> 上传第五张图片</label>
                    <div class="controls">
                        <input id="up_img5" name="img5" type="file">
                        <p class="help-block"></p>
                    </div>
                </div>
                
                <!-- Button (Double) -->
                <div class="control-group">
                    <!--<label class="control-label" for="doublebutton-0">Double Button</label>-->
                    <div class="controls btns">
                        <button type="reset" id="doublebutton-0" name="doublebutton-0" class="btn  btn-success"> 重 置 </button>
                        <button type="submit" id="pic_submit" name="doublebutton2-0" class="btn btn-danger"> 提 交 </button>
                    </div>
                </div>
              
            </fieldset>
        </form>
         
		<script>	
			window.onload = function () 
			{ 
				new uploadPreview({ UpBtn: "up_img1", DivShow: "imgdiv1", ImgShow: "imgShow1" });
				new uploadPreview({ UpBtn: "up_img2", DivShow: "imgdiv2", ImgShow: "imgShow2" });	
				new uploadPreview({ UpBtn: "up_img3", DivShow: "imgdiv3", ImgShow: "imgShow3" });
				new uploadPreview({ UpBtn: "up_img4", DivShow: "imgdiv4", ImgShow: "imgShow4" });
				new uploadPreview({ UpBtn: "up_img5", DivShow: "imgdiv5", ImgShow: "imgShow5" });
			}
		</script>
        <div class="picbox">
        <!-- 图片预览区 -->
        <p>溯源页面上传图片预览</p>
            <div id="imgdiv1" style="minheight:120px"><img id="imgShow1" width="380" /></div>
    		<div id="imgdiv2" style="minheight:120px"><img id="imgShow2" width="380" /></div>
   			 <div id="imgdiv3" style="minheight:120px"><img id="imgShow3" width="380" /></div>
   			 <div id="imgdiv4" style="minheight:120px"><img id="imgShow4" width="380"  /></div>
        	 <div id="imgdiv5" style="minheight:120px"><img id="imgShow5" width="380" /></div>
        </div>     
</div>




<div style="height:1000px"></div>
<link rel="stylesheet" href="business/css/pic.css">
<!-- 动画 -->
<script>
		$(document).on('click','.edit',function()
		{
			 var clientWidth = $(window).width();
			 var baifenbi = ((clientWidth - 400) / 2) / clientWidth * 100;
			// $('#pic').css('left', baifenbi + '%'); 
			 $('#pic').css('left', '0');
			 $('#pic').css('transition', 'left 0.8s');
			 $("#mask").css('display', 'block');	
		});
		
		$("#mask").bind('click', function ()
		{
		    $('#pic').css('left', '-100%');
		    $('#pic').css('transition', 'left 0.8s');
		    $("#mask").css('display', 'none');
		});
		$('#close').click(function(){
			 $('#pic').css('left', '-100%');
			 $('#pic').css('transition', 'left 0.8s');
		});
</script>
<!-- 表格数据 -->
<script>
$(document).ready(function() 
{
				var businessId = $(window.parent.parent.frames["topFrame"].document).find('#businessId').text();
		    	 //---先销毁表格 ---
		        $('table').bootstrapTable('destroy');  
		        //---初始化表格,动态从服务器加载数据--- 
		       // alert("hello");
				 $('table').bootstrapTable
				 ({
					//发送数据请求获取项目信息
			    	url: '../getPageBusinessProjectPlan.do',
					method: 'post',
					contentType: "application/x-www-form-urlencoded",
					//toolbar: '#toolbar',//自定义工具栏
					cache: false,
					height: 400,
					striped: true,
					//search: true,
					//showExport: true,
					//showColumns: true,
					exportTypes: ['csv','txt','xml'],
					clickToSelect: true,
					//【查询设置】
					/* queryParamsType的默认值为 'limit' ,在默认情况下 传给服务端的参数为：offset,limit,sort
		                             设置为 ''  在这种情况下传给服务器的参数为：pageSize,pageNumber */
					queryParamsType:'', 
		           	queryParams: function queryParams(params)
			    	{
		           		alert("hello");
		             var param = {  
		                 pageNumber: params.pageNumber,    
		                 pageSize: params.pageSize,
		                 business: businessId 
		             }; 
		             /*
		             for(var key in searchArgs){
		           	  param[key]=searchArgs[key]
		             }  
		             */
		             console.log("hello");
		             return param;                   
		           }, 
					//【其它设置】
		           locale:'zh-CN',//中文支持
		           pagination: true,//是否开启分页（*）
		           pageNumber:1,//初始化加载第一页，默认第一页
		           pageSize: 10,//每页的记录行数（*）
		           pageList: [10,15,20],//可供选择的每页的行数（*）
		           sidePagination: "server", //分页方式：client客户端分页，server服务端分页（*）
		           //showRefresh:true,//刷新按钮
		           //【设置列属性】
					columns:
					 [
					 {field: 'check',checkbox: true},
					 {field: 'project_btCode',title: '项目id'}, 	
					 {field: 'planName',title: '项目名称'},	 
					 {field: 'action',title: '操作',
						 formatter:function(value,row,index){
							    var element = 
							    "<a target='_blank' href='http://localhost:8081/CropBacktracking/lifeline.html' class='view' data-id='"+row.id +"'>预览</a> "+ 
							    "<a class='edit' data-id='"+row.id +"'>编辑</a> ";
							    return element;  
							} 
					 }
					 /*
					 {field: 'seedsource',title: '地点', align: 'center',
						formatter:function(value,row,index){
						    var element = 
						    "<a class='edit' data-id='"+row.id +"'>编辑</a> "+ 
						    "<a class='delet' data-id='"+row.id +"'>删除</a> ";
						    return element;  
						} 
					  }
					  */
					],   
					//行内编辑保存事件
					onEditableSave: function (field, row, oldValue, $el)
					{
							update(row);
					}	 
		       });
});
</script>
</body>
</html>