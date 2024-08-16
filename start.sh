if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Priyanka9760/Aj_Flix_Hub_Fliter_Bot.git /Aj_Flix_Hub_Fliter_Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Aj_Flix_Hub_Fliter_Bot
fi
cd /TheMovieProviderBot
pip3 install -U -r requirements.txt
echo "Starting Aj_Flix_Hub_Fliter_Bot...."
python3 bot.py
