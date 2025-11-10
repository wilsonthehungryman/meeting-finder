
alcoholics_anonymous = RecoveryCommunity.find_or_create_by(
  name: "Alcoholics Anonymous",
  description: "A twelve step approach to recovery.",
  acronym: "AA"
)

recovery_dharma = RecoveryCommunity.find_or_create_by(
  name: "Recovery Dharma",
  description: "A Buddhist inspired approach to recovery.",
  acronym: "RD"
)
