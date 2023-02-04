class FormModels::Industry < ActiveHash::Base
  self.data = [
    { id: 1, name: '選択してください', disabled: true},
    { id: 2, name: '～製造業関連～', disabled: true},
    { id: 3, name: '電気機器製造業'},
    { id: 4, name: '通信機器関連製造業'},
    { id: 5, name: '電子部品/デバイス/電子回路製造業'},
    { id: 6, name: '自動車/輸送用機器製造業'},
    { id: 7, name: '産業用/事務用機器製造業'},
    { id: 8, name: '食料品/飲料製造業'},
    { id: 9, name: '医薬品/化学製品製造'},
    { id: 10, name: '素材関連製造業'},
    { id: 11, name: 'IT関連製造業'},
    { id: 12, name: 'その他の製造業'},
    { id: 13, name: '～電気・ガス・水道業関連～', disabled: true},
    { id: 14, name: '発電事業者'},
    { id: 15, name: '一般送配電事業者'},
    { id: 16, name: '小売電気事業者'},
    { id: 17, name: 'ガス/水道業'},
    { id: 18, name: 'その他の公益事業関連'},
    { id: 19, name: '～流通・サービス業関連～', disabled: true},
    { id: 20, name: '商社/販社/卸'},
    { id: 21, name: '小売/流通（IT関連製品外）'},
    { id: 22, name: '金融（銀行/証券/保険など）'},
    { id: 23, name: '運輸/郵便業'},
    { id: 24, name: '放送/出版/メディア'},
    { id: 25, name: 'インターネット関連メディア'},
    { id: 26, name: '旅行/ホテル/レジャー業'},
    { id: 27, name: '外食業'},
    { id: 28, name: '広告代理店/PR会社'},
    { id: 29, name: '印刷/DTP'},
    { id: 30, name: '広告制作/デザイン'},
    { id: 31, name: '専門職（弁護士/公認会計士/税理士など）'},
    { id: 32, name: 'コンサルティング'},
    { id: 33, name: 'その他のサービス業'},
    { id: 34, name: '～その他業種～', disabled: true},
    { id: 35, name: '映像/音楽産業'},
    { id: 36, name: '医療/福祉/病院'},
    { id: 37, name: '農林/水産/鉱業'},
    { id: 38, name: '建設業'},
    { id: 39, name: '住宅/不動産'},
    { id: 40, name: '政府/官公庁/団体'},
    { id: 41, name: '地方自治体'},
    { id: 42, name: '学校/教育機関'},
    { id: 43, name: '研究所（民間/公共）'},
    { id: 44, name: '自営業/独立事業者'},
    { id: 45, name: '学生'},
    { id: 46, name: '勤めていない'},
    { id: 47, name: '～ITサービス業関連～', disabled: true},
    { id: 48, name: 'ソフトウェアベンダー'},
    { id: 49, name: '受託開発/情報処理サービス'},
    { id: 50, name: '組み込み系ソフトウェア'},
    { id: 51, name: 'データセンター事業者'},
    { id: 52, name: 'クラウド系ベンダー'},
    { id: 53, name: 'SaaS系ベンダー'},
    { id: 54, name: 'Webサイト制作'},
    { id: 55, name: 'Webマーケティング支援'},
    { id: 56, name: '通信事業者'},
    { id: 57, name: 'インターネットサービスプロバイダ'},
    { id: 58, name: 'その他の情報サービス業'},
    { id: 59, name: '該当なし'},
  ]
end

