package tech.aistar.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2019/1/24 0024.
 */
@Entity
@Table(name="tbl_ShopCar")
public class ShopCar implements Serializable {
    private Integer id;
    private  Book bookid;
    private  Integer num;
    private Integer flag;

    public  ShopCar(){}
    public ShopCar( Integer num ,Integer flag) {
        this.num = num;
        this.flag =flag;
    }

    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @OneToOne
    public Book getBookid() {
        return bookid;
    }

    public void setBookid(Book bookid) {
        this.bookid = bookid;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }

    @Override
    public String toString() {
        return "ShopCar{" +
                "id=" + id +
                ", bookid=" + bookid +
                ", num=" + num +
                ", flag=" + flag +
                '}';
    }
}
