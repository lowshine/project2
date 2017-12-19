<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <title>BootStrap Table使用</title>
 <script src="${pageContext.request.contextPath}/bootstrap/Content/jquery-1.10.2.min.js"></script>
 <script src="${pageContext.request.contextPath}/bootstrap/Content/bootstrap/bootstrap.js"></script>
 <link href="${pageContext.request.contextPath}/bootstrap/Content/bootstrap/bootstrap.css" rel="stylesheet" />
 <script src="${pageContext.request.contextPath}/bootstrap/Content/bootstrap-table/bootstrap-table.js"></script>
 <link href="${pageContext.request.contextPath}/bootstrap/Content/bootstrap-table/bootstrap-table.css" rel="stylesheet"/>
 <script src="${pageContext.request.contextPath}/bootstrap/Content/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
 <link href="${pageContext.request.contextPath}/bootstrap/Content/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"/>
 <script src="${pageContext.request.contextPath}/bootstrap/Content/bootstrap3-editable/js/bootstrap-editable.js"></script>
</head>
<body>
	<div id="toolbar" class="btn-group">
            <button id="btn_add" type="button" class="btn btn-default" onclick="add()">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
            </button>
            <button id="btn_edit" type="button" class="btn btn-default" onclick="regist()">
                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
            </button>
            <button id="btn_delete" type="button" class="btn btn-default" onclick="del()">
                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
            </button>
        </div>
        <div>
        <table id="tb_departments"></table>
        </div>
        <div id="gg"></div>
</body>
<script type="text/javascript">
$(function () {

    //1.初始化Table
    var oTable = new TableInit();
    oTable.Init();

    //2.初始化Button的点击事件
    var oButtonInit = new ButtonInit();
    oButtonInit.Init();

});


var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#tb_departments').bootstrapTable({
            url: 'http://localhost:8080/ZZZ/login/query.action',         //请求后台的URL（*）
            method: 'post',                      //请求方式（*）
            toolbar: '#toolbar',                //工具按钮用哪个容器
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            queryParams: oTableInit.queryParams,//传递参数（*）
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            showRefresh: true,                  //是否显示刷新按钮
            clickToSelect: true,                //是否启用点击选中行
            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
            columns: [{
                checkbox: true
            }, {
                field: 'ID',
                title: 'id'
            }, {
                field: 'USERNAME',
                title: '用户名'
            }, {
                field: 'PASSWORD',
                title: '密码'
            }, {
                field: 'ROLE',
                title: '用户身份'
            },]
        });
    };

    //得到查询的参数
    oTableInit.queryParams = function (params) {
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset: params.offset,  //页码
            departmentname: $("#txt_search_departmentname").val(),
            statu: $("#txt_search_statu").val()
        };
        return temp;
    };
    return oTableInit;
};


var ButtonInit = function () {
    var oInit = new Object();
    var postdata = {};

    oInit.Init = function () {
        //初始化页面上面的按钮事件
    };

    return oInit;
};

function add(){
	alert("新增")
	window.open('add.jsp','新增','width=500px,height=500px,scrollbars=no,left=550px,top=100px')

}



function regist(){
	alert("修改");
	var rows = $("#tb_departments").bootstrapTable('getSelections');
    if (rows.length== 0) {  
        alert("请先选择要修改的记录!");  
        return;  
    }  
    var id = '';  
    for (var i = 0; i < rows.length; i++) {  
        id += rows[i]['ID'] + ",";  
    }  
    id = id.substring(0, id.length - 1);
    alert(id);
    registUser(id);  
}
function registUser(id) {    
        $.ajax({  
            url: "http://localhost:8080/ZZZ/login/jk.action",  
            type: "post",  
            data : id,
            success: function (data) {  
            	window.open('registe.jsp','新增','width=500px,height=500px,scrollbars=no,left=550px,top=100px')
            }  
        });  
} 

function del(){
	var rows = $("#tb_departments").bootstrapTable('getSelections');
    if (rows.length== 0) {  
        alert("请先选择要删除的记录!");  
        return;  
    }  
    var ids = '';  
    for (var i = 0; i < rows.length; i++) {  
        ids += rows[i]['ID'] + ",";  
    }  
    ids = ids.substring(0, ids.length - 1);
    alert(ids);
    deleteUser(ids);  
}

function deleteUser(ids) {  
    var msg = "您真的确定要删除吗？";  
    if (confirm(msg) == true) {
        $.ajax({  
            url: "http://localhost:8080/ZZZ/login/del.action",  
            type: "post",  
            data : ids,
            success: function (data) {  
                alert("删除成功");  
                //重新加载记录  
                //重新加载数据  
                $("#tb_departments").bootstrapTable('refresh', {url: 'http://localhost:8080/ZZZ/login/query.action'});  
            }  
        });  
    }  
}   
     

</script>
</html>