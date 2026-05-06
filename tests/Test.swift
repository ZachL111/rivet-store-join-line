@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 81, capacity: 80, latency: 17, risk: 12, weight: 10)
        precondition(Policy.score(signalcase_1) == 127)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 81, capacity: 94, latency: 22, risk: 5, weight: 6)
        precondition(Policy.score(signalcase_2) == 167)
        precondition(Policy.classify(signalcase_2) == "review")
        let signalcase_3 = Signal(demand: 100, capacity: 83, latency: 15, risk: 8, weight: 10)
        precondition(Policy.score(signalcase_3) == 202)
        precondition(Policy.classify(signalcase_3) == "accept")
        let domainReview = DomainReview(signal: 73, slack: 36, drag: 17, confidence: 57)
        precondition(DomainReviewLens.score(domainReview) == 188)
        precondition(DomainReviewLens.lane(domainReview) == "ship")
    }
}
