
# gunplayのオプションについて
# http://qiita.com/t_uda/items/39f1fd470ea9a4780a74

# gnuplot + Tikzでの図作成について
# http://qiita.com/t-sugino/items/f5615f7f38038346efef



set terminal tikz
set datafile separator ","

set output './sample.tex'


plot\
"./data2.csv" using 1:2 title "Totally ordered trees" ps 1.7 pt 4 lc "black",\
"./data2.csv" using 1:3 title "Not totally ordered trees" ps 1.7 pt 6 lc "black"


set key inside right top nobox
#set key nobox below
#unset key

#x, y軸ラベルを書き込む
set ylabel "Sum of availabilities in $k$-Com subgraphs"
set xlabel "The Number of Nodes"

#x, y表示幅の設定
set xrange[0:110]
set yrange[0.4:0.6]

# set autoscale x
# set autoscale y

set xtics(25, 50, 75, 100)
#set ytics(25, 50, 75, 100)



#x, y座標を指定してlabelを書き込む
#set label 1 'tree 0' at 0.513160789651816,0.364034069544402 center
#set label 2 'tree 46' at 0.6153251313485925,0.33365837057830067 center
