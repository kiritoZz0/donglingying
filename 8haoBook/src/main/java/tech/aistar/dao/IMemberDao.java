package tech.aistar.dao;

import tech.aistar.entity.Member;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public interface IMemberDao {
    void save (Member member);
    Member findByMemname(String memanme);
}
