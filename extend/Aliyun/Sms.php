<?php
namespace Aliyun;
//require('SignatureHelper.php');
include_once('SignatureHelper.php');
//use Aliyun\SignatureHelper;
 
class Sms
{
    public static function requestSmsCode($mobile,$signName='爱来赛',$template='SMS_164375577')
    {
        
        $params = array ();
        $code = self::generate_verify_code(4);
        $accessKeyId = "yyVZJ2khZOIL6JZz";
        $accessKeySecret = "plJ9TZzpDMX1fHuARQrugXRsftWAm6";
        $token = '123f4dc3ffdd769dd95d2ed1a3290911';

        // fixme 必填: 短信接收号码
        $params["PhoneNumbers"] = $mobile;

        // fixme 必填: 短信签名，应严格按"签名名称"填写，请参考: https://dysms.console.aliyun.com/dysms.htm#/develop/sign
        $params["SignName"] = $signName;

        // fixme 必填: 短信模板Code，应严格按"模板CODE"填写, 请参考: https://dysms.console.aliyun.com/dysms.htm#/develop/template
        $params["TemplateCode"] = $template;
        

        // fixme 可选: 设置模板参数, 假如模板中存在变量需要替换则为必填项
        $params['TemplateParam'] = Array (
            "code" => $code,
        );

        // *** 需用户填写部分结束, 以下代码若无必要无需更改 ***
        if(!empty($params["TemplateParam"]) && is_array($params["TemplateParam"])) {
            $params["TemplateParam"] = json_encode($params["TemplateParam"], JSON_UNESCAPED_UNICODE);
        }

        // 初始化SignatureHelper实例用于设置参数，签名以及发送请求
        $helper = new SignatureHelper();

        // 此处可能会抛出异常，注意catch
        try {
            $content = $helper->request(
                $accessKeyId,
                $accessKeySecret,
                "dysmsapi.aliyuncs.com",
                array_merge($params, array(
                    "RegionId" => "cn-hangzhou",
                    "Action" => "SendSms",
                    "Version" => "2017-05-25",
                ))
                // fixme 选填: 启用https
                // ,true
            ); 
        } catch (ClientException $e) {
            echo $e->getErrorMessage() . PHP_EOL;
        } catch (ServerException $e) {
            echo $e->getErrorMessage() . PHP_EOL;
        }
        $rs = (array)$content;
        if ($rs && isset($rs["Code"]) && $rs["Code"]== 'OK'){ 
            return $code;
        } 
        return false;
    }

    public static function verifySmsCode($mobile, $code)
    {
        if (Cache::get('smscode:'.$mobile) == $code) {
            Cache::rm('smscode:'.$mobile);
            return true;
        }
        return false;
    }

    //验证方法
    public static function get_ac($params, $token){
        ksort($params);
        $str = '';
        foreach($params as $key=>$value){
            if($key!='certi_ac') {
                $str.= $value;
            }
        }
        return strtolower(md5($str.strtolower(md5($token))));
    }

    public static function generate_verify_code($num = 4) {
        if(!$num) {
            return false;
        }
        
        $num = intval($num);

        $pool = '0123456789';
        $shuffled = str_shuffle($pool);

        $code = substr($shuffled, 0, $num);

        return $code;
    }

}