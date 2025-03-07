import TuistCloud

extension CloudInvitation {
    public static func test(
        id: Int = 0,
        inviteeEmail: String = "test@tuist.io",
        inviter: CloudUser = .test(),
        organizationId: Int = 0
    ) -> Self {
        .init(
            id: id,
            inviteeEmail: inviteeEmail,
            inviter: inviter,
            organizationId: organizationId
        )
    }
}
