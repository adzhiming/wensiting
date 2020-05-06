<?php /*a:5:{s:60:"/mnt/www/wst/app/admin/view/sms/sms_template_apply/index.php";i:1578455686;s:48:"/mnt/www/wst/app/admin/view/public/container.php";i:1586535509;s:49:"/mnt/www/wst/app/admin/view/public/frame_head.php";i:1586535509;s:44:"/mnt/www/wst/app/admin/view/public/style.php";i:1586535509;s:51:"/mnt/www/wst/app/admin/view/public/frame_footer.php";i:1586535509;}*/ ?>
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
                                    <select name="status">
                                        <option value="">状态</option>
                                        <option value="1">正常</option>
                                        <option value="0">锁定</option>
                                    </select>
                                </div>
                            </div>
                            <div class="layui-inline">
                                <label class="layui-form-label">模板名称</label>
                                <div class="layui-input-block">
                                    <input type="text" name="title" class="layui-input" placeholder="请输入模板名称">
                                </div>
                            </div>
                            <div class="layui-inline">
                                <div class="layui-input-inline">
                                    <button class="layui-btn layui-btn-sm layui-btn-normal" lay-submit="search" lay-filter="search">
                                        <i class="layui-icon layui-icon-search"></i>搜索</button>
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
                    <div class="layui-btn-container">
                        <button type="button" class="layui-btn layui-btn-sm" onclick="$eb.createModalFrame(this.innerText,'<?php echo Url('create'); ?>')">添加模板</button>
                    </div>
                    <table class="layui-hide" id="List" lay-filter="List"></table>
                    <script type="text/html" id="status">
                        {{# if(d.status == 1){ }}可用
                        {{#  }else if(d.status == 0){ }}待审核
                        {{#  }else if(d.status == 2){ }}禁用
                        {{#  }else{ }}
                        审核未通过<br>
                        {{ d.mark }}
                        {{#  }; }}
                    </script>
                    <script type="text/html" id="type">
                        {{#  if(d.type == 1){ }}验证码
                        {{#  }else if(d.type == 2){ }}通知
                        {{#  }else if(d.type == 3){ }}推广
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
            {field: 'id', title: 'ID', sort: true,event:'id',width:'6%',align:'center'},
            {field: 'templateid', title: '模板ID',align:'center',width:'6%'},
            {field: 'title', title: '模板名称',align:'center',width:'12%'},
            {field: 'content', title: '模板内容',align:'center'},
            {field: 'type', title: '模板类型',templet:'#type',align:'center',width:'6%'},
            {field: 'status', title: '模板状态',templet:'#status',align:'center',width:'6%'},
            {field: 'add_time', title: '添加时间',align:'center',width:'10%'}
        ];
    });
    //查询
    layList.search('search',function(where){
        layList.reload(where);
    });
</script>


</div>
</body>
</html>
