@PostConstruct注解：

```java
@Component
public class CodeCache {
	public static Map<String, String> codeMap = new HashMap<String, String>();
	
	@Autowired
	private ICodeService codeService;
	
	@PostConstruct
	public void init(){
		System.out.println("系统启动中。。。加载codeMap");
		List<Code> codeList = codeService.selectAll();
		for (Code code : codeList) {
			codeMap.put(code.getKey(), code.getValue());
		}
	}
	
	@PreDestroy
    public void destroy(){
        System.out.println("系统运行结束");
    }
}
```

获取缓存值：

```System.out.println(CodeCache.codeMap.get("name"));```