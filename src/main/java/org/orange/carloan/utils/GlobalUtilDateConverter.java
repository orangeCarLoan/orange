package org.orange.carloan.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;
import org.springframework.util.StringUtils;

public class GlobalUtilDateConverter implements Converter<String, Date> {

	@Override//重写convert()转换方法
    public Date convert(String text) {
        // TODO Auto-generated method stub
        Date date = null;
        SimpleDateFormat sdf = null;
        if(StringUtils.hasLength(text)) {
            try {
                int lenth = text.length();
                if(lenth == 10) {
                    sdf = new SimpleDateFormat("yyyy-MM-dd");
                }else {
                    sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
                }
                //如果字符串是yyyy/MM/dd格式，则将它替换为yyyy-MM-dd格式
                text=text.replaceAll("/", "-");
                date = sdf.parse(text);//将字符串转换为date
            } catch (Exception e) {
                // TODO: handle exception
                e.printStackTrace();
            }
        }
        return date;
    }

}
