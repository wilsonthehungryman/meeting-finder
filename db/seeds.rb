
winnipeg_timezone = TZInfo::Timezone.get('America/Winnipeg')

alcoholics_anonymous = RecoveryCommunity.find_or_create_by(
  name: "Alcoholics Anonymous",
  description: "A twelve step approach to recovery.",
  acronym: "AA"
)

recovery_dharma = RecoveryCommunity.find_or_create_by(
  name: "Recovery Dharma",
  description: "A Buddhist-based path to recovery from addiction.",
  acronym: "RD"
)

recovery_dharma_wednesday_location = Location.find_or_create_by(
  name: "Executive Medical Solutions",
  street_address: "3408 Roblin Boulevard",
  city: "Winnipeg",
  province: "Manitoba",
  country: "Canada",
  wheelchair_accessible: true
)

Meeting.find_or_create_by(
  source: "Manual",
  time: Time.new(2025, 11, 12, 19, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: recovery_dharma,
  location: recovery_dharma_wednesday_location
)

recovery_dharma_thursday_location = Location.find_or_create_by(
  name: "Centre for Spiritual Living",
  street_address: "625 Spruce Street",
  city: "Winnipeg",
  province: "Manitoba",
  country: "Canada",
  wheelchair_accessible: false
)

Meeting.find_or_create_by(
  source: "Manual",
  time: Time.new(2025, 11, 13, 19, 30, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: recovery_dharma,
  location: recovery_dharma_thursday_location
)

recovery_dharma_saturday_location = Location.find_or_create_by(
  name: "Earl Grey Community Centre",
  street_address: "360 Cockburn Street North",
  city: "Winnipeg",
  province: "Manitoba",
  country: "Canada",
  wheelchair_accessible: false
)

Meeting.find_or_create_by(
  source: "Manual",
  time: Time.new(2025, 11, 15, 9, 30, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: recovery_dharma,
  location: recovery_dharma_saturday_location
)
