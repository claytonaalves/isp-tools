# jun/17/2009 15:57:57 by RouterOS 3.13
# software id = WXB3-JGN
#
/queue simple
add burst-limit=0/0 burst-threshold=0/0 burst-time=0s/0s comment="" \
    direction=both disabled=yes dst-address=0.0.0.0/0 interface=all limit-at=\
    0/0 max-limit=100000000/100000000 name=Sem_Controle parent=none priority=\
    1 queue=default-small/default-small target-addresses=0.0.0.0/0 \
    total-queue=default-small
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    fabio1@intercampo.com.br0 parent=none priority=8 queue=default/default \
    target-addresses=172.18.110.1/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    fabio@intercampo.com.br1 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.190/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    andersonlfl@intercampo.com.br2 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.125/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    efigeniaxf@intercampo.com.br3 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.71/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    ariananr@intercampo.com.br4 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.120/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    adailzagdsl@intercampo.com.br5 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.93/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    adaltonmm@intercampo.com.br6 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.65/32 total-queue=default
add burst-limit=1200000/1200000 burst-threshold=450000/450000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=600000/600000 max-limit=600000/600000 name=\
    adelmaldosa@intercampo.com.br7 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.190/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    antonioids@intercampo.com.br8 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.68/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    bricoagl@intercampo.com.br9 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.95/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    cleiampr@intercampo.com.br10 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.173/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    carlossb@intercampo.com.br11 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.89/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    cleciomdn@intercampo.com.br12 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.40/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    clinicambefl@intercampo.com.br13 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.54/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    eniltondv@intercampo.com.br14 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.57/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    fabio1@intercampo.com.br15 parent=none priority=8 queue=default/default \
    target-addresses=172.18.11.2/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    elizetemc@intercampo.com.br16 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.213/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    fernandarg@intercampo.com.br17 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.162/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    giuvaniamds@intercampo.com.br18 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.98/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    gracieledcb@intercampo.com.br19 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.119/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    haristonddm@intercampo.com.br20 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.83/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    helijd@intercampo.com.br21 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.34/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    heliocdm@intercampo.com.br22 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.11/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    iranispdc@intercampo.com.br24 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.138/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    iranirds@intercampo.com.br25 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.196/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    israelcg@intercampo.com.br26 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.18/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    ivelisipdcv@intercampo.com.br27 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.31/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    josecf@intercampo.com.br28 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.124/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    fabio@intercampo.com.br29 parent=none priority=8 queue=default/default \
    target-addresses=172.18.20.5/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    josehb@intercampo.com.br30 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.157/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mariarm@intercampo.com.br31 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.182/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    fabio@intercampo.com.br32 parent=none priority=8 queue=default/default \
    target-addresses=172.18.2.35/32 total-queue=default
add burst-limit=1200000/1200000 burst-threshold=450000/450000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=600000/600000 max-limit=600000/600000 name=\
    ligiasm@intercampo.com.br33 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.86/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    lucimardsm@intercampo.com.br34 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.42/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mariadca@intercampo.com.br36 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.163/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    mariadcpa@intercampo.com.br37 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.139/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    rinaldocds@intercampo.com.br38 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.196/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    marcosap@intercampo.com.br39 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.9/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    mariandl@intercampo.com.br40 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.82/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mariolp@intercampo.com.br41 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.12/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    marlonica@intercampo.com.br42 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.132/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    martaadsf@intercampo.com.br43 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.43/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    geronimopda@intercampo.com.br44 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.15/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    mussuliniaa@intercampo.com.br45 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.94/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    nilcilenemsda@intercampo.com.br46 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.50/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    nyltongb@intercampo.com.br47 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.10/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    pedromrs@intercampo.com.br48 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.137/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    raquellp@intercampo.com.br49 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.126/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    rosilenesg@intercampo.com.br50 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.136/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br51 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.16/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    robertopgj@intercampo.com.br52 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.152/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    robsonp@intercampo.com.br53 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.45/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    rosamsd@intercampo.com.br54 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.62/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    rosanaagl@intercampo.com.br55 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.48/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    rosilenenp@intercampo.com.br56 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.158/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    rubensns@intercampo.com.br57 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.130/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    supermercadosl@intercampo.com.br58 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.53/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    saletemsdo@intercampo.com.br59 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.84/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    silvaniadcp@intercampo.com.br60 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.109/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    sormanedc@intercampo.com.br61 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.253/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    danielsb@intercampo.com.br63 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.135/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    vandamdm@intercampo.com.br64 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.2/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    fabio1@intercampo.com.br65 parent=none priority=8 queue=default/default \
    target-addresses=172.18.90.102/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio1@intercampo.com.br66 parent=none priority=8 queue=default/default \
    target-addresses=172.18.200.200/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    emterpeledtpl@intercampo.com.br67 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.135/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    emterpeledtpl@intercampo.com.br68 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.115/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    emterpeledtpl@intercampo.com.br69 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.114/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    bernadettert@intercampo.com.br70 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.217/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    clinicacdcl@intercampo.com.br71 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.113/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    julianolp@intercampo.com.br72 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.13/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    clenioads@intercampo.com.br73 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.106/32 total-queue=default
add burst-limit=700000/700000 burst-threshold=262500/262500 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=350000/350000 max-limit=350000/350000 name=\
    nadiacdc@intercampo.com.br74 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.105/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    organizacoesel@intercampo.com.br75 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.85/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    autodrl@intercampo.com.br76 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.110/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    aureaaos@intercampo.com.br77 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.194/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    adaojcds@intercampo.com.br78 parent=none priority=8 queue=default/default \
    target-addresses=172.21.1.22/32 total-queue=default
add burst-limit=200000/200000 burst-threshold=75000/75000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=100000/100000 max-limit=100000/100000 name=\
    fabio@intercampo.com.br79 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.183/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    albertosr@intercampo.com.br80 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.164/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    andersonmq@intercampo.com.br81 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.165/32 total-queue=default
add burst-limit=4000000/4000000 burst-threshold=1500000/1500000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=2000000/2000000 max-limit=2000000/2000000 name=\
    s@intercampo.com.br82 parent=none priority=8 queue=default/default \
    target-addresses=172.18.10.10/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    fabio1@intercampo.com.br83 parent=none priority=8 queue=default/default \
    target-addresses=172.18.140.140/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    adrianaapc@intercampo.com.br84 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.98/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    agnaldopds@intercampo.com.br85 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.59/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    alfredocmc@intercampo.com.br86 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.136/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    anselmov@intercampo.com.br87 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.5/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    antoniomds@intercampo.com.br88 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.78/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    pousadamdclme@intercampo.com.br89 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.75/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fredericocdc@intercampo.com.br90 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.171/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    bernadethal@intercampo.com.br91 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.230/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    camilaag@intercampo.com.br92 parent=none priority=8 queue=default/default \
    target-addresses=172.21.1.19/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    candidaas@intercampo.com.br93 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.243/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    paulocmdf@intercampo.com.br94 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.45/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    carlosrds@intercampo.com.br95 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.213/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    caixaepha@intercampo.com.br96 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.208/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    ciomaralds@intercampo.com.br97 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.187/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    claudiards@intercampo.com.br98 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.222/32 total-queue=default
add burst-limit=2000000/2000000 burst-threshold=750000/750000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=1000000/1000000 max-limit=1000000/1000000 name=\
    caixaensa@intercampo.com.br99 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.36/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    isabeld@intercampo.com.br100 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.85/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    claudiaads@intercampo.com.br101 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.43/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    claudiok@intercampo.com.br102 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.200/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    coutinhopprlme@intercampo.com.br103 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.163/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    cristianaada@intercampo.com.br104 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.69/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    darlijg@intercampo.com.br105 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.113/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    dagmarhb@intercampo.com.br106 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.147/32 total-queue=default
add burst-limit=2000000/2000000 burst-threshold=750000/750000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=1000000/1000000 max-limit=1000000/1000000 name=\
    deboracgp@intercampo.com.br107 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.16/32 total-queue=default
add burst-limit=510000/510000 burst-threshold=191250/191250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=255000/255000 max-limit=255000/255000 name=\
    delmirodsn@intercampo.com.br108 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.153/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    depositomll@intercampo.com.br109 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.137/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    elianaav@intercampo.com.br110 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.216/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    efigeniamdapdr@intercampo.com.br111 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.141/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    efigeniadat@intercampo.com.br112 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.6/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    elisabeterdod@intercampo.com.br113 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.44/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    eudojv@intercampo.com.br114 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.80/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    franciscaada@intercampo.com.br115 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.111/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    gabrielash@intercampo.com.br116 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.146/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    giovanicp@intercampo.com.br117 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.18/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    geraldodp@intercampo.com.br118 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.16/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    paulodsm@intercampo.com.br119 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.52/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    heltonjt@intercampo.com.br120 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.161/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    ildeleiaddj@intercampo.com.br121 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.116/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br122 parent=none priority=8 queue=default/default \
    target-addresses=172.18.5.10/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    isabellerdo@intercampo.com.br123 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.87/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    joaobfa@intercampo.com.br124 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.182/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    josef@intercampo.com.br125 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.172/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    jaircj@intercampo.com.br126 parent=none priority=8 queue=default/default \
    target-addresses=172.21.1.9/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    janeteal@intercampo.com.br127 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.64/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    joseads@intercampo.com.br128 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.48/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    josianeamd@intercampo.com.br129 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.35/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    juliodt@intercampo.com.br130 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.51/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    karineeg@intercampo.com.br131 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.14/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    kenyoclp@intercampo.com.br132 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.97/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    leandrojdo@intercampo.com.br133 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.185/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    luciadrp@intercampo.com.br134 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.17/32 total-queue=default
add burst-limit=19998000/19998000 burst-threshold=7499250/7499250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=9999000/9999000 max-limit=9999000/9999000 name=\
    fabio@intercampo.com.br135 parent=none priority=8 queue=default/default \
    target-addresses=172.23.0.10/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    lauroafl@intercampo.com.br136 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.15/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    lucienelk@intercampo.com.br137 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.7/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    fabio@intercampo.com.br138 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.38/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    magdadbl@intercampo.com.br139 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.49/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    alinecc@intercampo.com.br140 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.20/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    marcelocv@intercampo.com.br141 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.66/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    josefajdl@intercampo.com.br142 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.54/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    mariaab@intercampo.com.br143 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.106/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mariaadfc@intercampo.com.br144 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.138/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    paulohnm@intercampo.com.br145 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.201/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    mariadm@intercampo.com.br146 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.107/32 total-queue=default
add burst-limit=700000/700000 burst-threshold=262500/262500 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=350000/350000 max-limit=350000/350000 name=\
    marialp@intercampo.com.br147 parent=none priority=8 queue=default/default \
    target-addresses=172.18.2.11/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mariamdl@intercampo.com.br148 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.3/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mariarpx@intercampo.com.br149 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.159/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mariadgmav@intercampo.com.br150 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.81/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mariadmaa@intercampo.com.br151 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.122/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    marinasp@intercampo.com.br152 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.38/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    micapelmcdpl@intercampo.com.br153 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.2/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    neivaldoaj@intercampo.com.br154 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.218/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    nelemdsf@intercampo.com.br155 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.118/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    nilcileiaads@intercampo.com.br156 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.206/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    nivaldaeds@intercampo.com.br157 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.120/32 total-queue=default
add burst-limit=1200000/1200000 burst-threshold=450000/450000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=600000/600000 max-limit=600000/600000 name=\
    oppsmciecl@intercampo.com.br158 parent=none priority=8 queue=\
    default/default target-addresses=187.1.51.162/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    ouromvl@intercampo.com.br159 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.203/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br160 parent=none priority=8 queue=default/default \
    target-addresses=172.18.100.101/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    ovidiogcp@intercampo.com.br161 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.130/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    paulohg@intercampo.com.br162 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.166/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    pousadamdclme@intercampo.com.br163 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.74/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    qualihortapfeclme@intercampo.com.br164 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.149/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    robertolpc@intercampo.com.br165 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.211/32 total-queue=default
add burst-limit=510000/510000 burst-threshold=191250/191250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=255000/255000 max-limit=255000/255000 name=\
    rafaeldmp@intercampo.com.br166 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.93/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    rangeliecdmegepdsl@intercampo.com.br167 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.155/32 total-queue=default
add burst-limit=10000000/10000000 burst-threshold=3750000/3750000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=5000000/5000000 max-limit=5000000/5000000 name=\
    fabio@intercampo.com.br168 parent=none priority=8 queue=default/default \
    target-addresses=172.18.70.70/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    rodoll@intercampo.com.br169 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.84/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    ronaldost@intercampo.com.br170 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.22/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    ronansc@intercampo.com.br171 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.88/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    roseleneadmf@intercampo.com.br172 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.173/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    rosileiasg@intercampo.com.br173 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.210/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    sheilafbsds@intercampo.com.br174 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.226/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    sidmarjda@intercampo.com.br175 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.188/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    soniasda@intercampo.com.br176 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.214/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    sidineiasf@intercampo.com.br177 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.209/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    supermercadoemsll1@intercampo.com.br178 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.23/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    suzianecda@intercampo.com.br179 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.224/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    transportadoraaql@intercampo.com.br180 parent=none priority=8 queue=\
    default/default target-addresses=172.18.2.6/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    vilmadclp@intercampo.com.br181 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.160/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    vilsoncdd@intercampo.com.br182 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.8/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    vivianegc@intercampo.com.br183 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.50/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    walterfdsj@intercampo.com.br184 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.10/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    wedersonaa@intercampo.com.br185 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.205/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    wagnerado@intercampo.com.br186 parent=none priority=8 queue=\
    default/default target-addresses=172.18.2.24/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    waniranr@intercampo.com.br187 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.124/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    vandelim@intercampo.com.br188 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.27/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    haroldogdsj@intercampo.com.br189 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.117/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    geraldobdr@intercampo.com.br190 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.150/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    vanessalp@intercampo.com.br191 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.17/32 total-queue=default
add burst-limit=200000/200000 burst-threshold=75000/75000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=100000/100000 max-limit=100000/100000 name=\
    fabio@intercampo.com.br192 parent=none priority=8 queue=default/default \
    target-addresses=172.18.150.151/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br193 parent=none priority=8 queue=default/default \
    target-addresses=172.18.100.102/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    ricardopx@intercampo.com.br194 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.174/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    rafaelfds@intercampo.com.br195 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.6/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    fabio@intercampo.com.br196 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.39/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br197 parent=none priority=8 queue=default/default \
    target-addresses=172.18.150.152/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    ednamds@intercampo.com.br198 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.99/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    inspetoriasjb1@intercampo.com.br199 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.56/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    inspetoriasjb@intercampo.com.br200 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.55/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    franciscodas@intercampo.com.br202 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.195/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    cintia@intercampo.com.br203 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.199/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br204 parent=none priority=8 queue=default/default \
    target-addresses=172.18.4.103/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br205 parent=none priority=8 queue=default/default \
    target-addresses=172.18.4.102/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    fabio@intercampo.com.br206 parent=none priority=8 queue=default/default \
    target-addresses=172.18.90.91/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    marcelocg@intercampo.com.br207 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.102/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    ouromvl@intercampo.com.br208 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.143/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    ritadcg@intercampo.com.br209 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.181/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    neuzamnds@intercampo.com.br210 parent=none priority=8 queue=\
    default/default target-addresses=172.18.22.6/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    andersonxp@intercampo.com.br211 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.215/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    wagnerae@intercampo.com.br212 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.175/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br213 parent=none priority=8 queue=default/default \
    target-addresses=172.18.10.8/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br214 parent=none priority=8 queue=default/default \
    target-addresses=172.18.100.100/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    robertopf@intercampo.com.br216 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.151/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    ricardof@intercampo.com.br217 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.227/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    fabio@intercampo.com.br218 parent=none priority=8 queue=default/default \
    target-addresses=172.18.60.60/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br219 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.97/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br220 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.96/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br221 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.7/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br222 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.101/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br223 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.150/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    fabio@intercampo.com.br224 parent=none priority=8 queue=default/default \
    target-addresses=172.18.11.1/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br225 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.31/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br226 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.180/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br227 parent=none priority=8 queue=default/default \
    target-addresses=172.18.3.10/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br228 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.154/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br229 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.152/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br230 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.153/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br231 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.151/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br232 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.156/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br233 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.36/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br234 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.37/32 total-queue=default
add burst-limit=198000/198000 burst-threshold=74250/74250 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=99000/99000 max-limit=99000/99000 name=\
    fabio@intercampo.com.br235 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.102/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br236 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.81/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=yes dst-address=0.0.0.0/0 interface=\
    all limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br237 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.103/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br238 parent=none priority=8 queue=default/default \
    target-addresses=172.18.4.100/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br239 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.80/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br240 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.108/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br241 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.32/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br242 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.104/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br243 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.34/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br244 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.140/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br245 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.141/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br246 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.142/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br247 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.35/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br248 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.181/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    fabio@intercampo.com.br249 parent=none priority=8 queue=default/default \
    target-addresses=172.18.20.20/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br250 parent=none priority=8 queue=default/default \
    target-addresses=172.17.1.107/32 total-queue=default
add burst-limit=6000000/6000000 burst-threshold=2250000/2250000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=3000000/3000000 max-limit=3000000/3000000 name=\
    fabio@intercampo.com.br251 parent=none priority=8 queue=default/default \
    target-addresses=172.18.2.37/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    fabio@intercampo.com.br252 parent=none priority=8 queue=default/default \
    target-addresses=172.18.4.101/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    brunodda@intercampo.com.br253 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.80/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    fabio1@intercampo.com.br254 parent=none priority=8 queue=default/default \
    target-addresses=172.18.90.100/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    aldeneidendf@intercampo.com.br255 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.141/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br256 parent=none priority=8 queue=default/default \
    target-addresses=172.17.0.3/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br257 parent=none priority=8 queue=default/default \
    target-addresses=172.17.0.98/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    fabio@intercampo.com.br258 parent=none priority=8 queue=default/default \
    target-addresses=172.17.0.99/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br259 parent=none priority=8 queue=default/default \
    target-addresses=172.17.0.100/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    fabio@intercampo.com.br260 parent=none priority=8 queue=default/default \
    target-addresses=172.18.0.182/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    robertopf@intercampo.com.br261 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.152/32 total-queue=default
add burst-limit=200000/200000 burst-threshold=75000/75000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=100000/100000 max-limit=100000/100000 name=\
    fabio@intercampo.com.br262 parent=none priority=8 queue=default/default \
    target-addresses=172.18.30.30/32 total-queue=default
add burst-limit=200000/200000 burst-threshold=75000/75000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=100000/100000 max-limit=100000/100000 name=\
    fabio@intercampo.com.br263 parent=none priority=8 queue=default/default \
    target-addresses=172.18.40.40/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    fabio@intercampo.com.br264 parent=none priority=8 queue=default/default \
    target-addresses=172.18.50.50/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    villerhl@intercampo.com.br884 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.219/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    antoniojdc@intercampo.com.br3183 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.109/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    itabirito@intercampo.com.br2575 parent=none priority=8 queue=\
    default/default target-addresses=187.1.51.134/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    "associa\E7\E3ocdiec@intercampo.com.br2680" parent=none priority=8 queue=\
    default/default target-addresses=187.1.51.142/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    jorgelg@intercampo.com.br1475 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.92/32 total-queue=default
add burst-limit=1000000/1000000 burst-threshold=375000/375000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=500000/500000 max-limit=500000/500000 name=\
    vicentepeil@intercampo.com.br4283 parent=none priority=8 queue=\
    default/default target-addresses=172.18.111.3/32 total-queue=default
add burst-limit=64000/128000 burst-threshold=24000/48000 burst-time=10s/10s \
    comment="" direction=both disabled=no dst-address=0.0.0.0/0 interface=all \
    limit-at=32000/64000 max-limit=32000/64000 name=\
    maisctl@intercampo.com.br3462 parent=none priority=8 queue=\
    default/default target-addresses=172.18.111.20/32 total-queue=default
add burst-limit=2000000/2000000 burst-threshold=750000/750000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=1000000/1000000 max-limit=1000000/1000000 name=\
    maisctl@intercampo.com.br8966 parent=none priority=8 queue=\
    default/default target-addresses=187.1.51.166/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    sarahemjb@intercampo.com.br2665 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.140/32 total-queue=default
add burst-limit=1200000/1200000 burst-threshold=450000/450000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=600000/600000 max-limit=600000/600000 name=\
    hermelindomda@intercampo.com.br3678 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.131/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    carlosrldp@intercampo.com.br2522 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.21/32 total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mariadcfgf@intercampo.com.br7561 parent=none priority=8 queue=\
    default/default target-addresses=172.21.1.20/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    manoeljgn@intercampo.com.br7823 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.67/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    mariliasms@intercampo.com.br9912 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.78/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    anamac@intercampo.com.br277 parent=none priority=8 queue=default/default \
    target-addresses=172.18.1.192/32 total-queue=default
add burst-limit=800000/800000 burst-threshold=300000/300000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=400000/400000 max-limit=400000/400000 name=\
    samospl@intercampo.com.br7448 parent=none priority=8 queue=\
    default/default target-addresses=172.18.0.143/32 total-queue=default
add burst-limit=0/0 burst-threshold=0/0 burst-time=0s/0s comment="" \
    direction=both disabled=no dst-address=0.0.0.0/0 interface=all limit-at=\
    1000000/1000000 max-limit=2000000/2000000 name="Camardo Correa" parent=\
    none priority=8 queue=default/default target-addresses=187.1.51.130/32 \
    total-queue=default
add burst-limit=430000/430000 burst-threshold=161250/161250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=215000/215000 max-limit=215000/215000 name=\
    mayrarbf@intercampo.com.br5273 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.100/32 total-queue=default
add burst-limit=310000/310000 burst-threshold=116250/116250 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=155000/155000 max-limit=155000/155000 name=\
    carloshds@intercampo.com.br197 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.77/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    luziaeods@intercampo.com.br6402 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.73/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    marcian@intercampo.com.br7431 parent=none priority=8 queue=\
    default/default target-addresses=172.17.1.49/32 total-queue=default
add burst-limit=600000/600000 burst-threshold=225000/225000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=300000/300000 max-limit=300000/300000 name=\
    gilsonag@intercampo.com.br5906 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.39/32 total-queue=default
add burst-limit=400000/400000 burst-threshold=150000/150000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=200000/200000 max-limit=200000/200000 name=\
    giovanneac@intercampo.com.br922 parent=none priority=8 queue=\
    default/default target-addresses=172.18.1.129/32 total-queue=default
add burst-limit=2000000/2000000 burst-threshold=750000/750000 burst-time=\
    10s/10s comment="" direction=both disabled=no dst-address=0.0.0.0/0 \
    interface=all limit-at=1000000/1000000 max-limit=1000000/1000000 name=\
    "associa\E7\E3ocdiec@intercampo.com.br9541" parent=none priority=8 queue=\
    default/default target-addresses=189.112.75.130/32 total-queue=default
