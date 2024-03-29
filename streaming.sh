count=0

str0="What's in a name? That which we call a rose by any other name would smell as sweet."
str1="By the pricking of my thumbs, Something wicked this way comes. Open, locks, Whoever knocks!"
str2="Fair is foul, and foul is fair: Hover through the fog and filthy air."
str3="All that glitters is not gold"
str4="Brevity is the soul of wit."
str5="To thine own self be true, and it must follow, as the night the day, thou canst not then be false to any man."
str6="The course of true love never did run smooth."
str7="If music be the food of love, play on."
str8="These violent delights have violent ends..."
str9="The lady doth protest too much, methinks."

echo "Container started!!"

cp -r code local/
cp -r data local/
cp -r images local/
cp -r streams local/

while :
do
  rng=$(($RANDOM%10))
  line_id=str${rng}
  line=$(eval "echo \${$line_id}")

  msg="$(date) $line"

  echo $msg
  echo $msg >> ./local/streams/large/fast
  echo $msg >> ./local/streams/small/fast

  if [ $(($count%50)) == 0 ]; then
    echo $msg >> ./local/streams/large/slow
    echo $msg >> ./local/streams/small/slow
  fi

  count=$(($count+1))

  sleep .2
done
