package com.daishuhua.mvc.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by shuhuadai on 2017/3/24.
 */
@Entity
@Table(name = "t_sys_persistent_login")
public class PersistentLogin implements Serializable {

    @Id
    private String series;

    @Column(name = "user_name", nullable = false)
    private String userName;

    @Column(name = "token", unique = true, nullable = false)
    private String token;

    @Temporal(TemporalType.TIMESTAMP)
    private Date lastUsed;

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Date getLastUsed() {
        return lastUsed;
    }

    public void setLastUsed(Date lastUsed) {
        this.lastUsed = lastUsed;
    }
}
