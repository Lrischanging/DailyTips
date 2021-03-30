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

## Out.flush用法

为了提高IO吞吐效率，一般的IO服务都带缓冲区，当缓冲区满了再输出一次，这样减少IO次数。

flush() 则要求立即将缓冲区的数据输出到接收方。

## 写入 读取文件

```java
public class ReadTxt {

    public static void main(String args[]) {
        readFile();
        writeFile();
    }

    /**
     * 读入TXT文件
     */
    public static void readFile() {
        String pathname = "input.txt"; // 绝对路径或相对路径都可以，写入文件时演示相对路径,读取以上路径的input.txt文件
        //防止文件建立或读取失败，用catch捕捉错误并打印，也可以throw;
        //不关闭文件会导致资源的泄露，读写文件都同理
        //Java7的try-with-resources可以优雅关闭文件，异常时自动关闭文件；详细解读https://stackoverflow.com/a/12665271
        try (FileReader reader = new FileReader(pathname);
             BufferedReader br = new BufferedReader(reader) // 建立一个对象，它把文件内容转成计算机能读懂的语言
        ) {
            String line;
            //网友推荐更加简洁的写法
            while ((line = br.readLine()) != null) {
                // 一次读入一行数据
                System.out.println(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 写入TXT文件
     */
    public static void writeFile() {
        try {
            File writeName = new File("output.txt"); // 相对路径，如果没有则要建立一个新的output.txt文件
            writeName.createNewFile(); // 创建新文件,有同名的文件的话直接覆盖
            try (FileWriter writer = new FileWriter(writeName);
                 BufferedWriter out = new BufferedWriter(writer)
            ) {
                out.write("我会写入文件啦1\r\n"); // \r\n即为换行
                out.write("我会写入文件啦2\r\n"); // \r\n即为换行
                out.flush(); // 把缓存区内容压入文件
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

[参考文档](https://blog.csdn.net/fuyuwei2015/article/details/44257639)

[替换文件中某个字符串并写入新内容](https://blog.csdn.net/zhangphil/article/details/43987105)