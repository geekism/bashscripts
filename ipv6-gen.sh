array=( 1 2 3 4 5 6 7 8 9 0 a b c d e f )
MAXCOUNT=20
count=1
network=2001:470:c1e8:

rnd_ip_block ()
{
    a=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    b=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    c=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    d=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    echo $network:$a:$b:$c:$d
}

echo "$MAXCOUNT IPv6:"
echo "-----------------"
while [ "$count" -le $MAXCOUNT ]        # Генерация 20 ($MAXCOUNT) случайных чисел.
do
        rnd_ip_block
        let "count += 1"                # Нарастить счетчик.
        done
echo "-----------------"
