DROP TABLE IF EXISTS stratagems;

-- Crear la tabla "stratagems"
CREATE TABLE stratagems (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  type VARCHAR(100),
  detachment_id INT,
  flavor_text TEXT,
  when_to_use TEXT,
  target TEXT,
  effect TEXT,
  cost VARCHAR(10),
  army_id INT
);

-- Inserts para la tabla "stratagems"
INSERT INTO stratagems (name, type, detachment_id, flavor_text, when_to_use, target, effect, cost, army_id)
VALUES ('Rejoice the Fallen', 'Strategic Ploy', 1, 'The death of a Battle Sister only stirs the survivors to fight harder to exact swift vengeance.', 'Your opponent''s Shooting Phase, just after an enemy unit has resolved its attacks.', 'One ADEPTA SORORIRTA unit from your army that had one or more of its models destroyed as a result of the attacking unit''s attacks.', 'Your unit can shoot as if it were in your Shooting phase, but it must target only that enemy unit when doing so, and can only do so if that enemy unit is an eligible target.', '1CP', 1),
('HALOED IN SOULFIRE', 'BATTLE TACTIC STRATAGEM', 2, 'The blazing glare of ancient technology and the shrouding coils of the immaterium often linger, obscuring the Grey Knights'' presence.', 'WHEN: Your Movement phase.', 'One GREY KNIGHTS PSYKER unit from your army that is arriving using the Deep Strike or Teleport Assault abilities this phase.', 'Until the start of your next Movement phase, your unit cannot be targeted by ranged attacks unless the attacking model is within 12".', '2CP', 2),
('RADIANT STRIKE', 'BATTLE TACTIC STRATAGEM', 2, 'Psychic fire rimes the blades of the Grey Knights as they charge at the foe, fanned by their battle fury. At the moment of contact, the empyric charge is unleashed in a blast of azure light.', 'Fight phase', 'One GREY KNIGHTS PSYKER unit from your army', 'Until the end of the phase, melee weapons equipped by models in your unit with the [PSYCHIC] ability also have the [DEVASTATING WOUNDS] ability', '2CP', 2),
('COMMAND RE-ROLL', 'CORE - BATTLE TACTIC STRATAGEM', NULL, 'A great commander can bend even the vagaries of fate and fortune to their will, the better to ensure victory.', 'In any phase, just after you have made a Hit roll, a Wound roll, a Damage roll, a saving throw, an Advance roll, a Charge roll, a Desperate Escape test, a Hazardous test, or just after you have rolled the dice to determine the number of attacks made with a weapon, for an attack, model or unit from your army.', '', 'You re-roll that roll, test, or saving throw.', '1CP', NULL),
('COUNTER-OFFENSIVE', 'CORE - STRATEGIC PLOY STRATAGEM', NULL, 'In close-quarters combat, the slightest hesitation can leave an opening for a swift foe to exploit', 'Fight phase, just after an enemy unit has fought', 'One unit from your army that is within Engagement Range of one or more enemy units and that has not already been selected to fight this phase.', 'Your unit fights next.', '2CP', NULL);

