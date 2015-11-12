Server.destroy_all

['AR 1', 'ARAB 1', 'ASIA 1', 'AU 1', 'BR 1', 'CN 1', 'DE 1', 'DE 2', 'ES 1',
 'FR 1', 'GB 1', 'GR 1', 'HANT 1', 'HIS 1', 'ID 1', 'IN 1', 'IT 1', 'JP 1',
 'KR 1', 'MX 1', 'NL 1', 'PH 1', 'PL 1', 'PT 1', 'RU 1', 'RU 2', 'TR 1',
 'US 1', 'US 2', 'INT 2', 'SKN 1'].each do |server|
  Server.create(name: server)
end
