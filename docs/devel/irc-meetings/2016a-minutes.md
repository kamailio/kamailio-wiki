# Chat log IRC Devel Meeting - 2016-04-21

## introductions and chat

**miconda:** going to start in few minutes …  
**marrold:** o/  
**Guest55581: Hiabalashov:** Felicitations!  
**eschmidbauer:** hi  
**miconda: draft of the agenda is here:**
https:*www.kamailio.org/wiki/devel/irc-meetings/2016a  
**miconda:** we wait few more minutes, maybe oej-mobile can get at the
desk  
**miconda:** anything else to add to agenda?  
**drLester:** hi  
**miconda:** list here the topics  
**abalashov:** The new Spiritual Technology module? :)  
**eschmidbauer-mbp:** we have written a new module  
**miconda:** that’s a whole meeting by itself, I let it for you to
organize  
**eschmidbauer-mbp:** it's in testing  
**miconda: eschmidbauer-mbp:** nice, waiting for the pull request  
**eschmidbauer-mbp:** it's the NSQ version of kazoo's module  
**miconda:** what’s about … I think you told me some bits  
**miconda:** so just a connector, without kazoo specific features  
**eschmidbauer-mbp:** connect to NSQ and receive messages. just like the
kazoo module, it executes event routes based on the json message
received  
**oej-mobile:** What is nsq  
**eschmidbauer-mbp:** message queue  
-- oej-mobile walking  
**eschmidbauer-mbp:** http:*nsq.io/  
**abalashov:** It's probably a whole topic unto itself, but in my humble
opinion, there should be a generic AMQP connector module without
Kazoo-specific features.  
**abalashov:** Along the same premise.  
**oej-mobile:** We may Consider a generic approach  
**eschmidbauer-mbp:** the only thing kazoo specific about the kazoo
module is the name kazoo everywhere  
**abalashov:** The Kamailio project is not and should not be responsible
for forward-porting and maintaining a module that is essentially an
element of a single third-party system, and the Kazoo AMQP module is not
useful without it.  
**abalashov: eschmidbauer-mbp:** No, the Kazoo module is not a complete
generic AMQP connector. It's designed to talk to Kazoo.  
**miconda: eschmidbauer-mbp:** kazoo does some presence tricks  
**eschmidbauer-mbp:** it's not necessarily designed to talk with Kazoo  
**eschmidbauer-mbp:** it's designed to talk with rabbitmq  
**abalashov:** Well, yes and no.  
**miconda: eschmidbauer-mbp:** but besides that can be used as
connector  
**abalashov:** It is designed to talk to RabbitMQ, but in a way that is
highly Kazoo-oriented, is how I'd put it.  
**eschmidbauer-mbp:** you can certainly use kazoo module without kazoo
platform  
**miconda:** i think that pua module set to 0 turns off all the presence
interactions  
**eschmidbauer-mbp:** the module is really designed to control presence
via message queue  
**miconda:** oej-mobile is going to be soon oej-pstn …  
-- abalashov grins  
**abalashov: eschmidbauer-mbp:** Right -- and it seems to me that is not
the same as a generic AMQP connector.  
**abalashov: eschmidbauer-mbp:** The latter of which would be more
useful.  
**eschmidbauer-mbp:** i agree.. it's not generic  
-- oej-mobile oej-isdn  
**abalashov:** Yep. So, the question is, why is the Kamailio project
badly in need of a module that more or less performs a specific function
within Kazoo?  
**eschmidbauer-mbp:** and im not here to defend mod kazoo. i just see
the usefulness of it \*without\* kazoo platform  
**eschmidbauer-mbp:** you can control presence via mod kazoo + rabbitmq
without using kazoo platform at all  
**abalashov:** Talking to AMQP is of course very useful. I think it
should be implemented generically. If I could just find the time... I've
been meaning to contribute.  
**eschmidbauer-mbp:** it should really be called presence_rabbitmq or
something like that  
**abalashov:** Right, I think what I'm saying is that a generic AMQP
connector that doesn't do presence per se would be most useful.  
**eschmidbauer-mbp:** right... essentially the module receives json
messages from rabbitmq and executes eventroutes  
**eschmidbauer-mbp:** they have eventroutes which update presence from
the json  
**abalashov:** But in general, the Kazoo module strikes me as something
analogous to creating some sort of RDBM/SQL DB module that is designed
to implement some small subset of a specific product/service and that is
complementary to that product.  
**eschmidbauer-mbp:** but you could use it to do anything that an event
route is capable of  
**abalashov:** Like, in principle, you could use it as a transport for
generic DB interactions, but it's very obviously not intended for
that.  
**abalashov:** It's more of a side effect.  
-- oej back in the office  
**miconda: eschmidbauer-mbp:**
<https://github.com/kamailio/kamailio/issues/530> - so there is a config
option to turn off those internal tricks with pua, which should be
documented  
**abalashov:** Sounds like we have a quorum. A call to order then?  
**miconda:** anyhow  
**eschmidbauer-mbp:** yeah. sorry to divert  
**miconda:** looks like we can start …  
**miconda:** waiting for eschmidbauer-mbp to make a pull request to
merge his nsq module  
**miconda:** till then, let’s start the discussion here  
**miconda:** —— main open issues  
===== Main Open Issues ===== **miconda:** anyone aware of anything
critical?  
**miconda:** not reported or reported but no reaction …  
**abalashov:** One of the amazing virtues of your project leadership is
that this seldom happens. :-)  
**qxork:** =)  
**miconda:** :-)  
**abalashov:** I've never seen such a high response / acknowledgment
rate in any other FOSS project I've been involved with. Hat tip.  
**oej:** Agree!  
**qxork:** I had a critical issue resolved in less than 24 hours I
think. Couldn't be happier.  
**miconda:** thanks, I like sleeping during the night, so if it an
issue, it’s better to be fixed before someone calls me :-)  
**drLester:** the biggest issue I'm seeing now it's the crash of cnxcc
module  
**abalashov:** (All meetings must begin with praise of the leadership
... this is a Soviet custom.)  
**drLester:** biggest for me because I'm using it :)  
**miconda: drLester:** yep, cnxcc is sort of not properly maintained  
**oej:** Found a deadlock in usrloc/registrar today  
**eschmidbauer-mbp:** +1  
**miconda:** its main developer is not much active  
**abalashov: miconda:** Has the author moved onto other pastures
employment-wise?  
**miconda:** perhaps I should try to check it a bit, although I am not
using it  
**miconda: abalashov:** he started a startup on webrtc  
**drLester:** since I worked a little on it recently (I'm Federico) I
had a look on the dump and finally I can reproduce the crash  
**abalashov:** Ah.  
**miconda:** :-)  
**miconda: drLester:** Federico from tsilo?  
**drLester:** but looks like the whole data structures are corrupted  
**abalashov:** Unfortunately, this is the reality with a lot of the
modules; someone was employed/sponsored by a company to write it, but
then they move on, and there's just no further maintenance from them.
It's probably an unavoidable fact of life in the entire FOSS world.  
**drLester:** yes that's me :)  
**miconda: abalashov:** true, I don’t have much time for all the stalled
modules  
**abalashov:** No, and your attention can't grow in scope forever and
ever.  
**miconda:** at some point we need to move some to obsolete  
**linuxmaniac:** this is life, if nobody care, just kill it  
**abalashov:** It has led me to the thought that perhaps we need "core
maintained modules that are serious" and a kind of kamailio-contrib
universe separate from that...  
**miconda:** already thinking of those reminiscent ser modules prefixed
with uid\_\*  
**miconda:** cnxcc is not a bad one, but quite useful, just that I never
got to use it  
**oej:** I think it's a good idea to have an end-of-life process
**qxork:** sometimes you have to cut weight to move forward  
**miconda:** i try to avoid charging per minute :-)  
**abalashov:** If for no other reason than to manage your workload
better. You can't maintain an ever-expanding universe of third-party
contributions of varying quality and maintenance commitment, which
implement features you may not be especially familiar with or
enthusiastic about, etc.  
**drLester:** yes, cnxcc can be very useful to provide call control
without he need of having a diameter server  
**linuxmaniac:** if the maintainer doesn't respond... and nobody steps
up, we should move it to obsolete  
**drLester:** I'm trying to get into the internals and I'd be happy to
try to maitain it  
**abalashov:** I don't think it's a question of whether the module is
useful. We just have hundreds of modules, at least some of which are not
really being seriously maintained, but are all endorsed on an equal
level in the modules list & docs.  
**drLester:** agree  
**linuxmaniac:** the only thing they have to do is not fail to build  
**miconda:** ok — so cnxcc needs some attention, maybe we can hammer it
if we manage to get to a face to face devel session later this year
(proposed by oej , to be discussed later today)  
**abalashov:** My thinking is that there should be a smaller subset of
core modules that are part of active project maintenance and then some
sort of -contrib world, but that's just me.  
**abalashov: linuxmaniac:** To me, that's not a very high standard. It
can compile cleanly and yet be broken. :-)  
**linuxmaniac:** that is what we have nowe  
**linuxmaniac:** now  
**miconda:** yes. from project point of view, that’s what we have now  
**linuxmaniac:** I'm just saying what is happening right now  
-- abalashov nods  
**miconda:** and maybe with addition of some testing framework we can
add some more selective rules  
**miconda:** to be sure it loads, etc…  
**oej:** We may also want to have a list of current maintainers, like
who's bothering with stuff like kazoo, carrier etc  
**linuxmaniac:** that is the point, right now we don't now if a module
works  
**oej:** Stuff that's produced by one company and fine so long as they
maintain it  
**abalashov:** But then what happens is a year later someone shows up on
the list and is like, "WTF? Why doesn't the DogWalk module work, why is
the documentation out of date, and why am I running out of SHM after 2
minutes?"  
**oej:** ANd some informal maintainers, like I've been banging my head
against the snmp module  
**oej:** I think the list is in miconda's head, but that we need to
export it from there  
**abalashov:** And most of the users and developers think . o 0 ( "The
DogWalk module? Oh... I guess we have one." )  
**miconda:** there is a wiki page for contributors/developers  
**linuxmaniac:** the git log is a good list  
**linuxmaniac:** git log -- module/xxxx  
**linuxmaniac:** until we have some kind of test is quite difficult to
know what is broken  
-- oej goes looking at the DogWalk README. It is not up to standards.  
**miconda:** to conclude — if someone wants to build a wiki page and add
\*wanted\* maintainers to some of the modules that don’t look active,
then we can try to find some  
**abalashov:** Fair enough. I didn't mean to derail the conversation.  
**tuxd00d:** Should each model be "certified" for each core version by
its maintainers?  
**tuxd00d:** Module\*  
**abalashov: linuxmaniac:** I'm not so much concerned with automated
testing of lots of exotic modules for niche functionality, just that
they all receive tender love and care by someone regularly.  
**oej:** Well, they need to be active at some point. We have the issue
with the SEAS module  
**abalashov: oej:** As far as I can tell the SNMP module is largely
useless, although there remains a great deal of enthusiasm for
monitoring via SNMP since so many traditional NMSs use it.  
**oej: side-note:** We should be able to load as many modules as
possible in a running kamailio. I have a lot of crashes trying  
**sipidronov:** I thought we had some plans about CI testing  
**oej: abalashov:** let's discuss snmp later then, I'm open for input  
**miconda: oej:** no open issues on that  
**oej:** You closed them all!!!! I will try again and open a lot more…
he he.  
**miconda: sipidronov:** yes, there are many plans :-) — important is to
get some actions  
**sipidronov:** =) oh, I see  
**oej: Let's have a competition:** The one with a kamailio with most
loaded modules running at kamailio-world gets a beer.  
**miconda:** deal  
**sipidronov:** Cause we could have not only source code contributed,
but CI tests as well  
**drLester:** just loaded or used to?  
**miconda: oej:** to clarify - like loading the module only  
**oej:** Let's start with loaded in an active kamailio  
**miconda:** and setting the mandatory params  
**oej:** Some stuff just crash there  
**oej:** right.  
**abalashov:** From a philosophical point of view this seems
unreasonable; not all modules are created equal. When someone tells me
that they have long Kamailio uptime, I tell them that what is important
is not uptime, but whether the proxy was processing \_good stuff\_.  
**abalashov:** The same applies to modules.  
**oej:** And later on documenting which parameters are mandatory in the
README  
**oej:** Yes, but I discovered a lot of crashes whcih we should not have
when loading modules. I am not saying anyone should run that way (like
asterisk autoload bleeeeh) but we can detect a lot of crashes this way  
**linuxmaniac: oej:** parameters need sane defaults  
**oej:** define "sane"  
**oej:** Let's get back on track. If we have one.  
**abalashov: oej:** We do!
https:*www.kamailio.org/wiki/devel/irc-meetings/2016a  
**oej:** We need a meeting for open discussions and some food  
**oej:** But that's later on the agenda  
**linuxmaniac:** so.. no open issues  
**miconda:** ok, so if we are done with the critical issues, then next
one  
===== xmlrpc return code ===== **miconda:**
http:*lists.sip-router.org/pipermail/sr-users/2016-April/092510.html  
**miconda:** ycaner is involved in it  
**ycaner:** hello  
**linuxmaniac:** return code?? should be http 4XX doesn't it?  
**miconda: to summarize:** the complain is that some rpc commands don’t
return data  
**miconda:** specially the reload ones  
**ycaner:** http return code and rpc return code is different in my
wiev  
**miconda: linuxmaniac:** if there is an error, it will be a different
response document  
**miconda:** with a rpc error code  
**linuxmaniac:** then, I see no problem  
**ycaner:** in xml spec there isnt any explain about when success  
**linuxmaniac:** reload... 200 ok  
**miconda:** however, my interpretation of rpc is that if there is no
data to be used, nothing should be returned  
**miconda:** and then is a baser 200ok http code plus the body with
empty rpc data  
**oej:** There is a religous war in the API world about this - should
the http response reflect the aPI response or not?  
**oej:** In most cases HTTP response indicates if an app runs or not,
and the data returned indicates if the app returns a failure  
**miconda: oej:** I think rpc has also large reply code numbers  
**oej:** so a 200 OK with a failure response in xmlrpc is fine  
**abalashov: oej:** I thought the general thinking is that the HTTP
response code should indicate a failure, but merely empty data or zero
affected entities or whatever should just return an empty set.  
**oej:** There is a spec for xmlrpc by dave winer somewhere  
**miconda:** well, what ycaner wanted (a push request is also open), was
to add to data of the rpc response the “200 ok"  
**qxork:** 200 ok would indicate api is ok, and returned value  
**miconda:** right now “kamcmd dispatcher.reload” has no data in
response  
**qxork:** to me anything else would be api error and not error of
module/data  
**miconda:** all is fine, nothing is needs to be returned  
**oej:** XMLrpc specification says "Response format  
**oej:** Unless there's a lower-level error, always return 200 OK.  
**oej:** "  
**oej:** http:*xmlrpc.scripting.com/spec.html  
**miconda:** and I think that are the specs saying  
**derrickb:** \\join #sems  
**miconda:** in my opinion would be better for the rpc client tool to
present more info  
**miconda:** e.g., all was ok  
**miconda:** rather than making the server side callback to write “200
ok” in the body of the response  
**miconda:** because “200 ok” is not a data returned due to running the
rpc callback  
**oej:** There are a few xmlrpc apps for OS/X I have used for testing
stuff  
**miconda:** adding the response code to the rpc data body means that
for each command returning useful data, some other field needs to be
there with the code (e.g., for dispatcher.dump, along with the records
from dispatcher memory have the “200 ok”)  
**miconda:** so far everything works fine with many xmlrpc clients  
**qxork:** isn't that required for being in xml spec?  
**miconda:** in xmlrpc specs it saying only the error code  
**miconda:** if no error element is present, then it was a success  
**qxork:** and return 200 ok.  
**miconda:** 200ok is the http return code that can be also for an rpc
execution error  
**miconda:** rpc execution error has the xml doc like:  
**miconda:** HTTP/1.1 200 OK  
**miconda: Connection:** close  
**miconda: Content-Length:** 426  
**miconda: Content-Type:** text/xml  
**miconda: Date:** Fri, 17 Jul 1998 19:55:02 GMT  
**miconda: Server:** UserLand Frontier/5.1.2-WinNT  
**miconda:** \<?xml version="1.0"?>  
**miconda:** \<methodResponse>  
**miconda:** \<fault>  
**miconda:** \<value>  
**miconda:** \<struct>  
**miconda:** \<member>  
**miconda:** \<name>faultCode\</name>  
**miconda:** \<value>\<int>4\</int>\</value>  
**miconda:** \</member>  
**miconda:** \<member>  
**miconda:** \<name>faultString\</name>  
**miconda:** \<value>\<string>Too many parameters.\</string>\</value>  
**miconda:** \</member>  
**miconda:** \</struct>  
**miconda:** \</value>  
**miconda:** \</fault>  
**miconda:** \</methodResponse>  
**miconda:** an ok handling is like:  
**miconda:** HTTP/1.1 200 OK  
**miconda: Connection:** close  
**miconda: Content-Length:** 158  
**miconda: Content-Type:** text/xml  
**miconda: Date:** Fri, 17 Jul 1998 19:55:08 GMT  
**miconda: Server:** UserLand Frontier/5.1.2-WinNT  
**miconda:** \<?xml version="1.0"?>  
**miconda:** \<methodResponse>  
**miconda:** \<params>  
**miconda:** \<param>  
**miconda:** \<value>\<string>South Dakota\</string>\</value>  
**miconda:** \</param>  
**miconda:** \</params>  
**miconda:** \</methodResponse>  
**miconda:** So, when there is no value to be returned, practically the
xml looks like:  
**miconda:** \<?xml version="1.0"?>  
**miconda:** \<methodResponse>  
**miconda:** \<params>  
**miconda:** \<param>  
**miconda:** \</param>  
**miconda:** \</params>  
**miconda:** \</methodResponse>  
**miconda:** the pull request want to change that into:  
**miconda:** \<?xml version="1.0"?>  
**miconda:** \<methodResponse>  
**miconda:** \<params>  
**miconda:** \<param>  
**miconda:** \<value>\<string>200 ok\</string>\</value>  
**miconda:** \</param>  
**miconda:** \</params>  
**miconda:** \</methodResponse>  
**linuxmaniac:** but there is no \<fault> so that means it is already
OK  
**miconda:** yes  
**linuxmaniac:** why we need a value?  
**linuxmaniac:** I don't see it  
**miconda:** ycaner may comment more why he wants it  
**qxork:** shouldn't it just be:  
**miconda:** for me it is working fine as it is now  
**linuxmaniac:** +1  
**ycaner:** well , there is different between fault and empty response  
**qxork:** HTTP/1.1 200 OK  
**linuxmaniac:** pastebin!!!! please  
**ycaner:** fault and succes returns HTTP/1.1 200 OK  
**ycaner:** both of them  
**qxork: HTTP/1.1 200 OK Connection: close Content-Length: 158
Content-Type: text/xml Date: Fri, 17 Jul 1998 19:55:08 GMT Server:**
UserLand Frontier/5.1.2-WinNT \<?xml version="1.0"?> \<methodResponse>
\<params> \<param> \</param> \</params> \</methodResponse>  
**linuxmaniac:** but the fault has a \<fault>  
**linuxmaniac:** so that is your difference  
**qxork:** is it a fault or just no data?  
**ycaner:** empty xml makes a void without result  
**miconda: qxork:** is no data  
**miconda: qxork:** successful execution, no data returned  
**ycaner:** that means when developers send a request always wait a
response what happend  
**ycaner:** and it returns empty xml so that there is no info about it  
**miconda: ycaner:** but there is a response, just no data  
**miconda: qxork:** from where did you take that example?  
**miconda:** it is same format as we return for no data response  
**qxork:** I combined what you put with the requirement of 200 OK  
**Kaian:** methodResponse + params = success, methodResponse + fault =
failure  
**ycaner:** and if it will be added , it will be useful that realtime
reload  
**miconda: ycaner:** maybe that info belongs to the tool (e.g.,
kamcmd/kamctl)  
**miconda:** not to the implementation of the rpc method  
**miconda: Kaian:** yes, I guess that is the right summary for
interpreting the execution  
**miconda:** anyhow, to conclude here  
**miconda:** if there is anything new, should be discussed on the
mainling list  
**ycaner:** well after reload all kamailio with new cfg like asterisk on
rpc , it need returns some data about it  
**miconda:** otherwise, a proposal to make it coherent over all rpc
commands and be configurable should be advanced, then discussed  
**miconda: ycaner:** but you can return further from your app  
**ycaner:** which one of them is reloaded correct or not  
**Kaian:** correct reload is implicit in the format of the response  
**miconda: it is reloaded correct if it is:** methodResponse + params  
**miconda:** it was no ‘fault’, then the operation was succesful  
**ycaner:** when gets empty xml or no fault result  
**miconda:** so let’s discuss on mailing list if there is anything new  
**ycaner:** it is correct  
**ycaner:** it si right  
**miconda:** already one hour gone, many stuff still to discuss  
**linuxmaniac:** next point please  
**miconda: ycaner:** yes - methodResponse + params (empty content) is
successful execution of the command  
===== rpm packages ===== **miconda:** — — rpm packages  
**miconda:** just again to see if anyone wants to spend some time on
taking care of them  
**miconda:** if no one here, then next topic  
===== servers maintenance ===== **miconda:** — — servers maintenance  
**miconda:** kamailio.org needs an upgrade to jessie  
**linuxmaniac:** I can help with that  
**miconda:** wondering if anyone knows something that we should be
careful regarding exim and mailman  
**miconda: linuxmaniac:** ok, thanks  
**miconda:** i will have voztelecom making a full backup before  
**linuxmaniac:** please  
**linuxmaniac:** I will destroy it  
**linuxmaniac:** :-P  
**miconda:** :-)  
**qxork:** I can help with upgrade as well and store backup on lod  
**miconda:** it is a VM :-)  
**miconda: qxork:** important things are backed up on lod  
**linuxmaniac:** time to migrate to postfix ??  
**abalashov:** I run Exim and Mailman.  
**miconda: linuxmaniac:** not sure what that involves — we can discus
it  
**abalashov:** Will always run Exim, greatly prefer it.  
**abalashov:** Host several mailing lists, two of which are large.  
**qxork:** prefer postfix  
**abalashov:** Exim is a "folk tradition" for me, I've been using it
since the late 1990s.  
**qxork:** but if it aint broke, don't fix it  
**linuxmaniac:** exim configs are quite complex  
**miconda:** next one about maintenance was to see how many are using
mobile devices to browse the kamailio.org  
**qxork:** almost never mobile  
**miconda:** i was thinking of putting a responsie theme there for
wordpress  
**qxork:** but, responsive should be done anyway  
**qxork:** (for seo)  
**abalashov: miconda:** I think this is a good idea. It's reasonable to
assume that a good percentage of the visits are going to come from
mobile, and a responsive template is pretty much standard nowadays for
an informative site.  
**linuxmaniac:** +1  
**sipidronov:** +1  
**miconda:** I am also sometimes on a tablet  
**abalashov:** Mobile users are mostly not going to be power users,
they're going to be casual / newbies looking around.  
**abalashov:** So I don't think it's important to, say, make the
documentation layout mobile-friendly.  
**miconda:** looks like there is interest, we need to find some greenish
theme  
**abalashov:** But the core WP site and informative static pages, yes.  
**qxork:** Exception... I do view mobile when looking at links from
twitter, etc.  
**miconda:** I have some experince with those from kamailioworld.com,
all are green, a different one for each edition  
**abalashov:** A lot of "business people" have the conceit that their
life can be run from their iPad, and for better or worse, we have to
cater to them I suppose.  
**abalashov:** It would be good for the project marketing to do so.  
**qxork:** anyone against it?  
**miconda:** for documentation we have to see if we can generate from
docbook xml on some responsive html css  
**miconda:** I mean for module documentation  
**abalashov: miconda:** The documentation renders fairly reasonably on
mobile anyway. But I'm not concerned about documentation much; if
someone is doing something serious, they're going to be doing it on a
real PC. The static informative pages that are read by casual web
browsers wandering in and out need to be mobile-friendly.  
**miconda: qxork:** nobody — then will add this on a planed work for
admin stuff  
**miconda:** then find the team to work on it :-)  
**abalashov:** Yeah... the problem is I don't really know much about
WordPress. The few mobile-friendly (allegedly, supposedly) sites I've
built were all handwritten with Bootstrap.  
**miconda:** next topic then  
**abalashov:** Otherwise I would happily volunteer to tackle it.  
**miconda:** wordpress is not a big deal, it would be more about
spending some time to select a theme  
**abalashov:** (Huge props to @qxork for introducing me to Bootstrap;
I'm kind of ignorant.)  
**miconda:** I can even buy one, but my experience with proprietary
themes are not good  
**afshin:** I've used Wordpress with ElegantThemes theme, DIVI  
**miconda:** the developer can dissapear as well :-) — wordpress has
quite often updates  
**abalashov:** Agree that they're not very flexible, nor is it necessary
to buy one to maintain a basic "greenish" look.  
**afshin:** it makes it Mobile First Design,  
**qxork: abalashov:** next is getskeleton for very small loads  
**afshin:** which means it will show fine on all devices  
**abalashov: qxork:** I've since become familiar with Skeleton and
SemanticUI, although stuck with Bootstrap.  
**abalashov:** For what it's worth, my product site was WordPress with a
proprietary theme.  
**abalashov:** I found it insufficiently customisable and awkward.  
**abalashov:** Tried probably 10.  
**abalashov:** Ended up just rolling my own.  
**miconda:** —— comunity interaction  
===== Community Interaction ===== **miconda:** we have mailing lists and
irc channel  
**miconda:** anything else that we should consider  
**sipidronov:** github  
**miconda:** I am not sure if mailman 3 is out and stable, but it was
supposed to bring sort of forum web interface  
**qxork:** I wonder if we should do a monthly conference call.  
**linuxmaniac:** I think mail + IRC + github is more that fine  
**qxork:** q/a and then archive  
**sipidronov: linuxmaniac:** agree  
**miconda: qxork:** recorded?  
**miconda: qxork:** I will join if I am available  
**linuxmaniac:** google hangouts + youtube channel ??  
**miconda:** but not sure I will be able to run it muself  
**qxork: miconda:** yes. Like a quick status and then maybe ask the
developer type questions  
**linuxmaniac:** but for what??  
**qxork:** tutorials, introductions, etc.  
**qxork:** discussion of all that is kamailio  
**linuxmaniac:** uff, who is going to do that?  
**miconda:** if it is about development, I am even more interested :)  
**qxork:** video is ok, but I have a face for radio.  
**oej:** he he  
**oej:** In this meeting I think we need to focus on what's needed for
making life easier for developers  
**qxork:** with audio, we could also make it a podcast  
**miconda:** so, if someone can organize it, I will try to join as much
as i can  
**oej:** Such a conference call sounds like better for users - type
"meet a developer"  
**abalashov: qxork:** Sadly, my experience with such ambitious and
idealistic ventures is that they tend to fade away unless they somehow
manage to gain critical mass.  
**abalashov:** It's probably better to shoot for something less
ambitious but realistic.  
**qxork: abalashov:** true  
**oej:** We can start with scheduling monthly apperances with randy
instead of starting something else.  
**oej:** He already runs it and wants content all the time.  
**oej:** I'm sure he'll agree to run a "kamailio corner" whenever we
want to  
**abalashov:** +1  
**qxork: oej:** good idea  
**abalashov:** He already has a pipeline to podcasts and distribution.  
**oej:** Right  
**abalashov:** We can benefit from that "transport layer".  
**miconda:** or we can try ad-hoc ones announced here if some dev has
boring times  
**miconda:** https:*meet.jit.si/kamailio  
**oej:** I have been getting a lot of questions about videos -
tutorials  
**miconda:** announced on mailing list as well  
**oej:** The new generation doesn't read README's  
**linuxmaniac:** but who cares about new generation?  
**oej:** But that's a quite large project  
**oej:** linuxmaniac Yeah they can take their snapchat and go  
**linuxmaniac:** people need to learn the hard way  
**oej:** CLick their GUI's somewhere  
**linuxmaniac:** RTFM  
**abalashov:** Mailing lists are an interesting creature ... most
traditional, old-school UNIX guys like me prefer them, but certainly,
they are a bit anachronistic and possibly even unfamiliar from the point
of view of Millennials. But all the innovations in 'messaging' have been
that -- messaging. Slack, mobile messengers, etc. Not persistent forums
for serious and lengthy exchanges involving a large number of occasional
users.  
**abalashov: linuxmaniac:** +1 :)  
**linuxmaniac:** we are not a nodejs project  
**linuxmaniac:** :-P  
-- abalashov require('kamailio.js')^H^H^H^H^H^H^H^H^H^H^H^H^H  
**linuxmaniac:** next point please!!  
**oej:** wget kamailio.sh \|/bin/sh  
**abalashov:** I don't think Kamailio lends itself well to "video
tutorials".  
**abalashov:** It's just not the sort of thing that it is.  
**marrold:** I despise video tutorials.  
**qxork:** I really never understood how to make a video tutorial of
kamailio... "here's me typing."  
**miconda:** if anyone finds a useful tool, propose it at any time to
sr-users  
**marrold:** Maybe for an 'overview' or presentation of some kind. But
not the nitty gritty stuff.  
**qxork:** although, people would be impressed with abalashov typing.  
**miconda:** I wanted to be sure that we don’t lack some very useful
one  
**miconda:** at this moment  
**abalashov:** I don't think we've missed on any discussion forum
innovation that can reasonably replace or supplant the mailing lists.  
**abalashov:** All the innovation has been targeted at consumer sheeple
who don't discuss anything because they lack personality and
substance.  
**miconda:** ok  
**abalashov:** I give you Snapchat, etc.  
**trebuh:** The main drawback I find to mailing lists is that it's not
always easy to find useful info straight away  
**abalashov:** No indeed, but any effort at a knowledge base or FAQ is
bound to stagnate.  
**qxork:** even with that, I still think the mailing lists are extremely
in-depth and helpful  
**miconda: trebuh:** suggestions to improve would be welcome  
**abalashov:** Whereas the mailing list is "organic" ... self-sustaining
by default.  
**tuxd00d:** Too many sheeple in the world...  
===== Kamailio 5.0 ===== **miconda:** — — kamailio 5.0  
**trebuh: miconda:** I would shout them if I had found good ones, so for
now, I just use it as it is.  
**miconda:** oej is thinking of a meeting to hammer some of the bits for
5.0  
**oej:** Yep. In STOCKHOLM!  
**miconda:** I think won’t be bad at least for the part of restructuring
the source code tree  
**linuxmaniac: miconda:** thanks for working on lua stuff !!  
-- oej looks for php embedding  
**miconda:** it will require some good perl/sed guys around :-)  
**miconda: linuxmaniac:** welcome!  
**miconda:** btw, app_python should be on pair with app_lua regarding
the new embedded interface  
**qxork:** I will help with the perl as much as possible, knowing I'm
surrounded by better... but still love Perl  
**oej:** I can host up to 10 people easily in the office  
**oej:** With the largest shopping mall in Northern Europe just a short
walk away!  
**tuxd00d: oej:** php embedding?  
**miconda:** I am fine with STOCKHOLM  
**oej:** just a joke  
**oej:** Or Stockholm  
**oej:** :-)  
**linuxmaniac:** Alicante is better!  
**oej:** I would say only developers, no users or bystanders. People who
has committed code  
**oej:** If there's a free office available in Alicante I love the
sunshine  
**miconda: oej:** it summer is more sunshine up north :-)  
**oej:** We just need at least three days locked into an office with
free tea (and maybe coffee)  
**linuxmaniac:** sure, we can talk with the university  
**sipidronov:** Are you sure we still discuss 5.0? =)  
**drLester:** I vote for Alicante :)  
**miconda: linuxmaniac:** but we need internet access to get internet
access  
**drLester:** but maybe Camille could manage to have a place in Orange
Gardens in Paris  
**oej:** Stockholm is beautiful in the summer and more boring than
Alicante, so more work will be done  
**miconda:** and getting something during the summer in Alicante won’t
be easy  
**abalashov: The real question in my mind is:** what is the general
aspiration with regard to this sudden and aggressive push to flesh out
embedded language interpreter modules? Is it to expose more of the API
into them, or to gradually push to replace the Kamailio route script DSL
with something like Lua or Python entirely?  
**qxork:** other than kamailio world, is there a conference coming where
many devs will attend?  
**linuxmaniac:** lua entirely  
**avb\_:** guys, how its possible to put dlg_manage() after carrierroute
routing is done?  
**miconda: abalashov:** one of the benefits will be reloading the
routing logic without kamailio restart  
**oej: Back on topic:** Dev meeting  
**linuxmaniac:** and unit test of the config without kamailio loaded  
**oej:** It seems like we need one  
**oej:** We discussed this at Fosdem and I promised to check if I can
get a free place  
**oej:** Which I can  
**abalashov:** Well, before we go down that road, it's worthwhile to
remember why SER developed a DSL. Embeddable interpreters also existed
in 2001. Presumably, the choice to hand-invent a DSL was made primarily
for performance and expressiveness reasons. What has changed since then?
I'm not saying nothing's changed -- I'm sure a lot has changed to make
this endeavour more realistic -- but I think it's worth taking a pause
to talk through that.  
**miconda: abalashov:** and a more extensive language for ‘new cool and
exotic’ needs  
**abalashov:** I for one am not clear on why it suddenly makes sense
now, 15 years later.  
**linuxmaniac: abalashov:** no one forces you to switch to lua  
**miconda: abalashov:** lua didn’t exist (or was not much known), python
was slow, perl was not designed for parallel processing  
**linuxmaniac:** you can still use the old kamailio config  
**sipidronov:** suddenly agree with abalashov  
**linuxmaniac:** we are not going to remove the kamailio DSL  
**abalashov:** No, nobody forces anything, but practically speaking, as
we know, things can take a general direction which causes some
approaches to become less favoured, developed and maintained over time.
So it's worth asking whether there is a high-level intention or
aspiration to sunset the Kamailio DSL.  
**miconda:** the current config stays there forever  
**miconda:** the framework I work on is when writing a new function,
make it easily available to kamailio.cfg routing blocks as well as to
lua, etc..  
**sipidronov:** But may be we could improve current mech to reload
config etc?  
**miconda:** so if I want to add “push_im_to_twitter()”  
**miconda:** then I have to add it in two exports structures  
**miconda:** one for classic kamailio.cfg routing blocks  
**miconda:** and one for external embedded languages  
**abalashov:** Fair enough. But one of the important things about the
DSL is that it does evolve over time to have more characteristics of a
general-purpose programming runtime. Since 3.0 it has evolved all these
string transformations, convenience methods, some improved data
structure primitives like XAVPs, etc. I guess my concern is that if
there is a conceptual shift to, for example, a Lua orientation, such
evolution will probably taper off. I'm not \_necessarily\_  
**miconda:** in terms of technological aspects, it is quite simple and a
lot of code is there  
**abalashov:** against that, I'd just like that to be turned into a
clear philosophical position, personally.  
**miconda:** so for classic kamailio.cfg, there is an extra layer,
called fixup at this moment  
**miconda: abalashov:** I see your point, however in terms of new
functions, it will be always in all the interpreters  
**abalashov:** So, is it reasonable to say that, in an imagined future
where the entire Kamailio config can be implemented in embedded Lua, the
performance and throughput characteristics will remain the same?
do_actions() may be ugly, but it's fast.  
**miconda: abalashov:** not all config in lua, just the runtime active
part, what are now routing blocks  
**abalashov:** Many things about classic SER are ugly, but they were
implemented that way for a reason -- the project goal was high
performance.  
**miconda:** core parameters and modparams will stay like now  
**oej:** For us classic config writers, the new APIs may make it
possible to write new cool modules  
**abalashov:** I'm not saying Lua poses a problem here, I just don't
know what the implications of taking on this additional workload would
be.  
**miconda:** at least in foreseable future, I have no plans to change
them  
**miconda:** no benefits and it will add dependency on lua/… to the
core  
**miconda:** the workload is going to be rather minimal  
**abalashov:** We have limited development resources. There is a
zero-sum aspect to this. If you should get very enthusiastic about
developing embeddable Lua and more and more examples and documentation
and literature and blog posts and presentations and so on are
forthcoming in Lua, it's not unreasonable to suggest that the
traditional config writing might see a kind of decline in fashion, even
if it will not, strictly, from a technical point of view, ever be
remove  
**abalashov:** d or obsoleted per se.  
**abalashov:** So it's worth asking what this means.  
**miconda:** many of the current functions execute some fixup to get
from PVs the string value  
**miconda:** then execute another function with those string values  
-- abalashov nods  
**miconda:** an embedded interpreter will get the string values from the
script and execute it directly, without going through the fixup stuff  
**miconda:** I can give some quick example  
**sipidronov:** having fixups didn't look that way bad for me  
**abalashov:** I'm not really making a technical point here so much as
an ideological one. There should be some coherent philosophical
aspiration behind these changes; when we do more Lua, we are unavoidably
making a methodological prescription to newbies and new users, even if
we don't think we are.  
**abalashov:** If that's the direction we'd like to move in, okay, but
we should make some effort to decide that.  
**oej:** On the current topic of the dev meeting...  
**abalashov:** Otherwise it becomes very eclectic and confusing.  
**abalashov:** Like, "you can write your config in Kamailio DSL... or
also in Lua... or in Python... ¯\\\_(ツ)\_/¯ we don't know"  
**miconda: abalashov:** more and more choices :-)  
**abalashov:** Well, you're a Mac user, right?  
**abalashov:** There's an entire business empire built on the idea that
more choice isn't necessarily good.  
**miconda:** I don’t expect having a load balancer in lua/…  
**abalashov:** So I think it's worth asking how this looks to the larger
mass market, what the general idea here should be.  
**miconda:** but I have seen some complex configs that will be
simplified a lot by use of a well established language  
**sipidronov:** but it would be nice to have LB able to reload configs
though  
**abalashov:** Certainly, and I write a lot of such configs. Very
tedious control structures, awkward and ill-fitting uses of Kamailio's
limited primitives, etc.  
**miconda:** you know all kind of small libs that you can use for
parsing or interaction with external systems  
**oej:** We have had embedded language interpreters for a long time  
**oej:** And they have been useful and Daniel is making them a lot more
useful by exposing more of the Kamailio API  
**miconda: oej:** exactly, the main aim is to make it easier to export
to them  
**abalashov:** Sure. These are all good arguments. I just want to know
if there is a general movement toward Lua for config-writing over time.
It's not a question of being forced to do anything.  
**miconda:** so far required to write wrappers from scratch for each of
them  
**oej:** So I don't see this as a big change in directions, just a way to
enable more functionality for lua, python, erlang and what else we
ahve  
**miconda:** my goal was write on export to all embedded interpreters  
**oej:** No, I don't see a general movement  
**abalashov:** I would expect that there should be some more generic
mechanism for mass-export of functions and identifiers in the route
script.  
**abalashov:** Not tedious one-by-one export bindings.  
**miconda: abalashov:** so far each of the app_module and app_python
wrote their wrappers  
**miconda:** so adding a function to app_lua didn’t mean it was visible
to app_python  
**miconda:** you had to code twice  
-- abalashov nods  
**abalashov:** Has there been any evaluation of performance of embedded
Lua vs. native DSL?  
**miconda:** along with the C code in the module, which eventually
exported it to kamailio.cfg as well  
**abalashov:** I know it's fast, and I know we have modern hardware
nowadays.  
**abalashov:** But I assume performance was the main reason the SER
project invented a DSL - an otherwise very tedious and labourious chore
that is generally considered an antipattern.  
**miconda: abalashov:** not yet by me  
**oej:** I think the benefit has been to be able to reload during
runtime. YOu can write code snippets and change without restarting the
kamailio process  
**oej:** It's not been speed, but flexibility  
**miconda:** I know lua is very fast, so it may not be in pair, but not
far from there  
**miconda:** the cpu power is no longer like 2001  
**abalashov:** Which is the general movement in interpreted high-level
languages; lots of computing power, make it more convenient.  
**abalashov:** And that's fine.  
**abalashov:** Just wondering if it's a factor of 2 or something.  
**linuxmaniac:** we have nothing to compare right now  
**miconda:** probably in several days I can have kamailio-basic.cfg
routing blocks in lua  
**abalashov: oej:** Surely there have got to be other ways to skin the
reloadable config cat in the current situation, though I acknowledge
they may not be easy.  
**miconda:** then some tests can be performed  
**abalashov:** Anyway, I'm not arguing \_against\_ any perceived
movement toward Lua, real or imagined. I just wanted to clarify whether
there is one.  
**miconda: abalashov:** that will require a lot of devel actually  
**linuxmaniac: miconda:** but we have to come up with a generic solution
for exporting the functions  
**miconda:** current interpreter does a lot of optimizations in private
memory  
**miconda:** then you need to track how many workers and transactions
are still using the current config to keep it in memory before
destroying  
**abalashov:** \*nod\*  
**abalashov:** I'm sure there's some means of mass-mapping fixup layer
-> language bindings.  
**oej:** OK, so we are all happy about the lua work.  
**oej:** Dev meeting?  
**linuxmaniac:** +1  
**sipidronov:** Plz post some meeting minutes after the off-line dev
meeting  
**abalashov:** I can't imagine any concrete reason to be unhappy about
it, but when a very small group of people are the major influencers in
the larger community's perception of design patterns and authoritative,
canonical methods and best practices for doing things in Kamailio, the
question of what the new fashions will be is an unavoidably important
one.  
**miconda:** to conclude — kamailio.cfg interpreter is not going out
anyhow, the other options are for those that need them and any extension
to another embeeded language will require c code, which means making it
available for kamailio.cfg straightforward  
**abalashov:** One can do some basic things with Kamailio (given a bit
of development experience) in a relatively short time. But going from
50% to 90% competence in a way that provides commercially viable
expertise and can be deployed to solve any problem with Kamailio is a
process that takes years.  
**miconda:** I will try to make a tutorial about what means exporting to
kamailio.cfg interpreter and the other emebdded interpreters  
**abalashov:** So some sense of awareness of general trends is
important.  
**abalashov:** And in reality, we have a small oligopoly here of maybe a
handful of people that are the source of larger mass-information about
how to do Kamailio that most users of it rely on.  
**oej:** I have spent hours and hours with APIs and json and http from
inside of Kamaiio with many customers.  
**abalashov:** There's nothing wrong with that, it's the way it is.  
**oej:** that's a trend  
**abalashov:** But it means trends are important.  
**oej:** Absolutely  
**abalashov:** So if there is a Lua-trend, intentional or not, this
should be stated. That is all. That's the extent of my position. :)  
**oej:** Daniel personally have been in love with Lua for quite some
time now, as seen from the outside.  
**miconda: oej:** :-)  
**oej:** I am in love with htables. Keep misusing and using them for
everything  
**miconda:** actually i think Hugh and linuxmaniac added more extensions
there than me  
**miconda:** this time I did lot of stuff for app_python as well  
**abalashov:** When there is a very small number of people accounting
for the vast majority of work on the project, trends are important. It
means that even when things will continue to exist strictly speaking,
they will not have the same 'ecosystem tailwind' or 'spiritual support'
or however you want to call it.  
**miconda:** to show I am impartial :-)  
**abalashov:** Just like the Perl module. Who actually uses that? :D But
formally it exists...  
**abalashov:** (I jest. I know people who use it, and I am rather sorry
for them.)  
**miconda:** at this moment it looked like a lot of devel oriented to so
called kemi stuff  
**oej:** After this discussion, can we get back on topic.  
**oej:** I am still waiting for a conclusion on the real dev meeting  
**miconda:** but that was because I had to write the core framework for
it and inside the app_lua and python  
**miconda:** from now on will be in the other modules, the usual C
coding  
**abalashov:** Aha.  
**abalashov:** Cool, that's good to know. I didn't mean to derail the
agenda.  
**miconda: oej:** I am for it  
**qxork: abalashov:** Back off the Perl mod.  
**qxork:** ;)  
**miconda:** anywhere in europe is fine  
**abalashov: qxork:** :D  
**miconda:** I would like visiting Sweden, been a while since last
time  
**oej:** SO when would be a good time? Europe can't agree on a holiday
month  
**oej:** We have IETF in Berlin this summer, so I'll go there twice in a
short time  
**miconda:** so, not in Berlin again :-)  
**oej:** First half of June works fine for me  
**oej:** or august  
**miconda:** for 3rd time  
**abalashov:** I think we can all agree that one of the items
instrumental to the success of any project (or proprietary product) is
to not offer \_too\_ many choices about how to do \_fundamental\_
things. If there are many options, there should be clear and distinct
methodological rationales for why to use one or the other. It can be a
serious hindrance to understanding if there are 5 ways to do a Kamailio
config that are all kind of equal and simply a matter of taste,  
**abalashov:** aesthetics...  
**oej: Abalashov:** Please stick to the topic ;-)  
**miconda:** probably I can do first part of June as well  
**abalashov:** This is, after all, why people hate Perl. :-) (I say this
as a Perl developer.)  
**abalashov: oej:** All right, all right. :-)  
**miconda:** for August I can commit to a date right now  
**oej:** can or can't  
**miconda:** sorry — I cannot  
**miconda:** I need maybe 1-2 weeks  
**oej:** ok, so that's two of us - what about the rest?  
**oej:** How many do we think it will be?  
**miconda:** at least two if in stockholm :-)  
**oej:** We WILL have a great TIME!  
**drLester:** for me for now it's ok june/august  
**linuxmaniac:** June, the week of 6 to 12  
**linuxmaniac:** is fine with me  
**oej:** June 6 is our national holiday. The day of Sweden!  
**drLester:** I mean july included :)  
**miconda: oej:** so the queen/king can come and code with us, they
don’t have to work :-)  
**oej:** Either June 8-10 or June 20-22  
**miconda:** maybe we should make a poll  
**linuxmaniac:** 20-22 I'm at Alicante  
**oej:** Those old grumpy people? YOu want the princes and princesses to
come. Theyre a bit more cool  
**miconda:** there used to be some online tools for this  
**miconda:** doodle  
**oej:** I can make a doodle  
**miconda:** then send it to mailing list and see who and when can
participate  
**linuxmaniac:** please  
**miconda:** and where  
**oej:** Ok, that's a plan  
**miconda:** then the next stuff  
**oej:** We'll start with Stockholm (actually Solna which is closer to
the airport)  
**miconda:** an Ikea around for some meatballs at lunch?!?  
**oej:** Not very close, but we can arrange group transport :-)  
**linuxmaniac:** not paella?  
**linuxmaniac:** :-P  
**oej:** You have to bring a doggy-bag with paella  
**oej:** And a lot of great wine!!!  
**miconda: —— next topic:** source tree restructuring  
===== Source Tree Restructuring ===== **oej:** yay!  
**miconda:** I guess this needs to be decided when we meet and do it  
**miconda:** not many variants, but still some  
**oej:** agree, we need to discuss that a bit  
**abalashov:** One of the things about the Kamailio source tree that
makes me happy is that it has a fairly transparent and traditional build
process.  
**miconda:** most of the stuff is going to be find and replace
afterwards  
**abalashov:** I would not want to see this become 'opaque' and overly
dependent on tools beyond 'make' as is currently very fashionable...  
**oej:** I think we can agree that we want to move the core files away
from root directory, but we can not currently agree on where to place
them  
**miconda:** yes, the root directory is too big  
**abalashov:** I suppose the option is either to move it all into one
core directory, or to separate core files thematically into
subdirectories somehow.  
**miconda: abalashov:** if no one is going to come with a new build
system, at least I am not going to work on a new one  
**abalashov: miconda:** I think the current one is fantastic. :-)  
**miconda:** one of the questions is to add top src/ directory  
**miconda:** like src/core  
**miconda:** src/modules  
**abalashov:** It's easy to work with for anyone who knows UNIX Folk
Traditions. Most alternatives are for people who read Hacker News
eagerly.  
**miconda:** then have other dirs in root for pkg, utils, etc ...  
**abalashov:** I will say that the organisation of database schema
definitions in places like utils/kamctl is confusing.  
**abalashov:** And rather obscurantist.  
**oej:** One big questionis whether to keep all platforms or to focus on
Linux  
**oej:** There's a lot of stuff that doesn't compile on OS/X now  
**miconda: oej:** what happended to your \*bsd side?!?  
**abalashov: oej:** There is a small but significant and vocal
contingent of people that like to run Kamailio on \*BSD in my personal
acquaintance, and they would be very upset with an exclusive Linux
focus.  
**oej:** We run Kamailio on FreeBSD in production on some large sites  
**miconda: oej:** I do mainly development on osx these days  
**oej:** And it's a bit annoying that modules doesn't even compile  
**miconda:** what doesn’t compile there?  
**oej:** I can understand that kernel-bindings like rtpkernelproxy stuff
doesn't  
**miconda:** I use macports to install various libs  
**oej:** There's some timer issues  
**linuxmaniac:** kamailio gets built for kfreebsd at Debian  
**miconda:** timer issues?  
**oej:** cdp and jsonrpc-c  
**miconda: linuxmaniac:** were those commits I did making it work?  
**linuxmaniac:** I didn't check yet  
**oej:** jsonrpc-c has a dependency on timerfd - i don't understand why
but haven't been digging either  
**qxork:** it might be interesting to get a survey of deployment.  
**miconda:** ohh, cdp — who runs ims on macosx  
**miconda:** jsonrpc-c probably needs some update, I used jansson
variant  
**oej:** sctp also have issues on os/x if I remember correctly  
**miconda:** jsonrpc depends on a lib that has also some more variants  
**miconda:** does macosx kernel supports sctp?  
**oej:** I am struggling to win my beer, so I need at least to be able
to compile all modules on a single system  
**miconda:** some of the features will be always os dependent  
**miconda:** I guess  
**oej:** yes, but an rpc module should not be  
**miconda:** important is the core and main sip handling modules to be
portable  
**oej:** I can understand iprtpproxy or osxguiconnector and stuff like
that  
**miconda: qxork:** looks like you got something to do — get some stats
about deployments ;-)  
**qxork:** :)  
**miconda:** iptrtpproxy needs to be moved to obsolete  
**miconda:** it has a patch for an older kernel anyhow  
**oej:** I don't think anyone has touched it for a very long time  
**miconda:** now we have rtpengine that can do kernel forwarding  
**oej:** And now we have the shiny rtpengine  
**oej:** right  
**linuxmaniac:** \\o/  
**miconda:** ok … this comes back to cleaning up the list of
unmaintained modules  
**abalashov:** I've never successfully built or used iptrtpproxy.  
**linuxmaniac:** I'm planing to push rtpengine to Debian  
**abalashov:** Though I tried several times over the years.  
**abalashov:** Obviously interest evaporated when rtpengine appeared.
:-)  
**oej:** rtpengine on BSD!  
===== DB schema backwards compatibility ===== **miconda: — — next
topic:** DB schema backwards compatibility  
**miconda:** abalashov and linuxmaniac on stage now … :-)  
**miconda:** I haven’t had the time to respond on mailing list  
**miconda:** but I don’t like either the current (old) way of checking
the version table  
**linuxmaniac:** so time to change it!!  
**miconda:** I gues it was anyhow supposed to be a quick temporary
solution back in 2001-2002 :-)  
**miconda:** but what are 15 years compared with the life of universe
:-)  
**linuxmaniac:** so, no concerns about working on this?  
**miconda: linuxmaniac:** no  
**linuxmaniac:** please comment on the mail list  
**miconda:** actually db api v2 has another mechanism  
**miconda:** checking the required column names and types  
**miconda:** maybe that part can be ported to db api v1 and then trans
v2 as no many modules use it  
**miconda:** to conclude — yes, it is something that should be worked
on, let’s see on mailing list who can allocate resources and discuss
there a design for it  
**linuxmaniac:** I will work on this  
**linuxmaniac:** for sure alutay want this  
**miconda: linuxmaniac:** great!  
**linuxmaniac:** so sipwise will sponsor my devel time  
**miconda:** ——unit tests/continuous integration  
===== Unit Tests/Continuous integration ===== **linuxmaniac:** but I
would like to have a clear plan  
**abalashov:** I am not a fan of the 'version' table concept
altogether.  
**miconda:** do we need unit tests or it is better to test it properly
directly in production?!?  
**linuxmaniac:** I have a plan to integrate autopkgtest to the debian
process  
**linuxmaniac:** my idea is to have at least a test to load every module
packaged  
**miconda: linuxmaniac:** that will be useful  
**linuxmaniac:** at least we can check we have no problems with loading
modules  
**linuxmaniac:** unresolved symbols etc...  
**miconda: linuxmaniac:** yes, it will catch missing symbols linking
issues  
**miconda:** at some point I was checking a python framework for unit
testing  
**linuxmaniac:** I didn't got time yet to implemented  
**oej:** My idea with check_route_exists was to use include files and
kind of autostart tests if they existed there.  
**miconda:** it could generate reports that could be investigated via
web  
**oej:** so a generic kamailio config that includes test files and runs
them in htable:mod-init  
**miconda:** but if anyone is familiare with some toolkit for building
unit tests, I am for  
**miconda:** we have the lod servers provided by qxork that we can use
for running unit tests  
**linuxmaniac:** I would call that integration tests  
**miconda:** actually I use one from time to time to run the ones from
test/unit/  
**linuxmaniac:** but I would provide a docker image for the
environment  
**linuxmaniac:** in order to be able to run that locally easily  
**linuxmaniac:** first, I would say we should "force" modules to have a
minimal test/unit/ for load it  
**linuxmaniac:** nothing fancy  
**linuxmaniac:** just provide a minimal kamailio.cfg with the minimal
parameters  
**linuxmaniac:** and check that kamailio starts  
**oej:** or include files  
**oej:** One for modparams and one for a test script  
**linuxmaniac: oej:** we can think a way to have some templates  
**linuxmaniac:** so we can provide a skeleton  
**oej:** I know how hard it is to change a skeleton for over 100
modules  
**oej:** better to have include files and one template kamailio.cfg  
**linuxmaniac: oej:** noted  
**oej:** tiny include files  
**oej:** We're still removing svn id's, history all over the place and
still have a few modules who need the core file renamed to match the
module name  
**linuxmaniac:** indeed  
**oej:** (but we don't need to commit all changes to release branches…
;-) )  
**linuxmaniac:** thanks for taking care of that  
**linuxmaniac: oej:** you should use a nice prompt!!  
**miconda:** as we are here, I jumped over one related item  
**miconda:** tools for generating those indexes for modules docs  
**miconda:** and other static pages …  
**miconda:** perhaps we can create a new repo on github for them  
**miconda:** more devs can commit there and then a cron.d to fetch
locally on web server  
**oej:** +1  
**miconda:** one thing I am not happy about is the documentation for rpc
commands  
**miconda:** there is a tool to get the list of them from code  
**oej:** We also still need devs to go over xml docs in their free time
on the beach and add the section tags  
**oej:** So we can have more data in the indexes  
**miconda:** but the documentation about their parameters is missing  
**oej:** So we need to go over that and add them to all xml files so the
tool can create proper links  
**oej:** the selects are the hairier one right?  
**linuxmaniac:** yes, a new repo for the tools is fine  
**oej:** They are very hidden but there's a script to find them  
**miconda: oej:** at least with selects you know they return an int/str
and most of them have suggestive name :-)  
**oej:** That's something for the dev meeting to - the death or rebirth
of selects for 5.0  
**miconda:** but with rpc commands one needs to know the params  
**oej:** Absolutely  
**miconda:** i tried to add them as a section to my most used modules  
**miconda:** however, some are in the core  
**oej:** Right, that's a tough one  
**miconda:** and, ohhh, there is also this reload framework for params  
**oej:** We could have a core xml file in /doc for all that is hidden in
the core  
**miconda:** we should know which can be updated at runtime  
**oej:** Hmm. I haven't personally looked much into how that's done in
the source  
**miconda: e.g.,:** kamcmd cfg.set_now_int core mem_dump_shm 1  
**oej:** Is it a parameter when registering a modparam?  
**miconda:** some of them are in the core  
**miconda:** they were developed by the ser guys  
**miconda:** it is not a bad concept at all  
**oej:** No, it is good  
**miconda:** we need to sort out the documentation for them  
**oej:** Ok, a repo would be a good start  
**miconda:** maybe there is a command to list them  
**abalashov:** "one thing I am not happy about is the documentation for
rpc commands" -- +1  
**oej:** Then we need to figure this out - what we need to do to be able
to generate the dosc  
**oej:** docs  
**miconda:** yep  
**miconda:** if anyone knows tools useful for building/maintaining docs,
let us know  
**oej:** If we can embed stuff in the source it's a good start. It's
much easier to add a few things inline than going to a separate
directory and writing stuff from the head  
**abalashov:** Can someone enlighten me on the purpose of the xhttp_pi
module?  
**oej:** Asterisk has a way of writing AMI docs in the source code that
has been working fairly well  
**miconda:** at some point in the past Henning came with the idea to
have some spec files for generating all thise exports structures  
**miconda:** as well as the documentation from them  
**oej:** then they added large XML chunks of stuff that was harder for a
normal developer to handle  
**abalashov:** Kamailio is rather low-level; most Kamailio endeavours
involve some kind of programmatic integration or automation. Who is
going to interactively browse RPC?  
**oej:** No, but we can use inline docs to automatically generate text
file and HTML files for the web site  
**miconda: abalashov:** not using that module  
**miconda:** osas did it, perhaps he wanted for small/embedded devices  
**oej:** kamcmd may benefit from inline help  
**miconda:** not to add another web server along  
**miconda:** speaking of kamcmd — there is also kamcli which is supposed
to combine kamctl and kamcmd somehow  
**miconda:** but is python  
**miconda:** it has of course access to lot of extension  
**oej:** I have totally forgotten to test that. I am sorry.  
**miconda:** one requested feature was “upgrade database” between
versions  
**oej:** WIll do  
**oej:** I don't think any application should modify database structures
automatically  
**oej:** But that's me.  
**miconda:** kamctl is shell/bash — quite limited to do complex tasks
with it, but no dependency  
**miconda: oej:** it will still be a human running the command  
**miconda:** :-)  
**oej:** Humans? Who trust HUMANS?  
**oej:** A gui to click on  
**oej:** Kamctl can produce a readable diff between what's in the DB and
what's missing to help them.  
**miconda:** kamcmd is just a binrpc client  
**miconda:** wxtending it with other features will require c
development, which I guess is not easy to find human resources for  
**miconda:** extending it …  
**oej:** kamcmd is so far away from a GUI we can be. User friendlyness
is way after the last name of that application.  
**miconda:** :-)  
**oej:** Which is propably why I like it.  
**miconda:** again, is just a bare bone rpc client for binrpc protocol  
**oej:** Producing ten lines for one or two lines of needed
information  
**miconda:** kamcli is using jsonrpc  
**miconda:** the binrpc protocol is some customized design by ser guys  
**miconda:** and eventually at some point we will get rid of MI part  
**oej:** We still have a few modules to convert from MI  
**miconda:** and have only the RPC part for control  
**miconda: oej:** indeed  
**miconda:** and kamctl is quite used, we need to build the replacement
of it to use rpc interface  
**miconda:** instead of mi interface  
**oej:** yes  
**miconda:** ok, so two more topics  
===== build system ===== **miconda:** — — build system  
**miconda:** already touched somehow a bit  
**miconda:** we have the old good Makefile system  
**miconda:** I am happy with it  
**abalashov:** +1  
**miconda:** I plan to clean some conditions inside it for the older
versions of gcc  
**qxork:** i like it too  
**miconda:** however, if anyone has suggestions for a better one and can
provide a replacement, I am open to try it  
**sipidronov:** I'd stay with existing one  
**oej:** I think my primary issue is management of modules.lst  
**miconda:** the only think I would like to work a bit on is to have
something easier to select modules to compile  
**oej:** I think some sort of GUI to enable/disable modules would be
nice.  
**oej:** right  
**oej:** like a menuselect  
**miconda: oej:** that’s what I wanted  
**miconda:** maybe not necessary a gui  
**oej:** a script that supports the process  
**oej:** Or just an android app.  
**miconda:** but somehow a format in afile to say this module should be
compiled or not  
**oej:** Regardless, the current modules.lst is complex  
**abalashov:** like 'make menuconfig' in the kernel or its Asterisk
equivalent ('make menuselect'?)  
**oej:** right  
**abalashov:** It would certainly be cool in terms of democratising the
process of easily trimming down Kamailio to only the modules one
actually needs.  
**abalashov:** This is a common need with Freeswitch and Asterisk.  
**oej:** Exactly  
**abalashov:** I would be happy to contribute a tool for this, I am
experienced with writing 'dialog' UIs in ncurses.  
**abalashov:** But dialog would be a required dependency.  
**miconda: abalashov:** we want to see it during dangerous demos at
kamailio world :-)  
**abalashov:** It is probably quite far from 'dangerous', at least I
hope...  
**oej:** We would need to change the file format first, then write
GUIs  
**miconda:** competing with oej’s longest list of loaded modules :-)  
**abalashov:** My response to James Body when he asks me to do a
dangerous demo is, "I don't really do 'dangerous' things, James..."  
**miconda:** maybe we need sort of spec file per module  
**qxork:** maybe the freeswitch style would be easier at first  
**miconda: to put there info like:** compile by default  
**swimmercol: abalashov:** I can give you a hand if you need it !  
**miconda:** dependencies  
**abalashov:** Well, my first stab at it would be to just dynamically
generate the list of modules from the directory listings... but maybe
that's not the right approach? Is there some metadata already that I
should look at?  
**miconda: qxork:** what is the freeswitch style? that file with the
list of modules, some commented?  
**abalashov:** I would accompany it with a reading of defaults from
modules.lst to determine what is already checked.  
**abalashov: miconda:** Yep.  
**qxork:** yes, but one per line  
**oej:** It should be in the module directory  
**miconda: abalashov:** no metadata right now  
**oej:** maybe even output by the makefile  
**miconda:** there is some section in the readme related to
dependencies  
**oej:** make spec \>\> /tmp/moddir  
**oej:** But that section is not parseable  
**miconda: oej:** requires humans for that, not bots :-)  
**oej:** there is some metadata, like name of module, dependencies, uri
to web sites for dependencies, common linux disto package names for
dependencies  
**miconda:** seriously, we should add some metadata  
**oej:** in addition we have inter-module dependencies we could make
parseable  
**miconda:** that can be imported eventually inside the docbook, if it
is going to be also xml  
**oej:** If you add "dogwalk" then you need the "dog" module first  
**miconda:** but have it as standalone file to be easy to handle by
other tools  
**oej:** Yes, the make system can make a docbook include file for the
README based on this  
**oej:** But I still think it belongs in the module directory to be
managed in the same place as the rest of the module stuff  
**miconda:** yes  
**oej:** In that file we could have module state - current, not
supported, deprecated, hated-by-everyone-but-still-here  
**miconda:** :-)  
**miconda: ——last topic:** roadmap to 5.0  
===== Roadmap to 5.0 ===== **miconda:** I guess it is too early  
**miconda:** but if anyone wants to set some expectations, we can do
it  
**miconda:** from my point of view is going to be likely towards the end
of the year  
**miconda:** anyhow, we just released 4.4  
**miconda:** probably we can come up with a timeline after the summer  
**miconda:** based also on the results of the eventual devel meeting  
**oej:** RIght. I would say in time for Kamailio world next year, so Q1
2017  
**oej:** The question is if we need a 4.5 in between or just stay with
4.4  
**miconda: linuxmaniac:** is any debian stable release schedule soon?  
**oej:** I did add some new stuff to http_client - the connection reuse
that is needed  
**miconda:** I don’t think will be something to do for 4.5  
**oej:** So maybe I should make you look somewhere else and commit that
part to 4.4.1  
**miconda:** the stuff with exporting to embedded interfaces is pretty
much done  
**miconda:** and already committed to master  
**miconda:** anyhow, it doesn’t change anything big for the classic
kamailio.cfg  
**drLester:** the http_async_client also will have some major changes  
**miconda:** then the big change will be actually the code tree
restructuring  
**qxork:** have to run -- thank you all  
**drLester:** and possibly I would like it to be merged with the
http_client ;odule  
**oej:** For 5.0 I want to merge the http_clients  
**oej:** right  
**drLester:** or using a common library  
**miconda: in a new module:** http_merged_clients  
**drLester:** before moving to the "big changes" for 5.0  
**drLester:** :D  
**oej:** More important for me is to remove curl from other modules
using it  
**oej:** By improving our API  
**drLester:** +1  
**miconda:** that would be good to do, indeed  
**oej:** Hugh started on that so we're getting there at some point  
**drLester:** so maybe this would justify a 4.5  
**abalashov:** Kamailio ME (Millenium Edition)?  
**oej:** Let's keep an open mind on 4.5 and see what happens in trunk  
**miconda:** master can be used also in production  
**miconda:** :-)  
**drLester:** I think we more or less all do it :)  
**oej:** I just love doing patching of running binaries  
**drLester:** in a way or another :)  
**drLester:** but we we're not regular users  
**miconda:** 5.0 won’t be a big change for those using kamailio.cfg as
it is now  
**abalashov:** And can we please put some kind of easter eggs in the
code? We are denying the user base the joy of discovering them, as well
as the agony of searching.  
**miconda:** there is no big refactoring of that  
**oej:** I thought we where going to do all configs in JSON for 5.0 ?  
-- oej ducks  
**miconda:** via http_client calling back on xhttp module  
**drLester:** and what about embedded go?  
**oej:** exactly  
**oej:** one module to rule them all  
**miconda: drLester:** that’s for you to add  
**abalashov:** From 5.0, the Kamailio config will be declarative,
strictly key=value.  
**oej:** then a point-and-click lua-powered web site in xhttp-pi-++  
**abalashov:** in keeping with its evolution as systemd-rtc-server  
**miconda:** I stop at lua and python for external srcripting
languages  
**oej:** Oh yes, and tabs and white space will be significant  
**linuxmaniac: miconda:** https://wiki.debian.org/DebianStretch  
**oej:** Ok, gotta go. It's been a good meeting.  
**drLester:** smalltalk  
**linuxmaniac: 2017-01-05:** "Softfreeze"  
**oej:** Thanks for waiting for me  
**linuxmaniac:** if you want kamailio 5.0 in debian has to be releases
december  
**linuxmaniac: miconda:** ^  
**miconda: linuxmaniac:** ok  
**linuxmaniac:** released  
**miconda:** we should be able to do that, i think  
**oej:** Sounds like a plan  
**oej:** Kamailio Xmas!  
**miconda:** Kamailio X/2 edition  
**miconda:** ——anything else to discuss  
===== Anything else? ===== **miconda:** I will try to make a summary and
then see who volunteered for some of the tasks  
**abalashov:** Put me down for the module selection menu idea.  
**miconda:** for the rest I will randomly pick others :-)  
**abalashov:** :D  
**miconda: abalashov:** noted  
**miconda:** looks like a 3 hours session today here — probably one of
the longest one so far  
**miconda:** glad we could sort some of the things and plan many
others  
**drLester:** thanks for leading Daniel :)  
**abalashov:** This was my first IRC devel meeting, though I've meant to
attend others in times past.  
**abalashov:** It was quite fruitful and I learned a lot.  
**oej1:** I have been looking into a generic AMQP module, I think we
ened one  
**oej1:** But on the other hand - is it even possible to make a generic
bus interface and then "drivers" for different systems?  
**oej1:** It seems like "send this blob" on "channel"  
**miconda\_:** … hmm, I was disconnected by the server … I did too much
traffic  
**abalashov:** Can't say, but I am opposed to the monopoly that Kazoo
has on the entire concept, for its own ends. I don't know why we have to
babysit a module that doesn't accomplish generic AMQP interaction that
is generically useful to everyone.  
**miconda\_:** if there was some message after my “but on some design
decisions, a quick chat may be more productive”, please repost  
**oej1:** Lazedo has agreed that we need to strip the amqp out of kazoo,
he's not opposed  
**miconda\_:** yes, it was a plan when the module was introduced, but
nobody took over the task  
**abalashov:** Generally speaking, I cannot just take a module that does
some specific and narrow thing in CSRP and push it to the Kamailio
repository and rely on you all to take care of it for me.  
**miconda\_: eschmidbauer-mbp:** seems to have some experience using it
as standalone rabbitmq connectore  
**abalashov:** It would be expected to have general utility and be
stripped of proprietary nomenclature.  
**miconda\_:** if there is something open source in the other side, then
we accepted always  
**miconda\_:** see the seas module  
**eschmidbauer-mbp:** yes. it does not require kazoo platform at all  
**miconda\_:** which connects to wesip java application server  
**eschmidbauer-mbp:** only thing kazoo about it is, the name
everywhere  
**oej1:** I don't think kazoo expect anyone else to maintain their
module, like the OSP module  
**oej1:** For me the agreement has always been "as long as you maintain
it, we're happy to have it in the same code base"  
**miconda\_:** or seas :-), which apparently triggered some security
alerts for some small issue  
**oej1:** We could with the new system mark it as "3rd party
maintenance"  
**abalashov:** Personally I do not agree with this philosophy, but this
isn't the Alex show.  
**abalashov:** The OSP module doesn't belong either, IMHO.  
**abalashov:** (especially since, as I've heard, there are some patents
around OSP implementation -- but I'm not sure of the details)  
**oej:** I wasn't to happy with kazoo, as there was pieces in there that
could benefit a wider audience in more generic modules  
**oej:** Have not heard of patens of OSP, if so we may need to
reconsider  
**abalashov:** The thing is, if we're going to overhaul build systems
and add lots of unit tests and CI and so on, anything we carry in the
codebase has to be part of that, in theory.  
**miconda\_:** kazoo can still be split/renamed — it just needs someone
between chair and keyboard to do it  
**abalashov: oej:** I don't mean the OSP module or OSP itself is
patented; no, it's an RFC, and it's the \*Open\* Settlement Protocol,
after all.  
**oej:** Right - and the current maintainer doesn't get upset  
**abalashov: oej:** But it supports a particular business model, and
isn't generically useful.  
**miconda\_:** what oej proposed with 3rd party maintenance could be
useful  
**oej:** Isn't it just an informational RFC  
**oej:** I would be surpriced if that RFC was standards track  
**abalashov:** That I don't know.  
**oej:** Anyway thanks for today, I gotta go grocery shopping :-)  
**abalashov:** Anyway, ultimately we have to take care of modules in
more ways than just having a directory. Users expect support for them
when they blunder into using them, test and CI coverage... etc.  
**abalashov:** If we take on a module, the social contract should, in my
opinion, be that it be generically useful.  
**abalashov:** Otherwise it's basically a negative externality.  
**oej:** In the future, I would like to be more restrictive with module
names that reflect a company or another project  
**oej:** But let's code and split the kazoo module apart! I need more
modules to win the contest!  
**oej:** :-)  
**abalashov:** I'm not a dogmatic FOSS purist or anything. I grasp the
concept that modules occupy a continuum.  
**abalashov:** And that some are more generally useful than others.  
**abalashov:** But I'm not excited about the idea of taking ownership of
what are essentially strictly third-party components of other
projects.  
**miconda:** I never considered taking ownership of any module other
that those I use  
**miconda:** main point was that it compiles and someone maintains/uses
it  
**abalashov:** I think maybe there's some differences about the
definition of "ownership". To me, putting anything in the repository
implies a certain amount of ownership by the project.  
**miconda:** I test whatever I use  
**abalashov:** That's why there's postgresql and there's
postgresql-contrib.  
**tuxd00d:** Having unmaintained modules, not designated as third party,
does risk tainting the appearance of a well maintained Kamailio.  
**miconda:** could be, but then it is also a matter of management
resources for all this admin bits  
**abalashov:** Or maybe they are maintained, but they just don't have
much use except to the maintainer.  
**abalashov:** I'm not a big fan of that either.  
**abalashov:** And obviously, I mean use \_in principle\_.  
**abalashov:** If a module has 1 user that's fine.  
**qxork:** maybe "officially supported" desegnation  
**miconda:** probably there are more kazoo deployments (kamailio+kazoo
module), than other combinations  
**miconda:** like kamailio+carrierroute as a stupind (and maybe not
true) example  
**abalashov:** As it stands now,
<http://kamailio.org/docs/modules/4.4.x/> shows a level playing field,
where all modules look official and serious.  
**abalashov:** That implies to most users that "whoever the lead
Kamailio people are" support it.  
**tuxd00d:** The problem with "officially supported" is the other
modules don't get as much maintenance or use. Human nature.  
**qxork:** unless someone offers to take ownership  
**qxork:** developers leave, retire, move on...  
**qxork:** if no one wants to take it, it's like a hobbiest module  
**miconda:** on the other hand, adding officially maintained means
pressure on devs  
**miconda:** there are many lcr modules, developed/used by various
companies  
**miconda:** well maintained, eventually  
**miconda:** but I don’t like to get hit for a bug in carrierroute  
**tuxd00d:** Perhaps a page could be created that shows the status of
each module in relation to the core? In a matrix table.  
**qxork:** I think well maintained should mean that the dev of that
module (or the company) be responsive to the bugs.  
**miconda:** I do a lot of fixes to the modules I don’t use when a
report is clear what’s the problem from C code point of view  
**miconda:** but in terms of functionality, I try to avoid getting
involved if I don’t use it, because I don’t have a fair overview of
what’s inside  
**miconda:** the first step would be to clean up some of the old, unsed
modules (like iptrtpproxy)  
**miconda:** then discuss what can be done for the rest  
-- linuxmaniac needs to leave  
**miconda:** I will have to go soon as well  
**miconda:** any other topics/concerns to sort out last minute here?  
**miconda:** it the font of the source code nice enough?!? ;-)  
**qxork:** just trying to make it so that officially supported \<\>
miconda has to do it  
**miconda: qxork:** to nail it down properly :-)  
**miconda:** well, I do a lot that I don’t use  
**abalashov: miconda:** Understatement of the century.  
**miconda:** as a matter of fact, never used app_python and I don’t see
myself of a python guy  
**miconda:** could be good for scripts/cli, but is hard for me to go
much into it given the whitespace-based blocks systems  
**miconda:** and I still like the most kamailio.cfg with its native
interpreter  
**abalashov:** qxork is absolutely right that the project philosophy
should not have the de facto, practical outcome that your workload and
scope of responsibility simply grows and grows.  
**abalashov:** FOSS lends itself to tragedies of the commons.  
**qxork:** be nice if you could be holding the strings rather than
having to do everything.  
**qxork:** it means that to have your module be an "officially
supported" module, you have a certain level of expectations  
**miconda:** I also don’t like putting too many restrictions out there,
that’s why I focus on keeping everything major in modules  
**abalashov:** It goes without saying - but perhaps needs saying - that
we deeply appreciate your hard work, @miconda, and that your diligence
and attention to detail makes you the best manager of a FOSS project
that I have ever seen in a lifetime of working with FOSS.  
**miconda:** if someone doesn’t like it, don’t load/use it  
**qxork:** +100 (weight based)  
**abalashov:** But your hard work is a social good, and we should meet
you in the middle by devising policies that do not leave you with the
bill after everyone else leaves the restaurant.  
**miconda: abalashov:** anything coming up as an issue to be solved
quickly?!? ;-)  
**abalashov:** :-))  
**abalashov:** I am rather conservative on modules, maybe it means I
don't understand the spirit of FOSS properly.  
**abalashov:** But in my opinion if something passes into the project
maintenance, it should be maintained by the project, but there must be a
really good value case for doing so.  
**abalashov:** Otherwise it can be downloaded from
www.kamailio-plugins.io  
**miconda:** :-)  
**qxork:** I do like that approach  
**abalashov:** And yes, it probably leads to a "second-tier" maintenance
situations for such modules.  
**miconda:** sometime is hard to predict the outcome  
**abalashov:** But so what? You can't maintain everything.  
**miconda:** I don’t use kazoo module (give it was used in many
examples) at all, but as its developer came on board, Luis contributed a
lot of code to presence and db_text modules  
**miconda:** besides the fact that its name was supposed to be changed
over the time  
**miconda:** it is why I also tend to help new comers more/faster,
because many of them turned into good community members, answering later
to others  
**miconda:** trying to impose like a limit on the first attemt to join
even with a bad module, might be a loss of a good resource  
**miconda:** in the first years of ser were a lot of constraints on who
can commit where  
**miconda:** there were long delays on accepting patches  
**abalashov:** I agree that it is better to take the long view and not
be very shortsighted about these things. But also in a mature project
it's important to have some standards and find a balance there. Asterisk
seems to have done a decent job of pivoting in that direction. Their
patch submission process can seem a bit hostile to first-time
contributors, as it's very meticulous, but I think they've got the right
idea; if you want to contribute, you do have to play  
**abalashov:** by our rules.  
**miconda:** of course is not good to canibalize/balkanize everything,
that’s again a focus on using modules  
**abalashov:** I myself am pretty bad about submitting code without
regard to existing conventions.  
**miconda:** but with cvs/svn/git is easier to revert if something
broken was made, rather than let the impressions of a ‘jailed’
environment  
**miconda:** and people seems to have gotten to “gentlement agreement”
rules of submitting patches/making pull requests even if they have
commit access  
**miconda:** if some part of the code they don’t maintain is touched  
**miconda:** (I may not do it, though :-) )  
**miconda:** unlike asterisk, here nobody does money selling licenses of
the software  
**miconda:** they have a more strict envirnoment for ages, requiring to
sign some contributor agreement, etc …  
-- abalashov nods  
**miconda:** anyhow, we can continue the discussions on mailing lists  
**miconda:** lot of other people involved are not here now  
**abalashov:** Okay! Thank you for hosting this, it was enlightening.  
**miconda:** like developers  
**miconda:** I will have to go now  
**tuxd00d:** Thanks miconda  
**miconda:** 8pm here and dinner is waiting  
**drLester:** thanks  
**miconda:** thank you all, as well!  
**miconda:** if someone wants to go ahead and make a summary, you are
welcome!  
**miconda:** send to mailing list  
**miconda:** I will try to select also the main conclusions  
**miconda:** have a nice day/evening!  
