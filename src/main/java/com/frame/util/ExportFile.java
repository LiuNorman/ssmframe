package com.frame.util;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFComment;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.springframework.stereotype.Component;

import com.frame.base.entity.OrderInfo;

/**
 * 利用开源组件POI3.0.2动态导出EXCEL文档 转载时请保留以下信息，注明出处！
 * 
 * @author leno
 * @version v1.0
 * @param <T>
 * 应用泛型，代表任意一个符合javabean风格的类
 * 注意这里为了简单起见，boolean型的属性xxx的get器方式为getXxx(),而不是isXxx()
 *  byte[]表jpg格式的图片数据
 */
@Component
public class ExportFile<T>{

  public static void main(String[] args) {
    
  }
  
  
  /**
   * 导出excel表格
   * Map<String,String> properties,
   * list 到处数据 
   */
  public  HSSFWorkbook exportExcel(String []excelHead,  List<String> properties,List<T> list) { 
      // 
      HSSFWorkbook workBook = new HSSFWorkbook();    
      HSSFSheet sheet = workBook.createSheet("债债通平台");    
      HSSFRow row = sheet.createRow((int) 0);    
      HSSFCellStyle style = workBook.createCellStyle();    
      style.setAlignment(HSSFCellStyle.ALIGN_CENTER);    
      //Set<String> propertie = properties.keySet();
      HSSFFont font = workBook.createFont();
      font.setColor(HSSFColor.VIOLET.index);
      font.setFontHeightInPoints((short) 12);
      font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
      // 把字体应用到当前的样式
      style.setFont(font);
      
      // 表头
      for (int i = 0;i<excelHead.length;i++ ){    
          HSSFCell cell = row.createCell(i);    
          cell.setCellValue(excelHead[i]);    
          cell.setCellStyle(style);    
          sheet.autoSizeColumn(i);    
      }    
  
       // 内容
      /*float avg = list.size() / 20f;
      int count = 1;
      for (int j = 0; j < list.size(); j++) {
          T obj = list.get(j);
          Class classType = obj.getClass();
          int index = 0;
          row = sheet.createRow(j + 1);    
          
          for (Iterator<String> pro = propertie.iterator(); pro.hasNext();) {
            
              String propertistKey = pro.next();
              String firstLetter = propertistKey.substring(0, 1).toUpperCase();
             
              // 获得和属性对应的getXXX()方法的名字
              String getMethodName = "get" + firstLetter+ propertistKey.substring(1);
              
              // 获得和属性对应的getXXX()方法
              Method getMethod;
              Object value = null;
              try {
                getMethod = classType.getMethod(getMethodName,new Class[] {});
                // 调用原对象的getXXX()方法
                value = getMethod.invoke(obj, new Object[] {});
                
              } catch (NoSuchMethodException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
              } catch (SecurityException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
              } catch (IllegalAccessException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
              } catch (IllegalArgumentException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
              } catch (InvocationTargetException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
              }
              HSSFCell cell = row.createCell(index++);
              cell.setCellValue(value.toString());
          }
          if (j > avg * count) {
              count++;
              System.out.print("I");
          }
          if (count == 20) {
              System.out.print("I100%");
              count++;
          }
      }*/
      
      // 遍历集合数据，产生数据行
      Iterator<T> iterator = list.iterator();
      int index = 0;
      while (iterator.hasNext()) {
        
        index++;
        
        row = sheet.createRow(index);
        row.setHeightInPoints(20);
        T[] t = (T[]) iterator.next();
        
        // 利用反射，根据javabean属性的先后顺序，动态调用getXxx()方法得到属性值
       /* Field[] fields = t[0].getClass().getDeclaredFields();
        for (short i = 0; i < fields.length; i++) {*/
        int col=0;
        // 设置序号
        HSSFCell cell00 = row.createCell(col);
        sheet.setColumnWidth(col, (short) (35.7*100));
        cell00.setCellValue(index);
        
        for (Iterator<String> pro = properties.iterator(); pro.hasNext();) {
          
          col++;
          
          HSSFCell cell = row.createCell(col);
          
          cell.setCellStyle(style);
          
          //Field field = fields[i];
          
          String fieldName =pro.next() ;//field.getName();
          
          String getMethodName = "get" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
          
          try {
           
            Class classType = t[0].getClass();
            Object value = null ;
            Method getMethod ;
            getMethod = classType.getMethod(getMethodName, new Class[] {});
           
            
           
            value = getMethod.invoke(t[0], new Object[] {});
            
            
            
            // 判断值的类型后进行强制类型转换
            String excelText = null;
            
            if(value != null && value!="null"){
            
              if (value instanceof Integer) {
                
                //自由资金类型
                if(fieldName.equals("abstructFreemoneyType")){
                  
                  if(value.equals("0")){
                    excelText="平台充值";
                  } else if(value.equals(1)){
                    excelText="提现";
                    
                  } else if(value.equals(2)){
                    excelText="业绩分成存入";
                    
                  } else if(value.equals(3)){
                    excelText="服务费支出";
                    
                  } else if(value.equals(4)){
                    excelText="升级费存入";
                    
                  } else if(value.equals(5)){
                    excelText="升级费支出";
                    
                  } else if(value.equals(6)){
                    excelText="链首支付";
                    
                  } else if(value.equals(7)){
                    excelText="链中众筹支出";
                    
                  } else if(value.equals(8)){
                    excelText="链尾收款存入";
                    
                  } else if(value.equals(9)){
                    excelText="违约金支出";
                    
                  } else if(value.equals(10)){
                    excelText="线下现金";
                    
                  } else if(value.equals(11)){
                    excelText="线下银行转账";
                    
                  } else if(value.equals(12)){
                    excelText="资金收款";
                    
                  } else if(value.equals(13)){
                    excelText="资金付款";
                    
                  } else if(value.equals(14)){
                    excelText="服务费退款";
                    
                  } else if(value.equals(15)){
                    excelText="众筹退款";
                    
                  } else if(value.equals(16)){
                    excelText="链首付款退款";
                    
                  }
                  
               
                // 锁定资金类型   
                }else if(fieldName.equals("abstructRevenueLockedType")){
                 
                  if(value.equals(0)){
                    excelText="业绩分成存入锁定";
                    
                  }else if(value.equals(1)){
                    excelText="业绩分成存入解锁";
                    
                  }else if(value.equals(2)){
                    excelText="升级费存入锁定";
                    
                  }else if(value.equals(3)){
                    excelText="升级费存入解锁";
                    
                  }
                  
                }else{
                 
                    excelText=(String) value;
                }
              }else if (value instanceof Boolean) {
                
                  boolean bValue = (Boolean) value;
                  
                  excelText = "0";
                  if (!bValue) {
                    excelText = "1";
                  }
                
                
              } else if (value instanceof Date) {
                
                Date date = (Date) value;
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                excelText = sdf.format(date);
              } else if (value instanceof byte[]) {
                
                // 有图片时，设置行高为60px;
                row.setHeightInPoints(60);
                // 设置图片所在列宽度为80px,注意这里单位的一个换算
                sheet.setColumnWidth(col, (short) (37.5*200));
                // sheet.autoSizeColumn(i);
                byte[] bsValue = (byte[]) value;
                HSSFClientAnchor anchor = new HSSFClientAnchor(0, 0, 1023, 255, (short) 6, index, (short) 6, index);
                //anchor.setAnchorType(2);
                //patriarch.createPicture(anchor, workbook.addPicture(bsValue, HSSFWorkbook.PICTURE_TYPE_JPEG));
                
                //订单
              } else if(value instanceof OrderInfo){
                
                excelText=((OrderInfo) value).getOrderId()+"";
                
              }else {
              // 其它数据类型都当作字符串简单处理
                excelText = value.toString();
              }
              
              
              // 如果不是图片数据，就利用正则表达式判断textValue是否全部由数字组成
              if (excelText != null) {
                
                Pattern p = Pattern.compile("^//d+(//.//d+)?$");
                Matcher matcher = p.matcher(excelText);
                if (matcher.matches() && !excelText.equals("0") && !excelText.equals("0.0")) {
                 
                  // 是数字当作double处理
                  sheet.setColumnWidth(col, (short) (35.7 * 200));
                  cell.setCellValue(Double.parseDouble(excelText));
                } else {
                  if( excelText.equals("0") || excelText.equals("0.0")){
                    excelText="";
                  }
                  HSSFRichTextString richString = new HSSFRichTextString(excelText);
                  HSSFFont font3 = workBook.createFont();
                 
                  sheet.setColumnWidth(col, (short) (35.7*200));
                  font3.setColor(HSSFColor.BLUE.index);
                  richString.applyFont(font3);
                  cell.setCellValue(richString);
                  
                }
              }
            }
          } catch (SecurityException e) {
            e.printStackTrace();
          } catch (NoSuchMethodException e) {
            e.printStackTrace();
          } catch (IllegalArgumentException e) {
            e.printStackTrace();
          } catch (IllegalAccessException e) {
            e.printStackTrace();
          } catch (InvocationTargetException e) {
            e.printStackTrace();
          } finally {
            // 清理资源
          }
        }
      }
      
      return workBook;    
      
  } 
  
  
  
  /**
   * 这是一个通用的方法，利用了JAVA的反射机制，可以将放置在JAVA集合中并且符号一定条件的数据以EXCEL 的形式输出到指定IO设备上
   * 
   * @param title  表格标题名
   * @param headers  表格属性列名数组
   * @param dataset 需要显示的数据集合,集合中一定要放置符合javabean风格的类的对象。此方法支持的
   * javabean属性的数据类型有基本数据类型及String,Date,byte[](图片数据)
   * @param out 与输出设备关联的流对象，可以将EXCEL文档导出到本地文件或者网络中
   * @param pattern  如果有时间数据，设定输出格式。默认为"yyy-MM-dd"
   */
  @SuppressWarnings("unchecked")
  public void exportExcel(String title, String[] headers,Collection<T> dataset, OutputStream out, String pattern) {
   
    // 声明一个工作薄
    HSSFWorkbook workbook = new HSSFWorkbook();
    // 生成一个表格
    HSSFSheet sheet = workbook.createSheet(title);
    // 设置表格默认列宽度为15个字节
    sheet.setDefaultColumnWidth((short) 15);
    // 生成一个样式
    HSSFCellStyle style = workbook.createCellStyle();
    // 设置这些样式
    style.setFillForegroundColor(HSSFColor.SKY_BLUE.index);
    style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
    style.setBorderBottom(HSSFCellStyle.BORDER_THIN);
    style.setBorderLeft(HSSFCellStyle.BORDER_THIN);
    style.setBorderRight(HSSFCellStyle.BORDER_THIN);
    style.setBorderTop(HSSFCellStyle.BORDER_THIN);
    style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
    // 生成一个字体
    HSSFFont font = workbook.createFont();
    font.setColor(HSSFColor.VIOLET.index);
    font.setFontHeightInPoints((short) 12);
    font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
    // 把字体应用到当前的样式
    style.setFont(font);
    // 生成并设置另一个样式
    HSSFCellStyle style2 = workbook.createCellStyle();
    style2.setFillForegroundColor(HSSFColor.LIGHT_YELLOW.index);
    style2.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
    style2.setBorderBottom(HSSFCellStyle.BORDER_THIN);
    style2.setBorderLeft(HSSFCellStyle.BORDER_THIN);
    style2.setBorderRight(HSSFCellStyle.BORDER_THIN);
    style2.setBorderTop(HSSFCellStyle.BORDER_THIN);
    style2.setAlignment(HSSFCellStyle.ALIGN_CENTER);
    style2.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
    // 生成另一个字体
    HSSFFont font2 = workbook.createFont();
    font2.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL);
    // 把字体应用到当前的样式
    style2.setFont(font2);
    // 声明一个画图的顶级管理器
    HSSFPatriarch patriarch = sheet.createDrawingPatriarch();
    // 定义注释的大小和位置,详见文档
    HSSFComment comment = patriarch.createComment(new HSSFClientAnchor(0, 0, 0, 0, (short) 4, 2, (short) 6, 5));
    
    // 设置注释内容
    comment.setString(new HSSFRichTextString("可以在POI中添加注释！"));
    
    // 设置注释作者，当鼠标移动到单元格上是可以在状态栏中看到该内容.
    comment.setAuthor("leno");
    // 产生表格标题行
    HSSFRow row = sheet.createRow(0);
   
    for (short i = 0; i < headers.length; i++) {
      HSSFCell cell = row.createCell(i);
      cell.setCellStyle(style);
      HSSFRichTextString text = new HSSFRichTextString(headers[i]);
      cell.setCellValue(text);
    }
   
    // 遍历集合数据，产生数据行
    Iterator<T> it = dataset.iterator();
    int index = 0;
    while (it.hasNext()) {
      index++;
      
      row = sheet.createRow(index);
      T t = (T) it.next();
      
      // 利用反射，根据javabean属性的先后顺序，动态调用getXxx()方法得到属性值
      Field[] fields = t.getClass().getDeclaredFields();
      
      for (short i = 0; i < fields.length; i++) {
        HSSFCell cell = row.createCell(i);
        cell.setCellStyle(style2);
        Field field = fields[i];
        String fieldName = field.getName();
        String getMethodName = "get" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
        try {
         
          Class tCls = t.getClass();
          Method getMethod = tCls.getMethod(getMethodName, new Class[] {});
          Object value = getMethod.invoke(t, new Object[] {});
          // 判断值的类型后进行强制类型转换
          String textValue = null;
         
          
          if (value instanceof Boolean) {
            boolean bValue = (Boolean) value;
            textValue = "男";
            if (!bValue) {
              textValue = "女";
            }
          } else if (value instanceof Date) {
            
            Date date = (Date) value;
            SimpleDateFormat sdf = new SimpleDateFormat(pattern);
            textValue = sdf.format(date);
          } else if (value instanceof byte[]) {
            
            // 有图片时，设置行高为60px;
            row.setHeightInPoints(60);
            // 设置图片所在列宽度为80px,注意这里单位的一个换算
            sheet.setColumnWidth(i, (short) (35.7 * 80));
            // sheet.autoSizeColumn(i);
            byte[] bsValue = (byte[]) value;
            HSSFClientAnchor anchor = new HSSFClientAnchor(0, 0, 1023, 255, (short) 6, index, (short) 6, index);
            //anchor.setAnchorType(2);
            patriarch.createPicture(anchor, workbook.addPicture(bsValue, HSSFWorkbook.PICTURE_TYPE_JPEG));
          } else {
            // 其它数据类型都当作字符串简单处理
            textValue = value.toString();
          }
          
          
          // 如果不是图片数据，就利用正则表达式判断textValue是否全部由数字组成
          if (textValue != null) {
            
            Pattern p = Pattern.compile("^//d+(//.//d+)?$");
            Matcher matcher = p.matcher(textValue);
            if (matcher.matches()) {
              // 是数字当作double处理
              cell.setCellValue(Double.parseDouble(textValue));
            } else {
              HSSFRichTextString richString = new HSSFRichTextString(
                  textValue);
              HSSFFont font3 = workbook.createFont();
              font3.setColor(HSSFColor.BLUE.index);
              richString.applyFont(font3);
              cell.setCellValue(richString);
            }
          }
        } catch (SecurityException e) {
          e.printStackTrace();
        } catch (NoSuchMethodException e) {
          e.printStackTrace();
        } catch (IllegalArgumentException e) {
          e.printStackTrace();
        } catch (IllegalAccessException e) {
          e.printStackTrace();
        } catch (InvocationTargetException e) {
          e.printStackTrace();
        } finally {
          // 清理资源
        }
      }
    }
    try {
      workbook.write(out);
    } catch (IOException e) {
      e.printStackTrace();
    }
  }

 
  
    
   
    /**
     * 对象数据转换
     * 
     */
    public Object objectToProperties(){
      
       return null;
    }
}