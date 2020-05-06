<?php

namespace crmeb\services;
use app\admin\model\system\SystemConfig as ConfigModel;
use app\admin\model\routine\RoutineTemplate;
/**
 * 短信服务
 * Class SMSService
 * @package crmeb\services
 */
class SMSService
{

    // 短信账号
    private static $SMSAccount;

    // 短信token
    private static $SMSToken;

    public static $status;

    // 短信请求地址
    private static $SMSUrl = 'https://sms.crmeb.net/api/';

    //短信支付回调地址
    private static $payNotify;
    //验证码
    const VERIFICATION_CODE = 518076;
    //支付成功
    const PAY_SUCCESS_CODE = 520268;
    //发货提醒
    const DELIVER_GOODS_CODE = 520269;
    //确认收货提醒
    const TAKE_DELIVERY_CODE = 520271;
    //管理员下单提醒
    const ADMIN_PLACE_ORDER_CODE = 520272;
    //管理员退货提醒
    const ADMIN_RETURN_GOODS_CODE = 520274;
    //管理员支付成功提醒
    const ADMIN_PAY_SUCCESS_CODE = 520273;
    //管理员确认收货
    const ADMIN_TAKE_DELIVERY_CODE = 520422;

    public function __construct()
    {
        self::$status = true;
    }

    public static function getConstants($code = '')
    {
        $oClass = new \ReflectionClass(__CLASS__);
        $stants = $oClass->getConstants();
        if ($code) return isset($stants[$code]) ? $stants[$code] : '';
        else return $stants;
    }

    private static function auto()
    {
        $sms = ConfigModel::where('config_tab_id',18)->select()->toArray();
        self::$SMSAccount = str_replace('"','', $sms[0]['value']);
        self::$SMSToken = str_replace('"','', $sms[1]['value']);
        self::$payNotify = sysConfig('site_url') . '/api/sms/pay/notify';
    }

    /**
     * 验证码接口
     * @return string
     */
    public static function code()
    {
        return self::$SMSUrl . 'sms/captcha';
    }


    /**
     * 短信注册
     * @param $account
     * @param $password
     * @param $url
     * @param $phone
     * @param $code
     * @param $sign
     * @return mixed
     */
    public static function register($account, $password, $url, $phone, $code, $sign)
    {
        self::auto();
        $data['account'] = $account;
        $data['password'] = $password;
        $data['url'] = $url;
        $data['phone'] = $phone;
        $data['sign'] = $sign;
        $data['code'] = $code;
        return json_decode(HttpService::postRequest(self::$SMSUrl . 'sms/register', $data), true);
    }

    /**
     * 公共短信模板列表
     * @param array $data
     * @return mixed
     */
    public static function publictemp(array $data)
    {
        self::auto();
        $data['account'] = self::$SMSAccount;
        $data['token'] = self::$SMSToken;
        return json_decode(HttpService::postRequest(self::$SMSUrl . 'sms/publictemp', $data), true);
    }

    /**
     * 公共短信模板添加
     * @param $id
     * @param $tempId
     * @return mixed
     */
    public static function use($id, $tempId)
    {
        self::auto();
        $data['account'] = str_replace('"','', self::$SMSAccount);
        $data['token'] = str_replace('"', '',self::$SMSToken);
        $data['id'] = $id;
        $data['tempId'] = $tempId;
        return json_decode(HttpService::postRequest(self::$SMSUrl . 'sms/use', $data), true);
    }

    /**
     * 发送短信
     * @param $phone
     * @param $template
     * @param $param
     * @return bool|string
     */
    public static function send($phone, $template, array $param)
    {
          $ret = [];
          self::auto();
          $teModel = new RoutineTemplate();
          $content =  $teModel->where('tempid',$template)->find()['content'];
          foreach($param as $key => $value) {
              $content = str_replace('{$'."$key".'}',$value,$content);
          }
          $statusStr = array(
            "0" => "短信发送成功",
            "-1" => "参数不全",
            "-2" => "服务器空间不支持,请确认支持curl或者fsocket，联系您的空间商解决或者更换空间！",
            "30" => "密码错误",
            "40" => "账号不存在",
            "41" => "余额不足",
            "42" => "帐户已过期",
            "43" => "IP地址限制",
            "50" => "内容含有敏感词"
        );
         $smsapi = "http://api.smsbao.com/";
         $user = self::$SMSAccount; //短信平台帐号
         $pass = md5(self::$SMSToken); //短信平台密码
         $content = $content;//要发送的短信内容
         $phone = $phone;//要发送短信的手机号码
         $sendurl = $smsapi."sms?u=".$user."&p=".$pass."&m=".$phone."&c=".urlencode($content);
         $result = file_get_contents($sendurl) ;
         $ret["status"] = $result;
         $ret["msg"] = $statusStr[$result];
         return $ret;
    }

    /**
     * 账号信息
     * @return mixed
     */
    public static function count()
    {
        self::auto();
        $data['account'] = self::$SMSAccount;
        $data['token'] = self::$SMSToken;
        return json_decode(HttpService::postRequest(self::$SMSUrl . 'sms/userinfo', $data), true);
    }

    /**
     * 支付套餐
     * @param $page
     * @param $limit
     * @return mixed
     */
    public static function meal($page, $limit)
    {
        $data['page'] = $page;
        $data['limit'] = $limit;
        return json_decode(HttpService::getRequest(self::$SMSUrl . 'sms/meal', $data), true);
    }

    /**
     * 支付码
     * @param $payType
     * @param $mealId
     * @param $price
     * @param $attach
     * @return mixed
     */
    public static function pay($payType, $mealId, $price, $attach)
    {
        self::auto();
        $data['uid'] = self::$SMSAccount;
        $data['token'] = self::$SMSToken;
        $data['payType'] = $payType;
        $data['mealId'] = $mealId;
        $data['notify'] = self::$payNotify;
        $data['price'] = $price;
        $data['attach'] = $attach;
        return json_decode(HttpService::postRequest(self::$SMSUrl . 'sms/mealpay', $data), true);
    }

    /**
     * 申请模板消息
     * @param $title
     * @param $content
     * @param $type
     * @return mixed
     */
    public static function apply($title, $content, $type)
    {
        self::auto();
        $data['account'] = self::$SMSAccount;
        $data['token'] = self::$SMSToken;
        $data['title'] = $title;
        $data['content'] = $content;
        $data['type'] = $type;
        return json_decode(HttpService::postRequest(self::$SMSUrl . 'sms/apply', $data), true);
    }

    /**
     * 短信模板列表
     * @param $data
     * @return mixed
     */
    public static function template($data)
    {
        self::auto();
        $data['account'] = self::$SMSAccount;
        $data['token'] = self::$SMSToken;
        return json_decode(HttpService::postRequest(self::$SMSUrl . 'sms/template', $data), true);
    }
}
