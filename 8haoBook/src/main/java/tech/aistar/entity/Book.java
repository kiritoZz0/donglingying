package tech.aistar.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
@Entity
@Table(name ="tbl_book")
public class Book implements Serializable {
    private Integer id;
    private String bookname;
    private Double price;
    private Integer num;
    private Integer salegrade;
    private Date createDate;//上架时间
    private String imgUrl;//图书的路径

    public Book() {
    }
    public Book(String bookname,Double price,Integer num,Integer salegrade,Date createDate, String imgUrl){
    this.bookname = bookname;
    this.price = price;
    this.num = num;
    this.salegrade= salegrade;
    this.createDate=createDate;
    this.imgUrl=imgUrl;
    }

    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Integer getSalegrade() {
        return salegrade;
    }

    public void setSalegrade(Integer salegrade) {
        this.salegrade = salegrade;
    }
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }


    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", bookname='" + bookname + '\'' +
                ", price=" + price +
                ", num=" + num +
                ", level=" + salegrade +
                '}';
    }
}
