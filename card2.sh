echo'
.__             __                 __        __                                                      __                
|  | _____    _/  |______ _______ |__| _____/  |______       ____   ____   ____   ________________ _/  |_  ___________ 
|  | \__  \   \   __\__  \\_  __ \|  |/ __ \   __\__  \     / ___\_/ __ \ /    \_/ __ \_  __ \__  \\   __\/  _ \_  __ \
|  |__/ __ \_  |  |  / __ \|  | \/|  \  ___/|  |  / __ \_  / /_/  >  ___/|   |  \  ___/|  | \// __ \|  | (  <_> )  | \/
|____(____  /  |__| (____  /__/\__|  |\___  >__| (____  /  \___  / \___  >___|  /\___  >__|  (____  /__|  \____/|__|   
          \/             \/   \______|    \/          \/  /_____/      \/     \/     \/           \/                   
'


for i in  {0..9}; do
	#	r=$(($RANDOM *100000000))
		r=$(($RANDOM *111111111)) 
		r=$(($r$i))
done

echo 53$r >> card2.txt

echo "Numero dos cartoes: "
if(( $(wc -m "card2.txt"|cut -d " " -f1)>16));then
grep "53" card2.txt| grep -E '[0-9]{16}'
echo 53$r >> card.txt
fi
