package tech.aistar.service.impl;

import tech.aistar.dao.IMemberDao;
import tech.aistar.dao.impl.MemberDaoImpl;
import tech.aistar.entity.Member;
import tech.aistar.service.IMemberService;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public class MemberServiceImpl implements IMemberService {

    private IMemberDao memberDao =new MemberDaoImpl();
    @Override
    public void save(Member member) {
         memberDao.save(member);
    }

    @Override
    public Member findByMemname(String memanme) {
        Member member = memberDao.findByMemname(memanme);
        return member;
    }
}
