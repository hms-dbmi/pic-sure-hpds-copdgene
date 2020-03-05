DELETE FROM accessRule_privilege WHERE privilege_id IN (SELECT uuid FROM privilege WHERE name LIKE 'PRIV_FENCE_%');
DELETE FROM accessRule_gate WHERE accessRule_id IN (SELECT uuid FROM access_rule WHERE name LIKE 'AR_phs%');
DELETE FROM access_rule WHERE name LIKE 'AR_phs%';
commit;
