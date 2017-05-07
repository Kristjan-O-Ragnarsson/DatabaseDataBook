-- lag nafnhöfunds timi
select lag.nafn as "Lag", flytjandi.nafn as "Höfundur", lag.lengd as "lengd"
from lag
inner join lag_fly
on lag.ID = lag_fly.lag_id
inner join flytjandi
on flytjandi.ID = lag_fly.flytjandi_id

-- höfundur fjöldi laga
select flytjandi.nafn as "Höfundur", count(lag.nafn) as "Fjöldilaga"
from lag
inner join lag_fly
on lag.ID = lag_fly.lag_id
inner join flytjandi
on flytjandi.ID = lag_fly.flytjandi_id
group by flytjandi.nafn

-- diskur höfundur
select diskur.nafn as "Diskur", flytjandi.nafn as "Höfundur"
from lag
inner join lag_fly
on lag.ID = lag_fly.lag_id
inner join flytjandi
on flytjandi.ID = lag_fly.flytjandi_id
inner join diskur
on diskur.ID = lag.diskur_id
group by diskur.nafn

-- diskur utgefandi
select diskur.nafn as "Diskur", utgefandi.nafn
from diskur
inner join utgefandi
on utgefandi.ID = diskur.utegefandi

-- flytjandi flokkur lysing
select flytjandi.nafn, flokkur.nafn, flytjandi.lysing
from flytjandi
inner join flokkur
on flytjandi.flokkkur_flytjandi = flokkur.ID

-- diskur tegund utgefandi
select diskur.nafn, tegund.nafn, utgefandi.nafn
from diskur
inner join tegund
on diskur.tegund_disks = tegund.ID
inner join utgefandi
on diskur.utegefandi = utgefandi.ID

-- lag tegund
select lag.nafn, tegund.nafn
from lag
inner join diskur
on lag.diskur_id = diskur.ID
inner join tegund
on diskur.tegund_disks = tegund.ID