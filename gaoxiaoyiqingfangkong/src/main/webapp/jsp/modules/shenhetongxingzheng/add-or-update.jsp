<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑通行证</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">通行证管理</li>
                        <li class="breadcrumb-item active">编辑通行证</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">通行证信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa">
                                        <label>用户</label>
                                        <div>
                                            <select id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>学工号</label>
                                        <input id="yonghuXuegonghao" name="yonghuXuegonghao" class="form-control"
                                               placeholder="学工号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>用户姓名</label>
                                        <input id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="用户姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>性别</label>
                                        <input id="sexValue" name="sexValue" class="form-control"
                                               placeholder="性别" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>身份证号</label>
                                        <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                               placeholder="身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>手机号</label>
                                        <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                               placeholder="手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>照片</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>学院</label>
                                        <input id="yonghuXueyuan" name="yonghuXueyuan" class="form-control"
                                               placeholder="学院" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>专业</label>
                                        <input id="yonghuZhuanye" name="yonghuZhuanye" class="form-control"
                                               placeholder="专业" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>班级</label>
                                        <input id="yonghuBanji" name="yonghuBanji" class="form-control"
                                               placeholder="班级" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>年级</label>
                                        <input id="yonghuNianji" name="yonghuNianji" class="form-control"
                                               placeholder="年级" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                    <div class="form-group col-md-6">
                                        <label>通行区域</label>
                                        <input id="tongxingzhengQuyu" name="tongxingzhengQuyu" class="form-control"
                                               placeholder="通行区域">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>通行状态</label>
                                        <select id="tongxingzhengTypesSelect" name="tongxingzhengTypes" class="form-control">
                                        </select>
                                    </div>
                                    <%--<div class="form-group col-md-6">
                                        <label>时间</label>
                                        <input id="tongxingzhengTime-input" name="tongxingzhengTime" type="text" class="form-control layui-input">
                                    </div>--%>
                                    <div class="form-group  col-md-6">
                                        <label>备注</label>
                                        <input id="youxigonglueContentupload" name="file" type="file">
                                        <script id="youxigonglueContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var youxigonglueContentUe = UE.getEditor('youxigonglueContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="youxigonglueContent" id="youxigonglueContent-input">
                                    </div>
                                        <inset type="hidden" value="0" id="shenheTypesSelect" name="shenheTypes" class="form-control">
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "tongxingzheng";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var tongxingzhengTypesOptions = [];
    var shenheTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var yonghuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#youxigonglueContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('youxigonglueContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
           if($("#yonghuId") !=null){
               var yonghuId = $("#yonghuId").val();
               if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                   alert("学生姓名不能为空");
                   return;
               }
           }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';
            }
            httpJson("tongxingzheng/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addtongxingzheng');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function tongxingzhengTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=tongxingzheng_types", "GET", {}, (res) => {
                if(res.code == 0){
                    tongxingzhengTypesOptions = res.data.list;
                }
            });
        }
        function shenheTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shenhe_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shenheTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationTongxingzhengtypesSelect(){
            var tongxingzhengTypesSelect = document.getElementById('tongxingzhengTypesSelect');
            if(tongxingzhengTypesSelect != null && tongxingzhengTypesOptions != null  && tongxingzhengTypesOptions.length > 0 ){
                for (var i = 0; i < tongxingzhengTypesOptions.length; i++) {
                    tongxingzhengTypesSelect.add(new Option(tongxingzhengTypesOptions[i].indexName,tongxingzhengTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationShenhetypesSelect(){
        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var tongxingzhengTypesSelect = document.getElementById("tongxingzhengTypesSelect");
        if(tongxingzhengTypesSelect != null && tongxingzhengTypesOptions != null  && tongxingzhengTypesOptions.length > 0 ) {
            for (var i = 0; i < tongxingzhengTypesOptions.length; i++) {
                if (tongxingzhengTypesOptions[i].codeIndex == ruleForm.tongxingzhengTypes) {//下拉框value对比,如果一致就赋值汉字
                        tongxingzhengTypesSelect.options[i].selected = true;
                }
            }
        }

        var shenheTypesSelect = document.getElementById("shenheTypesSelect");
        if(shenheTypesSelect != null && shenheTypesOptions != null  && shenheTypesOptions.length > 0 ) {
            for (var i = 0; i < shenheTypesOptions.length; i++) {
                if (shenheTypesOptions[i].codeIndex == ruleForm.shenheTypes) {//下拉框value对比,如果一致就赋值汉字
                        shenheTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.youxigonglueContent != null && ruleForm.youxigonglueContent != 'null' && ruleForm.youxigonglueContent != '' && $("#youxigonglueContentupload").length>0) {

            var youxigonglueContentUeditor = UE.getEditor('youxigonglueContentEditor');
            youxigonglueContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.youxigonglueContent != null){
                    mes = ''+ ruleForm.youxigonglueContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                youxigonglueContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#youxigonglueContentupload").length>0) {
            var youxigonglueContentEditor = UE.getEditor('youxigonglueContentEditor');
            if (youxigonglueContentEditor.hasContents()) {
                $('#youxigonglueContent-input').attr('value', youxigonglueContentEditor.getPlainTxt());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addtongxingzheng');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                yonghuId: "required",
                tongxingzhengQuyu: "required",
                tongxingzhengTypes: "required",
                tongxingzhengTime: "required",
                youxigonglueContent: "required",
                shenheTypes: "required",
            },
            messages: {
                yonghuId: "学生姓名不能为空",
                tongxingzhengQuyu: "通行区域不能为空",
                tongxingzhengTypes: "通行状态不能为空",
                tongxingzhengTime: "时间不能为空",
                youxigonglueContent: "备注不能为空",
                shenheTypes: "审核状态不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addtongxingzheng = window.sessionStorage.getItem("addtongxingzheng");
        if (addtongxingzheng != null && addtongxingzheng != "" && addtongxingzheng != "null") {
            window.sessionStorage.removeItem('addtongxingzheng');
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("tongxingzheng/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#tongxingzhengTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#tongxingzhengQuyu").val(ruleForm.tongxingzhengQuyu);
        $("#tongxingzhengTime-input").val(ruleForm.tongxingzhengTime);
        $("#youxigonglueContent").val(ruleForm.youxigonglueContent);

    }
    <!--  级联表的数据回显  -->
    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuXuegonghao").val(ruleForm.yonghuXuegonghao);
        $("#yonghuName").val(ruleForm.yonghuName);
        $("#sexValue").val(ruleForm.sexValue);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuXueyuan").val(ruleForm.yonghuXueyuan);
        $("#yonghuZhuanye").val(ruleForm.yonghuZhuanye);
        $("#yonghuBanji").val(ruleForm.yonghuBanji);
        $("#yonghuNianji").val(ruleForm.yonghuNianji);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        yonghuShowVideo();
    }


    <!--  级联表的视频  -->

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            tongxingzhengTypesSelect();
            shenheTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationTongxingzhengtypesSelect();
            initializationShenhetypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationyonghuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }else{
            $(".aaaaaa").remove();
            // 查询当前登录账户的信息
            var userId = window.sessionStorage.getItem('userId');
            yonghuSelectOne(userId);
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>