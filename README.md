# ios-ZoomInImage

## 이미지 줌 인 기능 연습 프로젝트

시뮬레이터라 Zoom 할 때 가운데로만 동작을 하는데, 실제기기로 하게 되면 원하는 위치에서 Zoom 했을 떄 정상적으로 동작한다.

| 실행 화면 |
| :--------: | 
| <img src = "https://github.com/bradheo65/TIL/assets/45350356/6ca16f65-1aa9-4763-8410-f69a231b3644" width = "300" height = "600"/>     | 

### 적용 방법

**UIScrollView, UIImageView 활용**

1. View 설정

UIScrollView, UIImageView를 사용했고, 기본적인 레이아웃을 잡아주었다. 

특이점은, 이미지의 기본 사이즈가 크게 되면 화면에서 일부분만 나온다. 스크롤뷰를 기준으로 오토레이아웃을 잡아서 그만큼 표현이 된 것 같다.

구현하려는 화면이 다르므로, 수정을 했는데, 이미지 넓이, 높이를 상위 뷰(View)를 기준으로 잡아두니 원하는 화면으로 나오게 되었다.

<img width="614" alt="스크린샷 2023-10-26 오전 11 16 53" src="https://github.com/bradheo65/TIL/assets/45350356/36b95c60-8848-4612-9c31-5d9f74413d8b">

2. Zoom In
Zoom 기능인 경우 UIScollViewDelegate의 `func viewForZooming(in scrollView: UIScrollView) -> UIView?` 와 `func scrollViewDidScroll(_ scrollView: UIScrollView)`를 사용해서 적용했다.

```swift
func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.zoomScale <= 1.0 {
            scrollView.zoomScale = 1.0
        }
        
        if scrollView.zoomScale >= 2.0 {
            scrollView.zoomScale = 2.0
        }
    }
```


