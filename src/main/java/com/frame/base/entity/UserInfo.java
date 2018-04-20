package com.frame.base.entity;

/**
 * 用户信息实体类
 *
 * @author Norman
 */
public class UserInfo {

    private int id;
    //身份证号码
    private String cardID;
    //用户名
    private String userName;
    //账户
    private String account;
    //密码
    private String password;
    //年龄
    private Integer age;
    private String phone;
    //车牌
    private String plateNumber;
    private String address;
    //角色id
    private String roleId;
    //用户资金账户
    private String userMoney;
    //赚钱
    private String makeMoney;
    //消费
    private String consumption;
    //驾驶证
    private String drivingLicenceImage;
    //有效期
    private String diverValidateTime;
    //身份证照片
    private String cardImage;
    //有效期
    private String cardValidateTime;
    //有效证件id
    private String validitycardID;

    private String createTime;
    private String updateTime;
    private String userStatus;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCardID() {
        return cardID;
    }

    public void setCardID(String cardID) {
        this.cardID = cardID;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPlateNumber() {
        return plateNumber;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }


    public String getUserMoney() {
        return userMoney;
    }

    public void setUserMoney(String userMoney) {
        this.userMoney = userMoney;
    }

    public String getMakeMoney() {
        return makeMoney;
    }

    public void setMakeMoney(String makeMoney) {
        this.makeMoney = makeMoney;
    }

    public String getConsumption() {
        return consumption;
    }

    public void setConsumption(String consumption) {
        this.consumption = consumption;
    }

    public String getDrivingLicenceImage() {
        return drivingLicenceImage;
    }

    public void setDrivingLicenceImage(String drivingLicenceImage) {
        this.drivingLicenceImage = drivingLicenceImage;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getValiditycardID() {
        return validitycardID;
    }

    public void setValiditycardID(String validitycardID) {
        this.validitycardID = validitycardID;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getDiverValidateTime() {
        return diverValidateTime;
    }

    public void setDiverValidateTime(String diverValidateTime) {
        this.diverValidateTime = diverValidateTime;
    }

    public String getCardImage() {
        return cardImage;
    }

    public void setCardImage(String cardImage) {
        this.cardImage = cardImage;
    }

    public String getCardValidateTime() {
        return cardValidateTime;
    }

    public void setCardValidateTime(String cardValidateTime) {
        this.cardValidateTime = cardValidateTime;
    }
}
