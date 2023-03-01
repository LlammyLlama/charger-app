puts "creating charge_sessions..."

ChargeSession.create("user": "Gordon Cote")
ChargeSession.create("user": "Lorna Phillips")
ChargeSession.create("user": "Lorna Phillips")
ChargeSession.create("user": "Esmai Merritt")

puts "charge_sessions created"

puts "creating meter_values..."
MeterValue.create( "charge_session_id": "1", "amount_of_charge": "130", "rate_of_charge": "1300" )
MeterValue.create( "charge_session_id": "1", "amount_of_charge": "903", "rate_of_charge": "2600" )
MeterValue.create( "charge_session_id": "1", "amount_of_charge": "2195", "rate_of_charge": "3600")
MeterValue.create( "charge_session_id": "1", "amount_of_charge": "3187", "rate_of_charge": "4700")
MeterValue.create( "charge_session_id": "2", "amount_of_charge": "50", "rate_of_charge": "100")
MeterValue.create( "charge_session_id": "2", "amount_of_charge": "523", "rate_of_charge": "200")
MeterValue.create( "charge_session_id": "2", "amount_of_charge": "1054", "rate_of_charge": "300" )
MeterValue.create( "charge_session_id": "2", "amount_of_charge": "1287", "rate_of_charge": "600" )
MeterValue.create( "charge_session_id": "3", "amount_of_charge": "17", "rate_of_charge": "5711")
MeterValue.create( "charge_session_id": "3", "amount_of_charge": "103", "rate_of_charge": "6310" )
MeterValue.create( "charge_session_id": "3", "amount_of_charge": "195", "rate_of_charge": "5930" )
MeterValue.create( "charge_session_id": "3", "amount_of_charge": "287", "rate_of_charge": "5660" )
MeterValue.create( "charge_session_id": "4", "amount_of_charge": "456", "rate_of_charge": "1000" )
MeterValue.create( "charge_session_id": "4", "amount_of_charge": "1258", "rate_of_charge": "2000")
MeterValue.create( "charge_session_id": "4", "amount_of_charge": "2554", "rate_of_charge": "4300")
MeterValue.create( "charge_session_id": "4", "amount_of_charge": "2988", "rate_of_charge": "3300")

puts "meter_values created"
