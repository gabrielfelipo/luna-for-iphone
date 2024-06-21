# Luna

Luna is an innovative app designed to be your personal guide on the journey to maintaining a routine aligned with your menstrual cycle. It offers a range of useful features to help individuals understand and prepare for hormonal changes throughout their cycle.

## Screenshots

Inclua algumas capturas de tela ou GIFs mostrando o funcionamento do aplicativo.

### Video

Descreva como usar o projeto. Pode ser útil incluir exemplos de código ou capturas de tela adicionais aqui.

## Functionalities 

#### Get to know your cycle:
With Luna, you only need to record the start of your menstruation once, and from that point, you'll have easy access to information about which phase of the menstrual cycle you're in. Additionally, the app provides insights into how these different phases impact your productivity and well-being, as each moment is influenced by different hormones that can affect your daily routine.

#### Prepare for hormonal variations:
Luna provides an overview of the hormonal influences you can expect in the upcoming phases of your cycle. It also suggests more suitable activities for each moment and helps identify what should be avoided during these phases. This aids in planning your routine in harmony with your body, optimizing your productivity and well-being.

#### Keep your cycle always in view:
The app allows synchronization with your mobile calendar, providing an easy and quick visualization of your cycle phases. It has never been easier to keep track of your menstrual cycle within your daily routine.

#### Data protection:
You don't need to worry about the security of your data, as Luna ensures that your personal information will not be stored in any external databases. Everything is kept only on your device, ensuring the privacy and security of your information.

## Requirements

- iOS 13.0+
- Xcode 12.0+
- Swift 5.0+

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
View <--> View Controller <--> Presenter <--> Router
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





