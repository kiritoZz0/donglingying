package tech.aistar.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
@Entity
@Table(name = "tbl_book")
public class Book implements Serializable{

    private Integer id;

    private String bookName;

    private double price;

    private String author;

    private String publisHouse;//出版社

    //import java.util.Date
    private Date createDate;//上架时间

    private String imgUrl;//图书的路径

    public Book(){

    }


    //对象之间的关系
    //采取的是单向关联
    //多本图书属于一个类型
    private BookType bookType;

    public Book(String bookName, double price, String author, String publisHouse, Date createDate, String imgUrl) {
        this.bookName = bookName;
        this.price = price;
        this.author = author;
        this.publisHouse = publisHouse;
        this.createDate = createDate;
        this.imgUrl = imgUrl;
    }

    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisHouse() {
        return publisHouse;
    }

    public void setPublisHouse(String publisHouse) {
        this.publisHouse = publisHouse;
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

    @ManyToOne
    public BookType getBookType() {
        return bookType;
    }

    public void setBookType(BookType bookType) {
        this.bookType = bookType;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Book{");
        sb.append("id=").append(id);
        sb.append(", bookName='").append(bookName).append('\'');
        sb.append(", price=").append(price);
        sb.append(", author='").append(author).append('\'');
        sb.append(", publisHouse='").append(publisHouse).append('\'');
        sb.append(", createDate=").append(createDate);
        sb.append(", imgUrl='").append(imgUrl).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
