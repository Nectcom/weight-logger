
     ,-----.,--.                  ,--. ,---.   ,--.,------.  ,------.
    '  .--./|  | ,---. ,--.,--. ,-|  || o   \  |  ||  .-.  \ |  .---'
    |  |    |  || .-. ||  ||  |' .-. |`..'  |  |  ||  |  \  :|  `--, 
    '  '--'\|  |' '-' ''  ''  '\ `-' | .'  /   |  ||  '--'  /|  `---.
     `-----'`--' `---'  `----'  `---'  `--'    `--'`-------' `------'
    ----------------------------------------------------------------- 


Welcome to your Rails project on Cloud9 IDE!

To get started, just do the following:

1. Run the project with the "Run Project" button in the menu bar on top of the IDE.
2. Preview your new app by clicking on the URL that appears in the Run panel below (https://weight-logger-nect.c9users.io/).

Happy coding!
The Cloud9 IDE team


## Support & Documentation

Visit http://docs.c9.io for support, or to learn more about using Cloud9 IDE. 
To watch some training videos, visit http://www.youtube.com/user/c9ide

## Weight Logger
For record my weight.
For check my weight history.
For analyze my helth to good life.

## My Goal

* 体重計に乗るたびに自動で記録を送信してくれる
* ユーザー情報をもとにBMIを計算してDashboardに表示する
* 過去1ヶ月の推移をグラフ化する
* 記録をTwitterへ投げる(Optional)

## Page Move

* Login Page
    * Userモデルにあるユーザー照合してログインする
    * Twitterと連携する(Optional)
    * ログインしたらDashboardへ遷移する
* Dashboard(Index)
    * 1ヶ月の体重グラフ
    * BMI
    * 現在の体重を表示する
    * Login以外の各ページへ遷移する(Navber)
    * LogoutしたらLogin Pageへ遷移する
* UserProfile
    * Userの身長・年齢・性別・Twitter(Optional)を変更する
* Weight Graph
* Weight Data List