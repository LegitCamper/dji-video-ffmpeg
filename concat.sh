echo "Enter the number of videos to combine"
read number

for count in $(seq $number)
do
  echo "Enter the next clip number"
  read clip_num
  # this only works for 2 digit clips
  clip="DJI_00${clip_num}.MP4 "
  echo file $clip >> list.txt
done

ffmpeg -f concat -i list.txt -c copy output.mp4

rm list.txt
