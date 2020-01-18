array=( 1 2 3 4 5 6 7 8 9 0 a b c d e f )
MAXCOUNT=5
count=1
network=2001:470:c1e8:

rnd_ip_block ()
{
    a=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    b=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    c=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    d=${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}${array[$RANDOM%16]}
    echo "added $network:$a:$b:$c:$d to he-ipv6"
    ip -6 addr add "$network:$a:$b:$c:$d/128" dev he-ipv6
}

echo "$MAXCOUNT IPv6:"
echo "-----------------"
while [ "$count" -le $MAXCOUNT ]
do
        rnd_ip_block
        let "count += 1"
        done
echo "-----------------"
