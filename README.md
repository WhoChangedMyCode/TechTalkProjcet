# Tech Talk

**数据库初始化文件: [initialization.sql](./initialization.sql)**

## 效果截图

![Screenshot01.png](screenshot%2FScreenshot01.png)

![Screenshot02.png](screenshot%2FScreenshot02.png)

![Screenshot03.png](screenshot%2FScreenshot03.png)

![Screenshot04.png](screenshot%2FScreenshot04.png)

![Screenshot05.png](screenshot%2FScreenshot05.png)

![Screenshot06.png](screenshot%2FScreenshot06.png)

## 项目结构

```
.
├── README.md
├── screenshot
│   ├── Screenshot01.png
│   ├── Screenshot02.png
│   ├── Screenshot03.png
│   ├── Screenshot04.png
│   ├── Screenshot05.png
│   └── Screenshot06.png
└── ThinkingProject
    ├── ImageUploadPath
    │   ├── announcement
    │   │   └── 4d88b977-f345-42b6-a603-da28ada2f2d4Screenshot from 2023-12-02 23-44-42.png
    │   ├── article
    │   │   └── 1701607504722fe013af2-eafc-428f-a8d8-73e32d059bc1fik2kut529a61.webp
    │   └── avatar
    │       └── 1700806801941bbcd662b-6929-44a5-934c-983301575660Tux.svg
    ├── initialization.sql
    ├── Manager
    │   ├── HELP.md
    │   ├── pom.xml
    │   ├── src
    │   │   ├── main
    │   │   │   ├── java
    │   │   │   │   └── org
    │   │   │   │       └── soft
    │   │   │   │           └── base
    │   │   │   │               ├── config
    │   │   │   │               │   ├── DateConvert.java
    │   │   │   │               │   ├── LoginIntercept.java
    │   │   │   │               │   ├── MvcConfiguration.java
    │   │   │   │               │   └── security
    │   │   │   │               │       ├── PasswordEncrypt.java
    │   │   │   │               │       ├── SecurityConfiguration.java
    │   │   │   │               │       └── UserService.java
    │   │   │   │               ├── ctrl
    │   │   │   │               │   ├── AdminCtrl.java
    │   │   │   │               │   ├── MessageCtrl.java
    │   │   │   │               │   ├── RoleRelationCtrl.java
    │   │   │   │               │   ├── ToPageCtrl.java
    │   │   │   │               │   └── TypeController.java
    │   │   │   │               ├── dao
    │   │   │   │               │   ├── AdminDao.java
    │   │   │   │               │   ├── MessageDao.java
    │   │   │   │               │   ├── RoleDao.java
    │   │   │   │               │   ├── RoleRelationDao.java
    │   │   │   │               │   ├── SplitPageDao.java
    │   │   │   │               │   └── TypeDao.java
    │   │   │   │               ├── enums
    │   │   │   │               │   └── BaseData.java
    │   │   │   │               ├── impl
    │   │   │   │               │   ├── AdminDaoImpl.java
    │   │   │   │               │   ├── MessageDaoImpl.java
    │   │   │   │               │   ├── RoleDaoImpl.java
    │   │   │   │               │   ├── RoleRelationDaoImpl.java
    │   │   │   │               │   ├── SplitDaoImpl.java
    │   │   │   │               │   └── TypeDaoImpl.java
    │   │   │   │               ├── ManagerApplication.java
    │   │   │   │               ├── mapper
    │   │   │   │               │   ├── AdminDaoMapper.java
    │   │   │   │               │   ├── MessageDaoMapper.java
    │   │   │   │               │   ├── RoleDaoMapper.java
    │   │   │   │               │   ├── RoleRelationDaoMapper.java
    │   │   │   │               │   ├── SplitSQL.java
    │   │   │   │               │   ├── SplitUtilsMapper.java
    │   │   │   │               │   └── TypeDaoMapper.java
    │   │   │   │               └── model
    │   │   │   │                   ├── Admin.java
    │   │   │   │                   ├── FileVO.java
    │   │   │   │                   ├── Message.java
    │   │   │   │                   ├── Role.java
    │   │   │   │                   ├── RoleRelation.java
    │   │   │   │                   └── Type.java
    │   │   │   └── resources
    │   │   │       ├── application.properties
    │   │   │       ├── log4j.properties
    │   │   │       ├── static
    │   │   │       │   ├── base
    │   │   │       │   │   └── navigation.html
    │   │   │       │   ├── css
    │   │   │       │   │   ├── bootstrap.min.css
    │   │   │       │   │   └── main.css
    │   │   │       │   ├── image
    │   │   │       │   │   ├── mdo.png
    │   │   │       │   │   └── Tux.svg
    │   │   │       │   └── js
    │   │   │       │       ├── bootstrap.bundle.min.js
    │   │   │       │       ├── bootstrap.min.js
    │   │   │       │       ├── jquery-3.2.1.min.js
    │   │   │       │       ├── jquery-3.6.3.min.js
    │   │   │       │       ├── popper.js
    │   │   │       │       └── wangEditor.min.js
    │   │   │       └── templates
    │   │   │           ├── main
    │   │   │           │   ├── admin
    │   │   │           │   │   ├── adminIssue.html
    │   │   │           │   │   └── share
    │   │   │           │   │       ├── adminHead.html
    │   │   │           │   │       ├── adminLogin.html
    │   │   │           │   │       ├── show.html
    │   │   │           │   │       └── update.html
    │   │   │           │   ├── error.html
    │   │   │           │   ├── index.html
    │   │   │           │   ├── message
    │   │   │           │   │   ├── message.html
    │   │   │           │   │   └── messageIssue.html
    │   │   │           │   ├── role
    │   │   │           │   │   └── authority.html
    │   │   │           │   ├── system.html
    │   │   │           │   └── type
    │   │   │           │       └── typeIssue.html
    │   │   │           └── navigation
    │   │   │               └── navigation.html
    │   │   └── test
    │   │       └── java
    │   │           └── org
    │   │               └── soft
    │   │                   └── base
    │   │                       └── MessageDaoTest.java
    │   └── target
    │       ├── classes
    │       │   ├── application.properties
    │       │   ├── log4j.properties
    │       │   ├── org
    │       │   │   └── soft
    │       │   │       └── base
    │       │   │           ├── config
    │       │   │           │   ├── DateConvert.class
    │       │   │           │   ├── LoginIntercept.class
    │       │   │           │   ├── MvcConfiguration.class
    │       │   │           │   └── security
    │       │   │           │       ├── PasswordEncrypt.class
    │       │   │           │       ├── SecurityConfiguration.class
    │       │   │           │       └── UserService.class
    │       │   │           ├── ctrl
    │       │   │           │   ├── AdminCtrl.class
    │       │   │           │   ├── MessageCtrl.class
    │       │   │           │   ├── RoleRelationCtrl.class
    │       │   │           │   ├── ToPageCtrl.class
    │       │   │           │   └── TypeController.class
    │       │   │           ├── dao
    │       │   │           │   ├── AdminDao.class
    │       │   │           │   ├── MessageDao.class
    │       │   │           │   ├── RoleDao.class
    │       │   │           │   ├── RoleRelationDao.class
    │       │   │           │   ├── SplitPageDao.class
    │       │   │           │   └── TypeDao.class
    │       │   │           ├── enums
    │       │   │           │   └── BaseData.class
    │       │   │           ├── impl
    │       │   │           │   ├── AdminDaoImpl.class
    │       │   │           │   ├── MessageDaoImpl.class
    │       │   │           │   ├── RoleDaoImpl.class
    │       │   │           │   ├── RoleRelationDaoImpl.class
    │       │   │           │   ├── SplitDaoImpl.class
    │       │   │           │   └── TypeDaoImpl.class
    │       │   │           ├── ManagerApplication.class
    │       │   │           ├── mapper
    │       │   │           │   ├── AdminDaoMapper.class
    │       │   │           │   ├── MessageDaoMapper.class
    │       │   │           │   ├── RoleDaoMapper.class
    │       │   │           │   ├── RoleRelationDaoMapper.class
    │       │   │           │   ├── SplitSQL$1.class
    │       │   │           │   ├── SplitSQL.class
    │       │   │           │   ├── SplitUtilsMapper.class
    │       │   │           │   └── TypeDaoMapper.class
    │       │   │           ├── model
    │       │   │           │   ├── Admin.class
    │       │   │           │   ├── FileVO.class
    │       │   │           │   ├── Message.class
    │       │   │           │   ├── Role.class
    │       │   │           │   ├── RoleRelation.class
    │       │   │           │   └── Type.class
    │       │   │           └── ThinkingManageApplication.class
    │       │   ├── static
    │       │   │   ├── base
    │       │   │   │   └── navigation.html
    │       │   │   ├── css
    │       │   │   │   ├── bootstrap.min.css
    │       │   │   │   └── main.css
    │       │   │   ├── image
    │       │   │   │   ├── mdo.png
    │       │   │   │   └── Tux.svg
    │       │   │   └── js
    │       │   │       ├── bootstrap.bundle.min.js
    │       │   │       ├── bootstrap.min.js
    │       │   │       ├── jquery-3.2.1.min.js
    │       │   │       ├── jquery-3.6.3.min.js
    │       │   │       ├── popper.js
    │       │   │       └── wangEditor.min.js
    │       │   └── templates
    │       │       ├── main
    │       │       │   ├── admin
    │       │       │   │   ├── adminIssue.html
    │       │       │   │   └── share
    │       │       │   │       ├── adminHead.html
    │       │       │   │       ├── adminLogin.html
    │       │       │   │       ├── show.html
    │       │       │   │       └── update.html
    │       │       │   ├── error.html
    │       │       │   ├── index.html
    │       │       │   ├── message
    │       │       │   │   ├── message.html
    │       │       │   │   └── messageIssue.html
    │       │       │   ├── role
    │       │       │   │   └── authority.html
    │       │       │   ├── system.html
    │       │       │   └── type
    │       │       │       └── typeIssue.html
    │       │       └── navigation
    │       │           └── navigation.html
    │       ├── generated-sources
    │       │   └── annotations
    │       ├── generated-test-sources
    │       │   └── test-annotations
    │       ├── maven-status
    │       │   └── maven-compiler-plugin
    │       │       └── compile
    │       │           └── default-compile
    │       │               ├── createdFiles.lst
    │       │               └── inputFiles.lst
    │       └── test-classes
    │           └── org
    │               └── soft
    │                   └── base
    │                       └── MessageDaoTest.class
    └── User
        ├── pom.xml
        ├── src
        │   ├── main
        │   │   ├── java
        │   │   │   └── org
        │   │   │       └── soft
        │   │   │           └── base
        │   │   │               ├── configuration
        │   │   │               │   ├── ImagePathConfiguration.java
        │   │   │               │   └── RegisterConfigurer.java
        │   │   │               ├── constant
        │   │   │               │   ├── ImageUtils.java
        │   │   │               │   ├── SplitConstant.java
        │   │   │               │   └── SplitEnum.java
        │   │   │               ├── dao
        │   │   │               │   ├── ArticleDAO.java
        │   │   │               │   ├── HumanDAO.java
        │   │   │               │   ├── Leve1ReplyDAO.java
        │   │   │               │   ├── ReplyDAO.java
        │   │   │               │   ├── SplitDAO.java
        │   │   │               │   └── TypeDAO.java
        │   │   │               ├── impl
        │   │   │               │   ├── ArticleDAOImpl.java
        │   │   │               │   ├── HumanDAOImpl.java
        │   │   │               │   ├── Leve1ReplyDAOImpl.java
        │   │   │               │   ├── ReplyDAOImpl.java
        │   │   │               │   ├── SplitDAOImpl.java
        │   │   │               │   └── TypeDAOImpl.java
        │   │   │               ├── intercepter
        │   │   │               │   └── CustomerLoginInterceptor.java
        │   │   │               ├── mapper
        │   │   │               │   ├── ArticleDAOMapper.java
        │   │   │               │   ├── dynamic
        │   │   │               │   │   └── SplitUtils.java
        │   │   │               │   ├── HumanDAOMapper.java
        │   │   │               │   ├── Leve1ReplyDAOMapper.java
        │   │   │               │   ├── ReplyDAOMapper.java
        │   │   │               │   ├── SplitDAOMapper.java
        │   │   │               │   └── TypeDAOMapper.java
        │   │   │               ├── model
        │   │   │               │   ├── Article.java
        │   │   │               │   ├── FileVO.java
        │   │   │               │   ├── Human.java
        │   │   │               │   ├── Image.java
        │   │   │               │   ├── Level1Reply.java
        │   │   │               │   ├── Reply.java
        │   │   │               │   └── Type.java
        │   │   │               ├── server
        │   │   │               │   ├── ArticleServer.java
        │   │   │               │   ├── HumanServer.java
        │   │   │               │   ├── IssueServer.java
        │   │   │               │   ├── Leve1ReplyServer.java
        │   │   │               │   ├── ReplyServer.java
        │   │   │               │   ├── ToPage.java
        │   │   │               │   └── TypeServer.java
        │   │   │               └── UserApplication.java
        │   │   └── resources
        │   │       ├── application.properties
        │   │       ├── log4j.properties
        │   │       ├── static
        │   │       │   ├── base
        │   │       │   │   └── navigation.html
        │   │       │   ├── css
        │   │       │   │   ├── bootstrap.min.css
        │   │       │   │   ├── LikeAndDislike.css
        │   │       │   │   └── main.css
        │   │       │   ├── image
        │   │       │   │   ├── mdo.png
        │   │       │   │   └── Tux.svg
        │   │       │   └── js
        │   │       │       ├── bootstrap.min.js
        │   │       │       ├── jquery-3.2.1.min.js
        │   │       │       ├── jquery-3.6.3.min.js
        │   │       │       ├── popper.js
        │   │       │       ├── popper.min.js
        │   │       │       └── wangEditor.min.js
        │   │       └── templates
        │   │           ├── article
        │   │           │   ├── articleById.html
        │   │           │   ├── article.html
        │   │           │   ├── articleupdate.html
        │   │           │   ├── indexType.html
        │   │           │   └── issue.html
        │   │           ├── base
        │   │           │   └── navigation.html
        │   │           ├── demo
        │   │           │   ├── demo.html
        │   │           │   └── WangEditor.html
        │   │           ├── index.html
        │   │           └── view
        │   │               ├── index.html
        │   │               ├── login.html
        │   │               ├── register.html
        │   │               ├── show.html
        │   │               └── update.html
        │   └── test
        │       └── java
        │           └── org
        │               └── soft
        │                   └── base
        │                       └── SsmDemApplicationTests.java
        └── target
            ├── classes
            │   ├── application.properties
            │   ├── log4j.properties
            │   ├── org
            │   │   └── soft
            │   │       └── base
            │   │           ├── configuration
            │   │           │   ├── ImagePathConfiguration.class
            │   │           │   └── RegisterConfigurer.class
            │   │           ├── constant
            │   │           │   ├── ImageUtils.class
            │   │           │   ├── SplitConstant.class
            │   │           │   └── SplitEnum.class
            │   │           ├── dao
            │   │           │   ├── ArticleDAO.class
            │   │           │   ├── HumanDAO.class
            │   │           │   ├── Leve1ReplyDAO.class
            │   │           │   ├── ReplyDAO.class
            │   │           │   ├── SplitDAO.class
            │   │           │   └── TypeDAO.class
            │   │           ├── impl
            │   │           │   ├── ArticleDAOImpl.class
            │   │           │   ├── HumanDAOImpl.class
            │   │           │   ├── Leve1ReplyDAOImpl.class
            │   │           │   ├── ReplyDAOImpl.class
            │   │           │   ├── SplitDAOImpl.class
            │   │           │   └── TypeDAOImpl.class
            │   │           ├── intercepter
            │   │           │   └── CustomerLoginInterceptor.class
            │   │           ├── mapper
            │   │           │   ├── ArticleDAOMapper.class
            │   │           │   ├── dynamic
            │   │           │   │   ├── SplitUtils$1.class
            │   │           │   │   └── SplitUtils.class
            │   │           │   ├── HumanDAOMapper.class
            │   │           │   ├── Leve1ReplyDAOMapper.class
            │   │           │   ├── ReplyDAOMapper.class
            │   │           │   ├── SplitDAOMapper.class
            │   │           │   └── TypeDAOMapper.class
            │   │           ├── model
            │   │           │   ├── Article.class
            │   │           │   ├── FileVO.class
            │   │           │   ├── Human.class
            │   │           │   ├── Image.class
            │   │           │   ├── Level1Reply.class
            │   │           │   ├── Reply.class
            │   │           │   └── Type.class
            │   │           ├── server
            │   │           │   ├── ArticleServer.class
            │   │           │   ├── HumanServer.class
            │   │           │   ├── IssueServer.class
            │   │           │   ├── Leve1ReplyServer.class
            │   │           │   ├── ReplyServer.class
            │   │           │   ├── ToPage.class
            │   │           │   └── TypeServer.class
            │   │           └── UserApplication.class
            │   ├── static
            │   │   ├── base
            │   │   │   └── navigation.html
            │   │   ├── css
            │   │   │   ├── bootstrap.min.css
            │   │   │   ├── LikeAndDislike.css
            │   │   │   └── main.css
            │   │   ├── image
            │   │   │   ├── mdo.png
            │   │   │   └── Tux.svg
            │   │   └── js
            │   │       ├── bootstrap.min.js
            │   │       ├── jquery-3.2.1.min.js
            │   │       ├── jquery-3.6.3.min.js
            │   │       ├── popper.js
            │   │       ├── popper.min.js
            │   │       └── wangEditor.min.js
            │   └── templates
            │       ├── article
            │       │   ├── articleById.html
            │       │   ├── article.html
            │       │   ├── articleupdate.html
            │       │   ├── indexType.html
            │       │   └── issue.html
            │       ├── base
            │       │   └── navigation.html
            │       ├── demo
            │       │   ├── demo.html
            │       │   └── WangEditor.html
            │       ├── index.html
            │       └── view
            │           ├── index.html
            │           ├── login.html
            │           ├── register.html
            │           ├── show.html
            │           └── update.html
            ├── generated-sources
            │   └── annotations
            ├── generated-test-sources
            │   └── test-annotations
            ├── maven-archiver
            │   └── pom.properties
            ├── maven-status
            │   └── maven-compiler-plugin
            │       ├── compile
            │       │   └── default-compile
            │       │       ├── createdFiles.lst
            │       │       └── inputFiles.lst
            │       └── testCompile
            │           └── default-testCompile
            │               ├── createdFiles.lst
            │               └── inputFiles.lst
            ├── surefire-reports
            │   ├── org.soft.base.SsmDemApplicationTests.txt
            │   └── TEST-org.soft.base.SsmDemApplicationTests.xml
            ├── test-classes
            │   └── org
            │       └── soft
            │           └── base
            │               └── SsmDemApplicationTests.class
            ├── thinking-0.0.1-SNAPSHOT.jar
            └── thinking-0.0.1-SNAPSHOT.jar.original
```