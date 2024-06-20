# 2024-NC2-A31-PushToTalk
## 🎥 Youtube Link


## 💡 About Push To Talk

- iOS의 오디오 커뮤니케이션 class. iOS 앱에서 ***워키토키 통신을 통해 빠른 커뮤니케이션 진행하도록 도와주는 Framework*** (**무전기** 기능)
- (watchOS 5.3, iOS 16 이상부터 사용 가능)

**[PTT 사용방법]**

- 채널에 참가자들은 **입장**한다.
- 채널에 참가한 사용자는 하루종일 **채널 안의 사용자들**과 오디오 **송수신**을 할 수 있다.
- 말하고 싶을 때는 **버튼을 누르고 말한다**.

**[PTT 장점]**

- **배터리 절약** - 오디오 송수신을 하지 않을 경우 앱은 자고 있어도 되기 때문에 전화기능에 비해 배터리 절약 효과를 볼 수 있다.
- **투명성** - 채널에 접속한 누군가의 오디오가 재생될 때는 말하는 사람을 표시하여 사용자에게 투명성을 부여하는 효과를 볼 수 있다.
- **1-1 / 1-n 커뮤니케이션**이 가능하다.
- LTE 망을 이용하여 거리에 상관없이 LTE 통신이 가능한 곳에서는 언제 어디서든 무선 통신이 가능하여 비상시나 원거리에서 통신할 때 효율적이다.
- 요금제 내 할당된 통화 시간을 사용하지 않고도 즉각적으로 통신할 수 있다. 이 인센티브는 통신사들이 데이터 요금제에 PTT를 포함하거나 일반 통화 시간에 포함하도록 요금 구조를 조정함에 따라 감소할 수 있다.
- 사용자가 앱을 사용하지 않을 때에는 배터리 수명 보존을 위해 시스템이 일시 중단 시킨다. (시스템이 알아서 해줌)


## 🎯 What we focus on?

- 1 : n 또는 n : 1 대화 가능
- 별도로 전화번호를 누를 필요 없음 **(빠른 커뮤니케이션)**
- 통화 연결 대기시간이 불필요 **(빠른 커뮤니케이션)**

→ 통화나 카톡 등 많이 사용하는 연락 방식과는 다른 점에 집중

## 💼 Use Case
애플 아카데미 사람들이 약속 상대가 어디인지 궁금할 때의 소통 도우미 🗣️

## 🖼️ Prototype

|  채널 리스트 뷰 | ChannelDetailView  | ChannelDetailView에서 말할 때  | NewChannelView  |
|---|---|---|---|
|<img width="200" alt="image" src="https://github.com/DeveloperAcademy-POSTECH/2024-NC2-A31-PushToTalk/assets/102604192/cae3e08d-be0f-4301-9a76-8e25d7c7ab71">|<img width="200" alt="image" src="https://github.com/DeveloperAcademy-POSTECH/2024-NC2-A31-PushToTalk/assets/102604192/0f836793-c079-4189-994a-8b81510d536e">|<img width="200" alt="image" src="https://github.com/DeveloperAcademy-POSTECH/2024-NC2-A31-PushToTalk/assets/102604192/0c4d46b2-dd49-4111-a0c4-4e143963ae7b">|<img width="200" alt="image" src="https://github.com/DeveloperAcademy-POSTECH/2024-NC2-A31-PushToTalk/assets/102604192/3ccda0bb-0a08-43d7-9b89-9a6447740450">|
|사용자가 들어가있는 채널들의 목록을 확인할 수 있다.|[?] 버튼을 누르면서 "어디세요?"라고 물어볼 수 있다.|버튼을 누르는 순간 [!] 버튼으로 변경된다.|[+]버튼을 통해 채널명을 설정하고 원하는 사람을 채널에 추가할 수 있다.|
## 🛠️ About Code
(핵심 코드에 대한 설명 추가)
