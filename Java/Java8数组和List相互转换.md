### 数组转List

```java
    String[] arrays = new String[]{"a", "b", "c"};
    List<String> listStrings = Stream.of(arrays).collect(Collectors.toList());
```

### List 转数组

```java
    String[] ss = listStrings.stream().toArray(String[]::new);
```