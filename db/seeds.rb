# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create(:title => '名探偵ピカチュウ', :day => '2019年5月3日〜', :caption => 'かつてポケモンのことが大好きな少年だったティムは、ポケモンに関わる事件の捜査へ向かったきり、家に戻らなかった父親・ハリーとポケモンを、遠ざけるようになってしまった。それから年月が経ち、大人になったティムのもとにある日、ハリーと同僚だったというヨシダ警部補から電話がかかってくる。「お父さんが事故で亡くなった―」。複雑な思いを胸に残したまま、ティムは人間とポケモンが共存する街・ライムシティへと向かう。荷物を整理するため、ハリーの部屋へと向かったティムが出会ったのは、自分にしか聞こえない人間の言葉を話す、名探偵ピカチュウだった。-TOHO CINEMAS サイトより-', :category => 'アクション・ミステリー', :country => '洋画')

Movie.create(:title => 'コンフィデンスマンJP', :day => '2019年5月17日〜', :caption => '華麗に大胆に人を騙し続ける百戦錬磨のコンフィデンスマン（＝信用詐欺師）ダー子、ボクちゃん、リチャード。次なるオサカナ（＝ターゲット）は、香港マフィアの女帝で、その冷酷さから＜氷姫＞という異名をもつラン・リウ。彼女が持つと言われている伝説のパープルダイヤを狙って、3人は香港へ。ランに取り入ろうと様々な策を講じるが、なかなかエサに食いつかず苦戦する。そんな中、天才詐欺師ジェシーが現れ、同じくランを狙っていることがわかる。そして以前ダー子達に騙され恨みを持つ日本のヤクザ・赤星の影もちらつき始め、事態は予測不可能な展開に。騙し騙されの三つ巴の戦いを制するのは誰なのか！？史上最大のコンゲームが始まる！-TOHO CINEMAS サイトより-', :category => 'コメディ', :country => '邦画')
