package org.soft.base;

import org.soft.base.mapper.MessageDaoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class MessageDaoTest {

    @Autowired
    private MessageDaoMapper mapper;

//    @Test
//    public void issue(){
//        Message message = new Message(0,"放假通知","今年不放假",null,1 , null );
//        boolean b = mapper.messageIssue(message);
//        System.out.println(b);

//    }

//    @Test
//    public void byId(){
//        Message message = mapper.messageById(1);
//        Admin admin = message.getAdmin();
//        System.out.println(admin.getAdminName());
//    }

//    @Test
//    public void testEnum() {
//        String value1 = BaseData.ANNOUNCEMENT_PATH.getValue();
//        System.out.println(value1);
//    }

//    @Test
//    public void testDataEnum() {
//        String strValue1 = Data.HEAD_URL.getValue();
//        System.out.println(strValue1);
//        int intValue = Data.SIZE.getValue();
//        System.out.println(intValue);
//    }
}
