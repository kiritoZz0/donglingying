package tech.aistar.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 图书类型...
 */
@Entity
@Table(name = "book_type")
public class BookType implements Serializable{

    //对象标识
    private Integer id;

    //类型名称
    private String typeName;

    //空参构造
    public BookType(){

    }

    public BookType(String typeName){
        this.typeName = typeName;
    }

    /**主键的生成策略...**/
    @Id
    @GeneratedValue
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("BookType{");
        sb.append("id=").append(id);
        sb.append(", typeName='").append(typeName).append('\'');
        sb.append('}');
        return sb.toString();
    }
}
