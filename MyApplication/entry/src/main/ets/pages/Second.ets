// Second.ets

import { router } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component

struct Second {
  @State messge: string = 'Hi there'

  build() {
    Row() {
      Column() {
        Text(this.messge)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button() {
          Text('Back')
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(() => {
          console.info('Succeeded in clicking the Back Button')
          try {
              router.back()
            console.info('Succeeded in returning to the first page.')
          } catch (error){
            let code = (error as BusinessError).code
            let message = (error as BusinessError).message
            console.info('Failed to return to the first page. Code is ${code}, message = ${message}')
          }
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}