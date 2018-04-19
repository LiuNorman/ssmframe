package com.function.pay.alipay.util;

import com.function.pay.alipay.config.AlipayConfig;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* *
 *类名：AlipayFunction
 *功能：支付宝接口公用函数类
 *详细：该类是请求、通知返回两个文件所调用的公用函数核心处理文件，不需要修改
 *版本：3.3
 */
public class AlipayCore {

    /**
     * 除去数组中的空值和签名参数
     *
     * @param sArray 签名参数组
     * @return 去掉空值与签名参数后的新签名参数组
     */
    public static Map<String, String> paraFilter(Map<String, String> sArray) {

        Map<String, String> result = new HashMap<String, String>();

        if (sArray == null || sArray.size() <= 0) {
            return result;
        }

        for (String key : sArray.keySet()) {
            String value = sArray.get(key);
            if (value == null || value.equals("") || key.equalsIgnoreCase("sign")
                    || key.equalsIgnoreCase("sign_type")) {
                continue;
            }
            result.put(key, value);
        }

        return result;
    }


    /**
     * 把数组所有元素排序，并按照“参数=参数值”的模式用“&”字符拼接成字符串
     *
     * @param params 需要排序并参与字符拼接的参数组
     * @return 拼接后字符串
     */
    public static String createLinkString(Map<String, String> params) {

        List<String> keys = new ArrayList<String>(params.keySet());
        Collections.sort(keys);

        String prestr = "";

        for (int i = 0; i < keys.size(); i++) {
            String key = keys.get(i);
            String value = params.get(key);

            if (i == keys.size() - 1) {//拼接时，不包括最后一个&字符
                prestr = prestr + key + "=" + value;
            } else {
                prestr = prestr + key + "=" + value + "&";
            }
        }
        return prestr;
    }


    public static String createLinkStringNoSort(Map<String, String> params) {
        List<String> keys = new ArrayList<String>();
        keys.add("service");
        keys.add("v");
        keys.add("sec_id");
        keys.add("notify_data");
        String prestr = "";
        for (String key : keys) {
            prestr = prestr + key + "=" + (String) params.get(key) + "&";
        }
        prestr = prestr.substring(0, prestr.length() - 1);
        return prestr;
    }

    public static String createLinkStringNoSort1(Map<String, String> params) {
        Map<String, String> sParaSort = new HashMap<String, String>();
        sParaSort.put("service", (String) params.get("service"));
        sParaSort.put("v", (String) params.get("v"));
        sParaSort.put("sec_id", (String) params.get("sec_id"));
        sParaSort.put("notify_data", (String) params.get("notify_data"));

        String prestr = "";
        for (String key : sParaSort.keySet()) {
            prestr = prestr + key + "=" + (String) sParaSort.get(key) + "&";
        }
        prestr = prestr.substring(0, prestr.length() - 1);

        return prestr;
    }

    public static void logResult(AlipayConfig config, String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(config.getLog_path());
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();

            if (writer != null)
                try {
                    writer.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
        } finally {
            if (writer != null)
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
        }
    }
}


 
 
 