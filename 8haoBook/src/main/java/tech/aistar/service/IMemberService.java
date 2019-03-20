package tech.aistar.service;

import tech.aistar.entity.Member;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public interface IMemberService {
    void save (Member member);
    Member findByMemname(String memanme);
}
