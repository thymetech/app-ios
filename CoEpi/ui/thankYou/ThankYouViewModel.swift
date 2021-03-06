import Dip
import RxCocoa
import RxSwift

class ThankYouViewModel {
    private let rootNav: RootNav

    let title = L10n.Ux.Thankyou.heading

    init(rootNav: RootNav) {
        self.rootNav = rootNav
    }

    func onCheckInClick() {
        rootNav.navigate(
            command: .backToAndTo(
                backDestination: .home,
                toDestination: .symptomReport))
    }

    func onSeeAlertsClick() {
        rootNav.navigate(command: .backToAndTo(backDestination: .home, toDestination: .alerts))
    }

    func onCloseClick() {
        rootNav.navigate(command: .backTo(destination: .home))
    }
}
