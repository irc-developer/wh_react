interface Stratagem {
  id: number;
  cost: string;
  detachment: string;
  effect: string;
  flavor_text: string;
  name: string;
  target: string;
  type: string;
  when: string;
}

interface ArmyRule {
  id: number;
  army: string;
  descrip: string;
  mechanic: string;
  name: string;
}

interface DetachmentRule {
  id: number;
  army_faction: string;
  detachment: string;
  flavor_text: string;
  name: string;
  rule_text: string;
}

interface Ability {
  id: number;
  ability_id: number | null;
  designers_note: string;
  name: string;
  rule_text: string;
  type: string;
}

interface Keyword {
  id: number;
  descript: string;
  name: string;
  type: string;
}

interface Weapon {
  id: number;
  abilities: Ability[];
  armorPenetration: string;
  attacks: string;
  damage: string;
  name: string;
  range: string;
  strength: string;
  toHit: string;
}

interface UnitComposition {
  id: number;
  has_sergeant: boolean;
  max: number;
  min: number;
}

interface EquippedWith {
  id: number;
  text: string;
}

interface WargearOptions {
  id: number;
  text: string;
}

interface Unit {
  id: number;
  abilities: Ability[];
  equipped_with: EquippedWith[];
  invulnerableSave: string;
  keywords: Keyword[];
  leadership: string;
  movement: string;
  name: string;
  OC: string;
  quantity: string;
  salvation: string;
  toughness: string;
  unit_composition: UnitComposition;
  wargear_options: WargearOptions[];
  weapons: Weapon[];
  wounds: string;
}

interface Warhammer {
  army: {
      id: number;
      army_rules: ArmyRule[];
      descript: string;
      detachment_rules: DetachmentRule[];
      name: string;
      stratagems: Stratagem[];
      units: Unit[];
  };
}
