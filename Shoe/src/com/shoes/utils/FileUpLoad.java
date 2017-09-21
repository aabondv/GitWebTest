package com.shoes.utils;

import java.io.File;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FileUpLoad {
	private static final String UPLOAD_DIRECTORY = "upload";// 上传文件存储目录
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
    public static  <T> void upFile(HttpServletRequest request,T t) throws UnsupportedEncodingException{
    	// 检测是否为多媒体上传
        if (!ServletFileUpload.isMultipartContent(request)) {
           /* // 如果不是则停止
            PrintWriter writer = response.getWriter();
            writer.println("Error: 表单必须包含 enctype=multipart/form-data");
            writer.flush();*/
            return;
        }
        request.setCharacterEncoding("utf-8");
     // 配置上传参数
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // 设置临时存储目录
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload = new ServletFileUpload(factory);
        // 设置最大文件上传值
        upload.setFileSizeMax(MAX_FILE_SIZE);
        // 设置最大请求值 (包含文件和表单数据)
        upload.setSizeMax(MAX_REQUEST_SIZE);
        // 中文处理
        upload.setHeaderEncoding("UTF-8"); 
        // 构造临时路径来存储上传的文件
        // 这个路径相对当前应用的目录
        String uploadPath = request.getServletContext().getRealPath("/") + UPLOAD_DIRECTORY;
        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
       
		Class<?> classType = t.getClass();
		List<String> getMethod = new ArrayList<>();
		List<String> setMethod = new ArrayList<>();
		Field fields[] = classType.getDeclaredFields();
		for (Field field : fields) {
			String fieldname = field.getName();
			String firstLetter = fieldname.substring(0,1).toUpperCase();
			String setmethod = "set"+firstLetter+fieldname.substring(1);
			setMethod.add(setmethod);
			String getmethod = null;
			if(field.getType().getName().equals("boolean")){
				getmethod = "is"+firstLetter+fieldname.substring(1);
			}else{
				getmethod = "get"+firstLetter+fieldname.substring(1); 
			}
			getMethod.add(getmethod);
		}
        try {
            // 解析请求的内容提取文件数据
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);
            
            if (formItems != null && formItems.size() > 0) {
                // 迭代表单数据
                for (FileItem item : formItems) {
                    // 处理不在表单中的字段
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        String filePath = uploadPath + File.separator + fileName;
                        File storeFile = new File(filePath);
                        // 在控制台输出文件的上传路径
                        // 保存文件到硬盘
                        item.write(storeFile);
                		for(int j=0;j<fields.length;j++){
                			if(fields[j].getName().equals(item.getFieldName()))
                			{
                				System.out.println(fields[j].getName()+":"+item.getFieldName());
                				Method setmethod = classType.getMethod(setMethod.get(j), new Class[]{fields[j].getType()});
                				setmethod.invoke(t, new Object[]{filePath});
                			}
                		}
                    }else {
						//表单字段
                    	String filedname =item.getFieldName();
                		Object value = item.getString("utf-8");
                    	for(int j=0;j<fields.length;j++){
                    		String temp = fields[j].getName();
                			if(temp.equals(filedname))
                			{
                				if(fields[j].getType().equals(int.class)){
                					value = Integer.parseInt((String) value);
                				}else if(fields[j].getType().equals(long.class)){
                					value = Long.parseLong((String) value);
                				}
                				Method setmethod = classType.getMethod(setMethod.get(j), new Class[]{fields[j].getType()});
                				setmethod.invoke(t, new Object[]{value});
                				break;
                			}
                		}
					}
                }
            }
        } catch (Exception ex) {
           ex.printStackTrace();
        }
    }
}
