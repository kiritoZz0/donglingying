package tech.aistar.service;

import org.junit.Test;
import tech.aistar.entity.Member;
import tech.aistar.service.impl.MemberServiceImpl;

/**
 * Created by Administrator on 2019/1/23 0023.
 */
public class TestMenberService {

    @Test
    public void testfind()
    {
        IMemberService memberService = new MemberServiceImpl();
       Member mem= memberService.findByMemname("admin");

        System.out.println(mem.getIdentify());
    }
}
