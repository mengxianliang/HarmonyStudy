@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {

    this.test();

    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }

  test() {
    // 声明变量
    let hi: string = 'hello';
    hi = 'hello, world';

    // 声明常量
    const hello: string = 'hello';

    // number类型
    let n1 = 3.14;
    let n2 = 3.1415926;
    let n3 = .5;
    let n4 = 1e2;

    console.info('n1 = ${ n1 }');
  }
}