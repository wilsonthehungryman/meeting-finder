
winnipeg_timezone = TZInfo::Timezone.get('America/Winnipeg')

# --------- Recovery Dharma -------------------
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
  source: "https://recoverydharmawinnipeg.org/",
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
  source: "https://recoverydharmawinnipeg.org/",
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
  source: "https://recoverydharmawinnipeg.org/",
  time: Time.new(2025, 11, 15, 9, 30, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: recovery_dharma,
  location: recovery_dharma_saturday_location
)


# ------------- Alcoholics Anonymous ----------
alcoholics_anonymous = RecoveryCommunity.find_or_create_by(
  name: "Alcoholics Anonymous",
  description: "A twelve step approach to recovery.",
  acronym: "AA"
)

a_action_location = Location.create_or_find_by(
  name: "A Action",
  street_address: "3010 Portage Ave",
  city: "Winnipeg",
  province: "Manitoba",
  country: "Canada",
  postal_code: "R3K 0X8",
  wheelchair_accessible: true
)

# Monday
Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 10, 10, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 10, 12, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 10, 18, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 10, 20, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

# Tuesday
Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 11, 10, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 11, 12, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 11, 18, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 11, 20, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

# Wednesday
Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 12, 10, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 12, 12, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 12, 18, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 12, 20, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

# Thursday
Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 13, 10, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 13, 12, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 13, 18, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 13, 20, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

# Friday
Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 14, 10, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 14, 12, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 14, 18, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 14, 20, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

# Saturday
Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 15, 12, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 15, 18, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 15, 20, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

# Sunday
Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 16, 9, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 16, 12, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 16, 16, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 16, 18, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)

Meeting.create_or_find_by(
  source: "https://aamanitoba.org/meetings/a-action-2?distance=NaN",
  time: Time.new(2025, 11, 16, 20, 0, 0, winnipeg_timezone),
  meeting_type: "In Person",
  recurring: true,
  recovery_community: alcoholics_anonymous,
  location: a_action_location
)
