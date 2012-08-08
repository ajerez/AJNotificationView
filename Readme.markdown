# AJNotificationView

__Notice component for iOS__

- No images needed, all CoreGraphics code
- Works on iPhone and iPad (resolution independent)

![AJNotificationView](https://github.com/ajerez/AJNotificationView/blob/master/screenshot.png)

![AJNotificationView](https://github.com/ajerez/AJNotificationView/blob/master/screenshot2.png)


## Example Usage

Add __QuartzCore.framework__ to your project and drop the __AJNotificationView__ folder in your project



``` objective-c
[AJNotificationView showNoticeInView:self.view
                                type:AJNotificationTypeBlue
                               title:@"Test notification"
                           hideAfter:2.5f];
```

There are several __notification styles__ to choose from:

* `AJNotificationTypeDefault` _<-- Gray_
* `AJNotificationTypeBlue`
* `AJNotificationTypeRed`
* `AJNotificationTypeGreen`
* `AJNotificationTypeOrange`

## Contact
Twitter: [@alberto_jrz](https://twitter.com/alberto_jrz)

## License - MIT


Copyright (c) 2012 Alberto Jerez - [CodeApps](http://www.codeapps.es/)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
