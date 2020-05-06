# 二开功能记录
##后台添加收款码
```shell
    设置->系统设置->基本配置
    admin/setting.SystemConfig/index.html?tab_id=1&type=0
    系统表增加收款码
    INSERT INTO `crmeb`.`eb_system_config` 
    ( `menu_name`, `type`, `input_type`, `config_tab_id`, `parameter`, `upload_type`, `required`, `width`, `high`, `value`, `info`, `desc`, `sort`, `status`) VALUES 
    ( 'h5_pay_code', 'upload', '', '1', '', '1', '', '0', '0', '\""', '系统收款码', '系统收款码订单收款(80*80)', '0', '1');

    继售比例
     INSERT INTO `crmeb`.`eb_system_config` 
    ( `menu_name`, `type`, `input_type`, `config_tab_id`, `parameter`, `upload_type`, `required`, `width`, `high`, `value`, `info`, `desc`, `sort`, `status`) VALUES 
    ( 'is_sale_rate', 'text', '', '1', '', '1', '', '0', '0', '10', '继售比例', '继续销售的比例百分比 填10为订单价格的10%', '0', '1');
    INSERT INTO `crmeb`.`eb_system_config` 
    ( `menu_name`, `type`, `input_type`, `config_tab_id`, `parameter`, `upload_type`, `required`, `width`, `high`, `value`, `info`, `desc`, `sort`, `status`) VALUES 
    ( 'is_sale_point', 'text', '', '1', '', '1', '', '0', '0', '10', '继售比例分成', '继续销售的比例百分比的分成 填10为订单价格的10%的10%', '0', '1');
    用户表增加收款码
    ALTER TABLE `eb_user` ADD COLUMN `h5_pay_code`  varchar(255) NULL AFTER `login_type`;

    订单增加 标识继续销售商品
    ALTER TABLE `eb_store_order` ADD COLUMN `is_sale`  tinyint(1) NULL DEFAULT 0 COMMENT '是否继售 0否1是 继售比例' AFTER `is_sale`;

    商品表增加 继售用户id
    ALTER TABLE `eb_store_product` ADD COLUMN `uuid`  int(11) NULL DEFAULT 0 COMMENT '继售用户id' AFTER `soure_link`;
    


```

##支付方式
```shell
    添加扫码支付 payh5code
    支付方式有 微信:weixin 余额:yue 线下:offline 扫码支付 payh5code

    订单状态 9为继售商品
    订单状态（-1 : 申请退款 -2 : 退货成功 0：待发货；1：待收货；2：已收货；3：待评价；-1：已退款 9为继售商品 ）
   
```



操作手册
##支付方式
```shell
    01 短信需要配置短信接口
    02 用户一级分销只需要
        在后台 分销->分销配置-> 一级返佣比例 配置即可 （下单分销未测试）
                                二级返佣比例 设置0或不设置
    03 继售订单
        后台配置 设置->系统设置->基础设置 
                                系统收款码  上传平台二维码
                                继售比例    继续销售的比例百分比 填10为订单价格的10%
        商品发布 
        只允许发布没有规格或者一种规格的商品才可以支持继售否则就是普通的扫码付款商品
        未支付取消订单
        后台配置 设置->系统设置->商城配置 普通商品未支付取消订单时间 单位小时
        用户下单或加入购物车 未付款超时删除订单和删除购物车
        操作流程
        （1）用户登陆 -> 下单 -> 扫码付款 -> 联系客服 确认支付 
        （2）订单发货 用户收货 完成订单
        （3）订单未发货 且订单数量为1和没有规格商品的订单可以选择 
             联系客服支付 继售比例 订单商品继售（商品价格按继售比例上浮）
             客服确认后用户订单商品再次出售（此时商品价格为 按继售比例上浮价格【如果继售结算商品价格是否要自动回归；还是后台配置回去；还是就按现在价格销售】）

        订单锁定 下单未支付后锁定加入购物车的不处理
        待续。。。
```

##测试账号
```shell
    测试地址
    http://wst.hanyuit.net/admin/Index/index.html
    账号 admin 密码 123123
    http://wst.hanyuit.net/
    测试账号 13631200958 密码123456
```


test002