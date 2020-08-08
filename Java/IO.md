## 以字节为单位读取文件，常用于读二进制文件，如图片、声音、影像等文件

```java
    File file = new File(filename);
    InputStream in = new FileInputStream(file);
    int tempByte;
    while((tempByte = in.read()) != -1) {
        System.out.write(tempByte);
    }
    in.close();

```

[参考文档](https://juejin.im/post/6844903847329005575)

## 写入文件

```java
    FileWriter writer = new FileWriter("E:/token.txt");
    writer.write(str);
    writer.flush();
    writer.close();
```

[参考文档](https://blog.csdn.net/fuyuwei2015/article/details/44257639)

[替换文件中某个字符串并写入新内容](https://blog.csdn.net/zhangphil/article/details/43987105)