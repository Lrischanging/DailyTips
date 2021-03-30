## try catch finally

```java
try 
{ 
    code; //将自己的代码放在其中； 
} catch(e) //如果上面的代码有错误，这里就捕获 
{ 
    alert(e.number); //获得错误信息 
}
```

## try-with-resource

可以理解为是一个声明一个或多个资源的 try语句（用分号隔开），
一个资源作为一个对象，并且这个资源必须要在执行完关闭的，
try-with-resources语句确保在语句执行完毕后，每个资源都被自动关闭 。
任何实现了** java.lang.AutoCloseable**的对象, 包括所有实现了 java.io.Closeable 的对象
, 都可以用作一个资源。

```java
try(MyAutoClosable myAutoClosable = new MyAutoClosable();
    MyAutoClosable myAutoClosable = new MyAutoClosable()){
            myAutoClosable.doIt();
        } catch (Exception e) {
            e.printStackTrace();
        }
```