package sm.pojo;

import java.util.Date;

public class JqiPic {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column jqi_pic.pic_id
     *
     * @mbggenerated
     */
    private Integer picId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column jqi_pic.pic_url
     *
     * @mbggenerated
     */
    private String picUrl;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column jqi_pic.pic_position
     *
     * @mbggenerated
     */
    private String picPosition;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column jqi_pic.menu_id
     *
     * @mbggenerated
     */
    private Integer menuId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column jqi_pic.pic_update_date
     *
     * @mbggenerated
     */
    private Date picUpdateDate;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jqi_pic.pic_id
     *
     * @return the value of jqi_pic.pic_id
     *
     * @mbggenerated
     */
    public Integer getPicId() {
        return picId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jqi_pic.pic_id
     *
     * @param picId the value for jqi_pic.pic_id
     *
     * @mbggenerated
     */
    public void setPicId(Integer picId) {
        this.picId = picId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jqi_pic.pic_url
     *
     * @return the value of jqi_pic.pic_url
     *
     * @mbggenerated
     */
    public String getPicUrl() {
        return picUrl;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jqi_pic.pic_url
     *
     * @param picUrl the value for jqi_pic.pic_url
     *
     * @mbggenerated
     */
    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl == null ? null : picUrl.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jqi_pic.pic_position
     *
     * @return the value of jqi_pic.pic_position
     *
     * @mbggenerated
     */
    public String getPicPosition() {
        return picPosition;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jqi_pic.pic_position
     *
     * @param picPosition the value for jqi_pic.pic_position
     *
     * @mbggenerated
     */
    public void setPicPosition(String picPosition) {
        this.picPosition = picPosition == null ? null : picPosition.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jqi_pic.menu_id
     *
     * @return the value of jqi_pic.menu_id
     *
     * @mbggenerated
     */
    public Integer getMenuId() {
        return menuId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jqi_pic.menu_id
     *
     * @param menuId the value for jqi_pic.menu_id
     *
     * @mbggenerated
     */
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column jqi_pic.pic_update_date
     *
     * @return the value of jqi_pic.pic_update_date
     *
     * @mbggenerated
     */
    public Date getPicUpdateDate() {
        return picUpdateDate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column jqi_pic.pic_update_date
     *
     * @param picUpdateDate the value for jqi_pic.pic_update_date
     *
     * @mbggenerated
     */
    public void setPicUpdateDate(Date picUpdateDate) {
        this.picUpdateDate = picUpdateDate;
    }
}