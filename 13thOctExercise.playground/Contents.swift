/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/

// Jedi - lightSaberSkill, telekinesis,

//struct MasterYoda {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 9 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "Do or do not." }
//}
//
//struct MasterObiWan {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "These are not the droids you're looking for." }
//}
//
//struct MasterQuiGon {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
//  func mindControl() -> String { return "Republic credits will do." }
//}
//
//struct DarthVader {
//  func lightSaberSkill() -> Int { return 9 }
//  func telekinesis() -> Int { return 8 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return false }
//}
//
//struct DarthSidious {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 7 }
//  func prescience() -> Int { return 6 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return true }
//}
//
//struct DarthTyrannous {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return false }
//  func forceLightning() -> Bool { return true }
//}

/*:
 Place your refactored structs below:
 */

protocol KnownUniverse{
  func lightSaberSkill() -> Int
  func telekinesis() -> Int
  func prescience() -> Int
}

extension KnownUniverse{
    func lightSaberSkill() -> Int { return 8 } //DarthVader 9
    func telekinesis() -> Int { return 5 } //DarthVader 8, DarthSidious 7
    func prescience() -> Int { return 5 } // DarthSidious 6
}

protocol JediPowers{
    func introspection() -> String
    func mindControl() -> String
}

extension JediPowers{
    func introspection() -> String { return "Search your feelings." } //MasterQuiGon "Republic credits will do."
}

protocol SithPowers{
    func forceChoke() -> Bool
    func forceLightning() -> Bool
}

extension SithPowers{
    func forceChoke() -> Bool { return true } //DarthTyrannous false
    func forceLightning() -> Bool { return true } //DarthVader false
}

struct MasterYoda: KnownUniverse, JediPowers{
  func mindControl() -> String { return "Do or do not." }
  func telekinesis() -> Int { return 9 }
}

struct MasterObiWan: KnownUniverse, JediPowers{
    func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon: KnownUniverse, JediPowers{
    func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
    func mindControl() -> String { return "Republic credits will do." }
}

struct DarthVader: KnownUniverse, SithPowers{
    func lightSaberSkill() -> Int { return 9 }
    func telekinesis() -> Int { return 8 }
    func forceLightning() -> Bool { return false }
}

struct DarthSidious {
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
}

struct DarthTyrannous {
  func forceChoke() -> Bool { return false }
}


