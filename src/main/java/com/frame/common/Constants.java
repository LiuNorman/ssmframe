package com.frame.common;

/**
 * 功能： 常量
 *
 * @author Norman
 * <p>
 * 时间：2016年2月8日
 */
public class Constants {

    /**
     * SessionKey: 用户uuid
     */
    public static final String SESN_USR_UID = "sesnUsrId";

    /**
     * SessionKey: 用户Name
     */
    public static final String SESN_USR_NAME = "sesnUsrName";

    /**
     * SessionKey: 用户帐号
     */
    public static final String SESN_USR_ACOUNT = "sesnUsrACOUNT";

    /**
     * OsCahce Key: 用户角色列表
     */
    public static final String CACHE_USR_ROLES = "cacheUsrRoles:";

    /**
     * OsCahce Key: 非拦截URL的Key
     */
    public static final String ANTI_INTERCEPT_URL = "antiUrl";

    /**
     * OsCahce Key: 需要拦截URL的Key的前缀
     */
    public static final String INTERCEPT_URL_PREX = "interceptUrlPrex:";

    /**
     * 角色数据权限Key的前缀
     */
    public static final String DATA_AUTH_PREX = "DataAuth_";

    /**
     * 码表Key的前缀
     */
    public static final String CODETYPE_PREX = "CodeType_";

    /**
     * 系统参数Key的前缀
     */
    public static final String SYSPARAM_PREX = "SysParam_";

    /**
     * 部门权限控制标示符
     */
    public static final String DATAAUTH_D = "DataAuth_D";

    /**
     * 人员权限控制标示符
     */
    public static final String DATAAUTH_U = "DataAuth_U";

    /**
     * 所属域
     */
    public static final String DOMAIN_NAME = "0";

    public static final int INQUEUE_SIZE = 10;
}
