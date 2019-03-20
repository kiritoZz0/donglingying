package tech.aistar.ddl;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.Test;


/**
 * Created by Administrator on 2019/1/23 0023.
 */
public class TestDDL {
    @Test
    public void testDDL(){
        Configuration cfg = new Configuration().configure();
        SchemaExport schemaExport = new SchemaExport(cfg);
        schemaExport.create(true,true);
    }
}
