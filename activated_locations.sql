select
	to_varchar(root_account_external_id) as pk
	, to_varchar(root_account_external_id) as Account_External_ID__c
	, count(distinct to_varchar(account_location_id)) as activated_locations
from analytics.bt_orders
where root_account_external_id is not null
	and account_location_id is not null
group by root_account_external_id
order by 1
