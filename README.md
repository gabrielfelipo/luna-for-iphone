<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/github_username/repo_name">
    <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/6ccf78a8-46eb-43ff-ae06-ba625ea4b0ee" alt="Logo" width="300" height="300">
  </a>

  <h3 align="center">Luna</h3>

  <p align="center">
Tune your cycle!
  </p>
</p>


Luna is an innovative app designed to be your personal guide on the journey to maintaining a routine aligned with your menstrual cycle. It offers a range of useful features to help individuals understand and prepare for hormonal changes throughout their cycle.

## Functionalities 

#### Get to know your cycle:
With Luna, you only need to record the start of your menstruation once, and from that point, you'll have easy access to information about which phase of the menstrual cycle you're in. Additionally, the app provides insights into how these different phases impact your productivity and well-being, as each moment is influenced by different hormones that can affect your daily routine.

#### Prepare for hormonal variations:
Luna provides an overview of the hormonal influences you can expect in the upcoming phases of your cycle. It also suggests more suitable activities for each moment and helps identify what should be avoided during these phases. This aids in planning your routine in harmony with your body, optimizing your productivity and well-being.

#### Keep your cycle always in view:
The app allows synchronization with your mobile calendar, providing an easy and quick visualization of your cycle phases. It has never been easier to keep track of your menstrual cycle within your daily routine.

#### Data protection:
You don't need to worry about the security of your data, as Luna ensures that your personal information will not be stored in any external databases. Everything is kept only on your device, ensuring the privacy and security of your information.

## Screenshots

<div style="display: flex; flex-wrap: wrap; justify-content: space-between;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/c240ea15-6c6b-42af-b8b5-7525c18e51d0" alt="Screenshot 1" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/ab04648a-a28f-4831-aa93-4b91d70a7a21" alt="Screenshot 2" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/5543bd89-31bb-46bc-8d48-7dcca80aeff0" alt="Screenshot 3" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/7bf07d6b-c53b-4243-b8c1-2e4aa957b0a1" alt="Screenshot 4" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/e8bef6e5-5db1-486e-820f-e255dfa24149" alt="Screenshot 5" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/99910bc7-1060-421f-bf6a-b04fddaf63e5" alt="Screenshot 7" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/667fc6a5-e0f8-410e-85ac-7fbe0897c631" alt="Screenshot 8" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/c6b340c6-41d4-43df-a68a-9cc9922a0622" alt="Screenshot 9" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/8474551e-f5e0-43bc-8121-39534f3a515a" alt="Screenshot 11" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/aa651e86-df48-4e00-b098-733ad52cf122" alt="Screenshot 12" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/7e0811f9-b184-4c7f-b0e9-0ea149a341df" alt="Screenshot 13" width="16%" style="margin: 5px;">
  <img src="https://github.com/gabrielfelipo/luna-for-iphone/assets/54708833/9b059d26-c004-4b5f-a567-8d3d075e79f5" alt="Screenshot 15" width="16%" style="margin: 5px;">
</div>

### Video

[![Assista ao vídeo](https://i9.ytimg.com/vi/HjwMLazWhEQ/mqdefault.jpg?sqp=CLj017MG-oaymwEmCMACELQB8quKqQMa8AEB-AH-BIACgAqKAgwIABABGH8gNig9MA8=&rs=AOn4CLBc55uHZWBhsD6RUSBej8dXU6MiiA)](https://youtu.be/HjwMLazWhEQ)

## Technologies Used

- [Swift](https://swift.org/)
- [UIKit](https://developer.apple.com/documentation/uikit/)
- [RxSwift](https://github.com/ReactiveX/RxSwift)
- [Swift Package Manager](https://swift.org/package-manager/)
- [Firebase Analytics](https://firebase.google.com/products/analytics)

## Requirements

- iOS 16.1+
- Xcode 15.4+
- Swift 5.10+

## Installation

### Clone Repository

```bash
git clone https://github.com/gabrielfelipo/luna-for-iphone.git
cd luna-for-iphone
```

### Install the Dependencies

With Swift Package Manager:
```bash
open luna.xcworkspace
```

### Architecture:
In the Luna project, we chose to use VIPER as it offers a clear and modular structure that facilitates code maintenance and scalability. VIPER is an architecture that clearly separates responsibilities, allowing for more organized and testable development.

**V**iew - **I**nteractor - **P**resenter - **E**ntity - **R**outer

```plaintext
View <--> View Controller <--> Presenter --> Router
                                     |
                                     v
                                 Interactor
                                       |
              +------------------------+------------------------+
              |                                                 |
   Core Data Service                                 Networking Service
              |                                                 |
              v                                                 v
            Entity                                           Entity
            (data)                                      (network response)
```

### Project Structure

```plaintext
Luna
├── Fastlane
├── Pods
├── luna.xcodeproj
├── luna.xcworkspace
├── luna
│   ├── Analytics
│   ├── Assets.xcassets
│   ├── Base.lproj
│   ├── Constant
│   ├── Enums
│   ├── LunaActivity
│   ├── LunaCalendar
│   ├── Managers
│   ├── MenstruationDuration
│   ├── Notification
│   └── UI
│       ├── Adapters
│       ├── Components
│       ├── Extensions
│       └── Modules
|           └── ...
├── lunaTests
├── lunaUITests
├── .gitignore
├── .ruby-version
├── .swiftlint.yml
├── Gemfile
├── Gemfile.lock
├── Podfile
├── Podfile.lock
├── README.md
├── luna.xctestplan
└── swiftgen.yml

```

#### Module Structure

```plaintext
Modules
├── ActivityOnCalendar
│   ├── Views
│   │   └── ActivityOnCalendarView.swift
│   ├── ActivityOnCalendarContract.swift
│   ├── ActivityOnCalendarPresenter.swift
│   ├── ActivityOnCalendarRouter.swift
│   └── ActivityOnCalendarViewController.swift

```

## Contributors


<table>
  <tr>

<td align="center"><a href="https://github.com/gabrielfelipo"><img src="https://avatars.githubusercontent.com/u/54708833?v=4" width="100px;" alt=""/><br /><sub><b>Gabriel Felipo</b></sub></a><br/></td>

<td align="center"><a href="https://github.com/apfdamascena"><img src="https://avatars.githubusercontent.com/u/52205263?s=400&u=033c62df4cc4f73b3010473faf859919019679af&v=4" width="100px;" alt=""/><br /><sub><b>Alex Damascena</b></sub></a><br/></td>

<td align="center"><a href="https://github.com/Sofiamdl"><img src="https://avatars.githubusercontent.com/u/52216863?v=4" width="100px;" alt=""/><br /><sub><b>Sofia Melo</b></sub></a><br/></td>

<td align="center"><a href="https://github.com/CynaraCosta"><img src="https://avatars.githubusercontent.com/u/61971729?v=4" width="100px;" alt=""/><br /><sub><b>Cynara Costa</b></sub></a><br/></td>

<td align="center"><a href="https://github.com/mvbandeira"><img src="https://avatars.githubusercontent.com/u/89087922?v=4" width="100px;" alt=""/><br /><sub><b>Maria Vitória Bandeira</b></sub></a><br/></td>

<td align="center"><a href="https://github.com/alanacr"><img src="https://avatars.githubusercontent.com/u/103276109?v=4" width="100px;" alt=""/><br /><sub><b>Alana Ramos</b></sub></a><br/></td>

</tr>
 </table>






