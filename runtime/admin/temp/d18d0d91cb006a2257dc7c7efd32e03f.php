<?php /*a:5:{s:57:"/mnt/www/wst/app/admin/view/sms/sms_public_temp/index.php";i:1586535509;s:48:"/mnt/www/wst/app/admin/view/public/container.php";i:1586535509;s:49:"/mnt/www/wst/app/admin/view/public/frame_head.php";i:1586535509;s:44:"/mnt/www/wst/app/admin/view/public/style.php";i:1586535509;s:51:"/mnt/www/wst/app/admin/view/public/frame_footer.php";i:1586535509;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php if(empty($is_layui) || (($is_layui instanceof \think\Collection || $is_layui instanceof \think\Paginator ) && $is_layui->isEmpty())): ?>
    <link href="/system/frame/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <?php endif; ?>
    <link href="/static/plug/layui/css/layui.css" rel="stylesheet">
    <link href="/system/css/layui-admin.css" rel="stylesheet">
    <link href="/system/frame/css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
    <link href="/system/frame/css/animate.min.css" rel="stylesheet">
    <link href="/system/frame/css/style.min.css?v=3.0.0" rel="stylesheet">
    <script src="/system/frame/js/jquery.min.js"></script>
    <script src="/system/frame/js/bootstrap.min.js"></script>
    <script src="/static/plug/layui/layui.all.js"></script>
    <script>
        $eb = parent._mpApi;
        window.controlle="<?php echo strtolower(trim(preg_replace("/[A-Z]/", "_\\0", app('request')->controller()), "_"));?>";
        window.module="<?php echo app('http')->getName();?>";
    </script>



    <title></title>
    
    <!--<script type="text/javascript" src="/static/plug/basket.js"></script>-->
<script type="text/javascript" src="/static/plug/requirejs/require.js"></script>
<?php /*  <script type="text/javascript" src="/static/plug/requirejs/require-basket-load.js"></script>  */ ?>
<script>
    var hostname = location.hostname;
    if(location.port) hostname += ':' + location.port;
    requirejs.config({
        map: {
            '*': {
                'css': '/static/plug/requirejs/require-css.js'
            }
        },
        shim:{
            'iview':{
                deps:['css!iviewcss']
            },
            'layer':{
                deps:['css!layercss']
            }
        },
        baseUrl:'//'+hostname+'/',
        paths: {
            'static':'static',
            'system':'system',
            'vue':'static/plug/vue/dist/vue.min',
            'axios':'static/plug/axios.min',
            'iview':'static/plug/iview/dist/iview.min',
            'iviewcss':'static/plug/iview/dist/styles/iview',
            'lodash':'static/plug/lodash',
            'layer':'static/plug/layer/layer',
            'layercss':'static/plug/layer/theme/default/layer',
            'jquery':'static/plug/jquery/jquery.min',
            'moment':'static/plug/moment',
            'sweetalert':'static/plug/sweetalert2/sweetalert2.all.min',
            'formCreate':'/static/plug/form-create/form-create.min',

        },
        basket: {
            excludes:['system/js/index','system/util/mpVueComponent','system/util/mpVuePackage']
//            excludes:['system/util/mpFormBuilder','system/js/index','system/util/mpVueComponent','system/util/mpVuePackage']
        }
    });
</script>
<script type="text/javascript" src="/system/util/mpFrame.js"></script>
    
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">


<div class="layui-fluid">
    <div class="layui-row layui-col-space15"  id="app">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">搜索条件</div>
                <div class="layui-card-body">
                    <form class="layui-form layui-form-pane" action="">
                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <label class="layui-form-label">模板状态</label>
                                <div class="layui-input-block">
                                    <select name="is_have">
                                        <option value="">状态</option>
                                        <option value="1">有</option>
                                        <option value="0">没有</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--产品列表-->
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">模板列表</div>
                <div class="layui-card-body">
                    <table class="layui-hide" id="List" lay-filter="List"></table>
                    <script type="text/html" id="status">
                        {{# if(d.status == 1){ }}正常
                        {{# }else{}}锁定
                        {{#  }; }}
                    </script>
                    <script type="text/html" id="type">
                        {{#  if(d.type == 1){ }}验证码
                        {{#  }else if(d.type == 2){ }}通知
                        {{#  }else if(d.type == 3){ }}推广
                        {{#  }; }}
                    </script>
                    <script type="text/html" id="is_have">
                        {{#  if(d.is_have === 1){ }}有
                        {{#  }else if(d.is_have === 0){ }}
                        <button class="btn-xs btn btn-block" lay-event="status">添加</button>
                        {{#  }; }}
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/system/js/layuiList.js"></script>



<script>
    //实例化form
    layList.form.render();
    //加载列表
    layList.tableList('List',"<?php echo Url('lst'); ?>",function (){
        return [
            {field: 'id', title: 'ID', sort: true,event:'id',width:'4%',align:'center'},
            {field: 'templateid', title: '模板ID',align:'center',width:'6%'},
            {field: 'title', title: '模板名称',align:'center',width:'10%'},
            {field: 'content', title: '模板内容',align:'center'},
            {field: 'type', title: '模板类型',templet:'#type',align:'center',width:'6%'},
            {field: 'status', title: '模板状态',templet:'#status',align:'center',width:'6%'},
            {field: 'is_have', title: '是否拥有',templet:'#is_have',align:'center',width:'6%'}
        ];
    });
    //查询
    layList.search('search',function(where){
        layList.reload(where);
    });
    //点击事件绑定
    layList.tool(function (event,data,obj) {
        switch (event) {
            case 'status':
                var url = layList.U({c:'sms.smsPublicTemp',a:'status'});
                if(data.is_del) var code = {title:"操作提示",text:"确定恢复产品操作吗？",type:'info',confirm:'是的，恢复该产品'};
                else var code = {title:"操作提示",text:"确定申请添加" + data.templateid +"模板吗？",type:'info',confirm:'是的，我也添加'};
                $eb.$swal('delete',function(){
                    $eb.axios.post(url, {id:data.id,tempId: data.templateid}).then(function(res){
                        if(res.status == 200 && res.data.code == 200) {
                            $eb.$swal('success',res.data.msg);
                        }else
                            return Promise.reject(res.data.msg || '添加失败')
                    }).catch(function(err){
                        $eb.$swal('error',err);
                    });
                },code)
                break;
        }
    })
</script>


</div>
</body>
</html>
