package tech.aistar.dao;

import org.junit.Test;
import tech.aistar.dao.impl.MemberDaoImpl;
import tech.aistar.entity.Member;

/**
 * Created by Administrator on 2019/1/22 0022.
 */
public class TestMemberDao {
    private  IMemberDao memberDao = new MemberDaoImpl();

    @Test
   public void testsave(){
        Member member = new Member("kirito","kirito",1);
        Member seller = new Member("admin","admin",0);
        memberDao.save(member);
        memberDao.save(seller);
    }
    @Test
    public  void  testfind()
    {
       Member mem = memberDao.findByMemname("kirito");
        System.out.println(mem.getIdentify()==1);
    }

}
