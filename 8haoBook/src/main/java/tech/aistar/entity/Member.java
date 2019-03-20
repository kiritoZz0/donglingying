package tech.aistar.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
@Entity
@Table(name="tbl_member")
public class Member implements Serializable {
    private Integer id;
    private  String  memname;
    private  String password;
    private Integer identify;

    public  Member(){}

    public Member (String memname,String password,int identify)
    {
        this.memname = memname;
        this.password = password;
        this.identify = identify;
    }

    @Id
    @GeneratedValue
    public Integer getId(){
        return id;
    }
    public void setId(Integer id){
        this.id = id;

    }

    public String getMemname() {
        return memname;
    }

    public void setMemname(String memname) {
        this.memname = memname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getIdentify() {
        return identify;
    }

    public void setIdentify(Integer identify) {
        this.identify = identify;
    }

    @Override
    public String toString() {
        return "Member{" +
                "id=" + id +
                ", memname='" + memname + '\'' +
                ", password='" + password + '\'' +
                ", identify=" + identify +
                '}';
    }
}
