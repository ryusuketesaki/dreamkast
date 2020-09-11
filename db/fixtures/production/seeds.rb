if ENV['REVIEW_APP'] == 'true'
  csv = CSV.read(File.join(Rails.root, 'db/talks.csv'), headers: true)
  Talk.seed(csv.map(&:to_hash))

  csv = CSV.read(File.join(Rails.root, 'db/speakers.csv'), headers: true)
  Speaker.seed(csv.map(&:to_hash))

  TalksSpeaker.delete_all
  csv = CSV.read(File.join(Rails.root, 'db/talks_speakers.csv'), headers: true)
  TalksSpeaker.seed(csv.map(&:to_hash))
  
  Video.seed(
    { id: 1, talk_id: 1, site: "vimeo", video_id: "444387842", on_air: true, slido_id: "styoi2cj"},
    { id: 2, talk_id: 2, site: "vimeo", video_id: "442363621", on_air: true, slido_id: "3jtfhpkv"},
    { id: 3, talk_id: 3, site: "vimeo", video_id: "334092219", on_air: true, slido_id: "1qev4oju"},
    { id: 4, talk_id: 4, site: "vimeo", video_id: "410005892", on_air: true, slido_id: "tl9tdhei"},
    { id: 5, talk_id: 5, site: "vimeo", video_id: "303648115", on_air: true, slido_id: "raigsrzj"},
    { id: 6, talk_id: 6, site: "vimeo", video_id: "417159783", on_air: true, slido_id: "maxjcvxp"},
    { id: 7, talk_id: 7, site: "vimeo", video_id: "442385897", on_air: false, slido_id: "styoi2cj"},
    { id: 8, talk_id: 8, site: "vimeo", video_id: "444712888", on_air: false, slido_id: "3jtfhpkv"},
    { id: 9, talk_id: 9, site: "vimeo", video_id: "443856794", on_air: false, slido_id: "1qev4oju"},
  )
end

Sponsor.seed(
  {
    id: 1,
    name: "日本アイ・ビー・エム株式会社",
    abbr: "ibm",
    conference_id: 1,
    url: "https://www.ibm.com/jp-ja/cloud/cloud-native"
  },
  {
    id: 2,
    name: "レッドハット株式会社",
    abbr: "redhat",
    conference_id: 1,
    url: "https://www.redhat.com/ja/global/japan#links"
  },
  {
    id: 3,
    name: "JFrog Japan株式会社",
    abbr: "jfrog",
    conference_id: 1,
    url: "https://jfrog.co.jp/"
  },
  {
    id: 4,
    name: "New Relic株式会社",
    abbr: "newrelic",
    conference_id: 1,
    url: "https://newrelic.co.jp/"
  },
  {
    id: 5,
    name: "CircleCI合同会社",
    abbr: "circleci",
    conference_id: 1,
    url: "https://circleci.com/ja/"
  },
  {
    id: 6,
    name: "F5ネットワークスジャパン合同会社",
    abbr: "nginx",
    conference_id: 1,
    url: "https://www.nginx.co.jp/"
  },
  {
    id: 7,
    name: "日本オラクル株式会社",
    abbr: "Oracle",
    conference_id: 1,
    url: "https://www.oracle.com/jp/index.html"
  },
  {
    id: 8,
    name: "日本マイクロソフト株式会社/Microsoft Corporation",
    abbr: "microsoft",
    conference_id: 1,
    url: "https://news.microsoft.com/ja-jp/"
  },
  {
    id: 9,
    name: "株式会社サイバーエージェント",
    abbr: "cyberagent",
    conference_id: 1,
    url: "https://developers.cyberagent.co.jp/"
  },
  {
    id: 10,
    name: "富士通株式会社",
    abbr: "fujitsu",
    conference_id: 1,
    url: "https://www.fujitsu.com/jp/"
  },
  {
    id: 11,
    name: "サイオステクノロジー株式会社",
    abbr: "sios",
    conference_id: 1,
    url: "https://sios.jp/"
  },
  {
    id: 12,
    name: "株式会社エヌ・ティ・ティ・データ",
    abbr: "nttdata",
    conference_id: 1,
    url: "https://www.nttdata.com/jp/ja/"
  },
  {
    id: 13,
    name: "株式会社カサレアル",
    abbr: "casareal",
    conference_id: 1,
    url: "https://www.casareal.co.jp/"
  },
  {
    id: 14,
    name: "株式会社はてな",
    abbr: "hatena",
    conference_id: 1,
    url: "https://mackerel.io"
  },
  {
    id: 15,
    name: "Sysdig Japan合同会社",
    abbr: "sysdig",
    conference_id: 1,
    url: "https://sysdig.jp"
  },
  {
    id: 16,
    name: "Canonical/Ubuntu",
    abbr: "canonical",
    conference_id: 1,
    url: "https://jp.ubuntu.com/"
  },
  {
    id: 17,
    name: "GMOペパボ株式会社",
    abbr: "pepabo",
    conference_id: 1,
    url: "https://pepabo.com/"
  },
  {
    id: 18,
    name: "株式会社ディバータ",
    abbr: "kuroco",
    conference_id: 1,
    url: "https://kuroco.app/"
  },
  {
    id: 19,
    name: "グーグル・クラウド・ジャパン合同会社",
    abbr: "google",
    conference_id: 1,
    url: 'https://cloud.google.com/anthos'
  },
  {
    id: 20,
    name: '株式会社LegalForce',
    abbr: 'legalforce',
    conference_id: 1,
    url: 'https://www.legalforce.co.jp/'
  },
  {
    id: 21,
    name: 'SUSE ソフトウエア ソリューションズ ジャパン株式会社',
    abbr: 'suse',
    conference_id: 1,
    url: 'https://www.suse.com/ja-jp/solutions/devops/'
  },
  {
    id: 22,
    name: 'ヴイエムウェア株式会社',
    abbr: 'vmware',
    conference_id: 1,
    url: 'https://www.vmware.com/jp.html'
  },
  {
    id: 23,
    name: 'ミランティス・ジャパン株式会社',
    abbr: 'mirantis',
    conference_id: 1,
    url: 'https://www.mirantis.co.jp/'
  },
  {
    id: 24,
    name: 'Elastic',
    abbr: 'elastic',
    conference_id: 1,
    url: 'https://www.elastic.co'
  },
  {
    id: 25,
    name: 'Plaid',
    abbr: 'Plaid',
    conference_id: 1,
    url: 'https://plaid.co.jp/'
  },
  {
    id: 26,
    name: '日本電気株式会社',
    abbr: 'nec',
    conference_id: 1,
    url: 'https://jpn.nec.com/'
  },
  {
    id: 27,
    name: 'Rancher Labs, Inc.',
    abbr: 'rancherlabs',
    conference_id: 1,
    url: 'https://www.rancher.co.jp/'
  },
  {
    id: 28,
    name: 'Linux Foundation',
    abbr: 'lf',
    conference_id: 1,
    url: 'https://www.cncf.io/'
  },
)

SponsorType.seed(
  { id: 1,
    conference_id: 1,
    name: "Diamond",
    order: 2,
  },
  { id: 2,
    conference_id: 1,
    name: "Platinum",
    order: 3,
  },
  { id: 3,
    conference_id: 1,
    name: "Gold",
    order: 4,
  },
  { id: 4,
    conference_id: 1,
    name: "Mini Session",
    order: 6,
  },
  { id: 5,
    conference_id: 1,
    name: "Booth",
    order: 5,
  },
  { id: 6,
    conference_id: 1,
    name: "CM",
    order: 7,
  },
  { id: 7,
    conference_id: 1,
    name: "Tool",
    order: 8,
  },
  { id: 8,
    conference_id: 1,
    name: "Special Collaboration",
    order: 1,
  }
)

[
  [1, 'Diamond', 'ibm'],
  [2, 'Diamond', 'redhat'],
  [3, 'Diamond', 'jfrog'],
  [4, 'Diamond', 'NewRelic'],
  [5, 'Platinum', 'circleci'],
  [6, 'Platinum', 'nginx'],
  [7, 'Platinum', 'oracle'],
  [8, 'Platinum', 'microsoft'],
  [9, 'Platinum', 'google'],
  [10, 'Platinum', 'legalforce'],
  [11, 'Platinum', 'suse'],
  [12, 'Platinum', 'vmware'],
  [13, 'Gold', 'cyberagent'],
  [14, 'Gold', 'fujitsu'],
  [15, 'Gold', 'sios'],
  [16, 'Gold', 'nttdata'],
  [17, 'Gold', 'casareal'],
  [18, 'Gold', 'hatena'],
  [19, 'Gold', 'sysdig'],
  [20, 'Booth', 'canonical'],
  [21, 'Booth', 'circleci'],
  [22, 'Booth', 'nginx'],
  [23, 'Booth', 'ibm'],
  [24, 'Booth', 'pepabo'],
  [25, 'Booth', 'legalforce'],
  [26, 'Mini Session', 'ibm'],
  [27, 'CM', 'canonical'],
  [28, 'CM', 'ibm'],
  [29, 'CM', 'kuroco'],
  [30, 'CM', 'fujitsu'],
  [31, 'CM', 'legalforce'],
  [32, 'Gold', 'mirantis'],
  [33, 'Booth', 'Elastic'],
  [34, 'Tool', 'Plaid'],
  [35, 'Gold', 'nec'],
  [36, 'Platinum', 'rancherlabs'],
  [37, 'Booth', 'rancherlabs'],
  [38, 'Special Collaboration', 'lf'],
  [39, 'Booth', 'redhat'],
].each do |sponsors_sponsor_type|
  id = sponsors_sponsor_type[0]
  sponsor_type = SponsorType.find_by(name: sponsors_sponsor_type[1])
  sponsor = Sponsor.find_by(abbr: sponsors_sponsor_type[2])
  SponsorsSponsorType.seed({id: id, sponsor_type_id: sponsor_type.id, sponsor_id: sponsor.id})
  if sponsors_sponsor_type[1] == 'Booth'
    Booth.seed(:conference_id, :sponsor_id) do |s|
      s.conference_id = 1
      s.sponsor_id = sponsor.id
      s.published = false
    end
  end
end

[
  [1, 'canonical', 'sponsors/canonical.png'],
  [2, 'casareal', 'sponsors/casareal.png'],
  [3, 'circleci', 'sponsors/circleci.png'],
  [4, 'cyberagent', 'sponsors/cyberagent.png'],
  [5, 'kuroco', 'sponsors/diverta.png'],
  [6, 'nginx', 'sponsors/f5.jpg'],
  [7, 'fujitsu', 'sponsors/fujitsu.png'],
  [8, 'pepabo', 'sponsors/gmo-pepabo.png'],
  [9, 'google', 'sponsors/google.png'],
  [10, 'hatena', 'sponsors/hatena.png'],
  [11, 'ibm', 'sponsors/ibm.jpg'],
  [12, 'jfrog', 'sponsors/jfrog.png'],
  [13, 'legalforce', 'sponsors/legalforce.png'],
  [14, 'microsoft', 'sponsors/microsoft.png'],
  [15, 'nttdata', 'sponsors/nttdata.png'],
  [16, 'oracle', 'sponsors/oracle.png'],
  [17, 'rancherlabs', 'sponsors/rancherlabs.png'],
  [18, 'redhat', 'sponsors/redhat.png'],
  [19, 'sios', 'sponsors/sios.png'],
  [20, 'sysdig', 'sponsors/sysdig.png'],
  [21, 'NewRelic', 'sponsors/newrelic.png'],
  [22, 'suse', 'sponsors/suse.png'],
  [23, 'vmware', 'sponsors/vmware.png'],
  [24, 'mirantis', 'sponsors/mirantis.png'],
  [25, 'Elastic', 'sponsors/elastic.png'],
  [26, 'Plaid', 'sponsors/plaid.png'],
  [27, 'nec', 'sponsors/nec.png'],
  [28, 'lf', 'sponsors/cncf.jpg'],
].each do |logo|
  SponsorAttachment.seed(
    { id: logo[0],
      sponsor_id: Sponsor.find_by(abbr: logo[1]).id,
      type: 'SponsorAttachmentLogoImage',
      url: logo[2]
    }
  )
end