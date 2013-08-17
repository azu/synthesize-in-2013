# PropertyによるiVarの自動生成について

[2013年の@synthesize](http://blog.ishkawa.org/blog/2013/08/17/synthesize-in-2013/ "2013年の@synthesize")

## Property(writable)

* iVarも生成される

## Property(readonly)

* iVarが生成されない

## Property(readonly + readwrite)

* ``.h`` はreadonly、無名カテゴリで ``readwrite``
* iVarは生成される


----

* [2013年の@synthesize](http://blog.ishkawa.org/blog/2013/08/17/synthesize-in-2013/ "2013年の@synthesize")
* [Objective-C 2.0 のプロパティ隠蔽 | ishwt::tracking](http://ishwt.net/blog/2010/05/21/objc20-property/ "Objective-C 2.0 のプロパティ隠蔽 | ishwt::tracking")
* [Objective-C のプロパティ属性のガイドライン - Qiita [キータ]](http://qiita.com/uasi/items/80660f9aa20afaf671f3 "Objective-C のプロパティ属性のガイドライン - Qiita [キータ]")