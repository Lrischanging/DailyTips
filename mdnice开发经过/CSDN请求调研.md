1. checkauth
https://passport.csdn.net/v1/api/check/userstatus
POST
{username: "qq_36575071"}
{"error":"","status":true}

2. 草稿，更新
https://bizapi.csdn.net/blog-console-api/v3/mdeditor/saveArticle
POST
{"title":"故事的小黄花","markdowncontent":"## hello world\n故事的小黄花，从开始到结束\n","content":"<h2><a id=\"hello_world_0\"></a>hello world</h2>\n<p>故事的小黄花，从开始到结束</p>\n\n","readType":"public","tags":"","status":2,"categories":"","not_auto_saved":"1","source":"pc_mdeditor"}

{"code":200,"msg":"success",
"data":{"id":118440833,"url":"https:\/\/blog.csdn.net\/qq_36575071\/article\/details\/118440833","qrcode":"https:\/\/blog.csdn.net\/common_tool\/qrcode?url=https%3A%2F%2Fblog.csdn.net%2Fqq_36575071%2Farticle%2Fdetails%2F118440833%3Futm_source%3Dblog_wap_share","title":"\u6545\u4e8b\u7684\u5c0f\u9ec4\u82b1","description":"hello world\n\u6545\u4e8b\u7684\u5c0f\u9ec4\u82b1\uff0c\u4ece\u5f00\u59cb\u5230\u7ed3\u675f\n\n"}}

3. https://bizapi.csdn.net/blog-console-api/v3/tag/getRecommendTags
POST
{"title":"故事的小黄花","content":"## hello world\n故事的小黄花，从开始到结束\n","type":2}

{"code":200,"msg":"success","data":{"list":{"\u63a8\u8350":["python"],"\u6570\u636e\u5e93":["mysql","redis","mongodb","sql","\u6570\u636e\u5e93","json","elasticsearch","nosql","memcached","postgresql","sqlite","mariadb"],"\u5de5\u5177":["git","github","macos","visual studio code","windows","vim","sublime text","intellij idea","eclipse","phpstorm","webstorm","\u7f16\u8f91\u5668","svn","visual studio","pycharm","emacs"],"\u540e\u7aef":["java","php","node.js","python","c++","c\u8bed\u8a00","c#","golang","spring","django","flask","spring boot","swoole","ruby","asp.net","ruby on rails","scala","rust","lavarel","\u722c\u866b","\u540e\u7aef"],"\u79fb\u52a8\u7aef":["java","android","ios","objective-c","swift","\u5c0f\u7a0b\u5e8f","react native","xcode","android studio","web app","flutter","kotlin"],"\u6570\u5b66":["\u7ebf\u6027\u4ee3\u6570","\u77e9\u9635","\u6982\u7387\u8bba","\u62d3\u6251\u5b66","\u62bd\u8c61\u4ee3\u6570","\u51e0\u4f55\u5b66","\u7b97\u6cd5","\u52a8\u6001\u89c4\u5212","\u56fe\u8bba","\u5085\u7acb\u53f6\u5206\u6790"],"\u524d\u7aef":["javascript","css","vue.js","html","html5","node.js","reactjs","jquery","css3","es6","typescript","chrome","npm","bootstrap","sass","less","chrome devtools","firefox","angular","coffeescript","safari","postcss","postman","fiddler","webkit","yarn","firebug","edge","gulp","webpack","\u524d\u7aef"],"\u8fd0\u7ef4":["linux","nginx","docker","apache","ubuntu","centos","\u670d\u52a1\u5668","\u8d1f\u8f7d\u5747\u8861","\u8fd0\u7ef4","ssh","vagrant","\u5bb9\u5668","jenkins","devops","debian","fabric"],"\u5927\u6570\u636e":["talkingdata","\u6d9b\u601d\u6570\u636e","kylin","flink","kafka","tdengine","hadoop","spark","hdfs","mapreduce","cloudera","hive","ambari","sqoop","zookeeper","odps","\u5927\u6570\u636e"],"\u5176\u4ed6":["oneapi","http","segmentfault","https","\u5b89\u5168","websocket","restful","xss","\u533a\u5757\u94fe","csrf","graphql","rpc","\u6bd4\u7279\u5e01","\u4ee5\u592a\u574a","udp","\u667a\u80fd\u5408\u7ea6","\u4e91\u8ba1\u7b97","\u9762\u8bd5","\u7a0b\u5e8f\u4eba\u751f","\u6070\u996d","\u7ecf\u9a8c\u5206\u4eab","\u6570\u5b57\u8d27\u5e01","\u97f3\u89c6\u9891","\u5176\u4ed6"],"\u4eba\u5de5\u667a\u80fd":["\u81ea\u7136\u8bed\u8a00\u5904\u7406","\u81ea\u52a8\u9a7e\u9a76","\u795e\u7ecf\u7f51\u7edc","\u6570\u636e\u6316\u6398","\u673a\u5668\u5b66\u4e60","\u6df1\u5ea6\u5b66\u4e60","tensorflow","pytorch","caffe","openvino","\u8fb9\u7f18\u8ba1\u7b97","\u8d85\u5206\u8fa8\u7387\u91cd\u5efa","\u667a\u6167\u57ce\u5e02","\u89c6\u89c9\u68c0\u6d4b"]}}}

4. https://bizapi.csdn.net/blog-console-api/v3/mdeditor/saveArticle
POST
{"id":118440833,"title":"故事的小黄花","markdowncontent":"## hello world\n故事的小黄花，从开始到结束\n","content":"<h2><a id=\"hello_world_0\"></a>hello world</h2>\n<p>故事的小黄花，从开始到结束</p>\n\n","readType":"public","tags":"mysql","status":0,"categories":"","type":"original","original_link":"","authorized_status":false,"not_auto_saved":"1","source":"pc_mdeditor"}

{"code":200,"msg":"success","data":{"id":118440833,"url":"https:\/\/blog.csdn.net\/qq_36575071\/article\/details\/118440833","qrcode":"https:\/\/blog.csdn.net\/common_tool\/qrcode?url=https%3A%2F%2Fblog.csdn.net%2Fqq_36575071%2Farticle%2Fdetails%2F118440833%3Futm_source%3Dblog_wap_share","title":"\u6545\u4e8b\u7684\u5c0f\u9ec4\u82b1","description":"hello world\n\u6545\u4e8b\u7684\u5c0f\u9ec4\u82b1\uff0c\u4ece\u5f00\u59cb\u5230\u7ed3\u675f\n\n"}}

5. https://bizapi.csdn.net/blog-console-api/v3/image/transfer
POST
{"art_id":"118440833","uuid":"img-RlwXpSKH-1625300685550","url":"https://pic4.zhimg.com/v2-b437efb25afb3073d2c9975b99584963_r.jpg"}

{"code":200,"msg":"success","data":{"uuid":"img-RlwXpSKH-1625300685550","url":"https:\/\/pic4.zhimg.com\/v2-b437efb25afb3073d2c9975b99584963_r.jpg","img_url":"https:\/\/img-blog.csdnimg.cn\/img_convert\/139420b2f8966a382b79afad07e43ebc.png"}}

6. checkauth
https://msg.csdn.net/v1/web/message/view/unread
POST
{"coupon":true}

{
    "code": "0",
    "message": "success",
    "data": {
        "thumb_up": 0,
        "im": 1,
        "gitChat_thumb_up": 0,
        "avatarUrl": "https://profile.csdnimg.cn/C/1/1/2_qq_36575071",
        "invitation": 0,
        "gitChat_system": 0,
        "GlobalSwitch": {
            "private_message_who_follows_me": true,
            "email_commit_receive": true,
            "interactive_follow": true,
            "email_collect_receive": true,
            "system_digital": true,
            "private_message_stranger": true,
            "email_support_receive": true,
            "interactive_like": true,
            "interactive_comment_digital": true,
            "system": true,
            "interactive_like_digital": true,
            "interactive_follow_digital": true,
            "email_follow_receive": true,
            "interactive_comment": true,
            "private_message_who_me_follows": true,
            "announcement_digital": true,
            "email": true,
            "announcement": true
        },
        "edu_thumb_up": 0,
        "follow": 0,
        "totalCount": 4,
        "coupon_order": 0,
        "edu_comment": 0,
        "edu_system": 0,
        "system": 3,
        "comment": 0,
        "gitChat_comment": 0
    },
    "status": true
}
