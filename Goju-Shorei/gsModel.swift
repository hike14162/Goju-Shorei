
import UIKit

class gsModel: NSObject, UIPageViewControllerDataSource
{
    var greenTechs: [gsTechniques] = []
    var purpleTechs: [gsTechniques] = []
    var orangeTechs: [gsTechniques] = []
    var yellowTechs: [gsTechniques] = []
    
    
    var activeTechs: [gsTechniques] = []
    var randomTechs: [gsTechniques] = []
    
    
    override init()
    {
        super.init()
        setClues()
    }
    

    
    func setClues()
    {
        // Yellow Tech
        var tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left rising block, Left front stance, Right reverse punch to face."
        tech.techStep1 = "Left rising block (sanchin stance);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right reverse punch to the face."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 1
        yellowTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left downward block, Left front stance, Right reverse punch to solar plexus."
        tech.techStep1 = "Left downward block (sanchin stance);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right reverse punch to the solar plexus."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the stomach"
        tech.techNumber = 2
        yellowTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left rising block, Left front stance, Right reverse punch to ribs."
        tech.techStep1 = "Left rising block (sanchin stance);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right reverse punch to the ribs."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 3
        yellowTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left downward block, Left front stance, Right knife-edge strike to neck."
        tech.techStep1 = "Left downward block (sanchin stance);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right knife-edge strike to the neck"
        tech.techStep4 = ""
        tech.techNotes = "The strike is chambered when you perform the block"
        tech.techVerses = "Against a right lunge punch to the stomach"
        tech.techNumber = 4
        yellowTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left middle block, Left front stance, Right reverse punch to solar plexus, Right roundhouse kick to ribs."
        tech.techStep1 = "Left middle block (opening opponent up);"
        tech.techStep2 = "Move forward into a wide left front stance;"
        tech.techStep3 = "Right reverse punch to the solar plexus;"
        tech.techStep4 = "Right roundhouse kick to the ribs."
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 5
        yellowTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left middle block, Left front stance, Right hammer-fist to temple."
        tech.techStep1 = "Left middle block (opening opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right hammer-fist strike to the temple"
        tech.techStep4 = ""
        tech.techNotes = "The strike is chambered when you perform the block"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 6
        yellowTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left parry block, Left front stance, Right knife-edge strike to jaw."
        tech.techStep1 = "Left parry block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right knife-edge strike to the jaw."
        tech.techStep4 = ""
        tech.techNotes = "The block, stance and strike are done at the same time."
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 7
        yellowTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left parry block, Left 45 degree horse stance, Right reverse punch to ribs."
        tech.techStep1 = "Left parry block (closing opponent up);"
        tech.techStep2 = "Move forward into a left 45 degree horse stance;"
        tech.techStep3 = "Turn into a left front stance;"
        tech.techStep4 = "Right reverse punch to the ribs."
        tech.techNotes = "The block and stance are done at the same time"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 8
        yellowTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left knife-edge block, Right back stance, Front kick with front leg to solar plexus."
        tech.techStep1 = "Left knife-edge block (opening opponent up);"
        tech.techStep2 = "Move back into a right back stance;"
        tech.techStep3 = "Left front kick to the solar plexus."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 9
        yellowTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Yellow"
        tech.techDesc = "Left knife-edge block, Right back stance, Shift into left front stance, Right reverse punch to plexus."
        tech.techStep1 = "Left knife-edge block (opening opponent up);"
        tech.techStep2 = "Move back into a right back stance;"
        tech.techStep3 = "Move into a left front stance;"
        tech.techStep4 = "Right reverse punch to the solar plexus."
        tech.techNotes = "The block and stance are done at the same time"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 10
        yellowTechs.append(tech)
        
        
        
        // ************** Ornage Tech *************************
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left forearm block, Left front stance, Right arc hand to throat."
        tech.techStep1 = "Left forearm block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right arc hand strike to the throat."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 1
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "C block to the left, Left side kick to knee."
        tech.techStep1 = "Left C block;"
        tech.techStep2 = "Left side kick to the knee."
        tech.techStep3 = ""
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a choke from the left"
        tech.techNumber = 2
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left parry, Left front stance, Right palm-edge to jaw."
        tech.techStep1 = "Left parry block (closing opponent up);"
        tech.techStep2 = "Move forward into a front stance;"
        tech.techStep3 = "Right palm-edge strike to the jaw."
        tech.techStep4 = ""
        tech.techNotes = "The block, stance, and strike are done at the same time"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 3
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left knife-edge block in a right back stance, Left side kick to hip."
        tech.techStep1 = "Move forward into a right back stance;"
        tech.techStep2 = "Left knife-edge block (opening opponent up);"
        tech.techStep3 = "Left side kick to the hip-bone."
        tech.techStep4 = ""
        tech.techNotes = "Check opponent’s punching hand with your left hand"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 4
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left elbow block in left 45 degree horse stance, Left back-fist to face (same hand)."
        tech.techStep1 = "Left elbow block (closing opponent up);"
        tech.techStep2 = "Move forward into a left 45 degree horse stance;"
        tech.techStep3 = "Left back-fist strike to the face (check opponent’s punching arm with your right hand)."
        tech.techStep4 = ""
        tech.techNotes = "The block and stance are done at the same time"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 5
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left outside forearm block, Left front stance, Right hammer fist to collarbone."
        tech.techStep1 = "Left outside forearm block (opening opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right hammer-fist strike to the collarbone"
        tech.techStep4 = ""
        tech.techNotes = "Check opponent’s punching hand with your left hand"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 6
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left knife-edge block in a right cat stance, Left palm-edge to nose."
        tech.techStep1 = "Left knife-edge block (opening opponent up);"
        tech.techStep2 = "Move forward into a right cat stance;"
        tech.techStep3 = "Left palm-edge strike to the nose."
        tech.techStep4 = ""
        tech.techNotes = "The block and stance are done at the same time"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 7
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left outside forearm block, Left front stance, Right ridgehand to neck."
        tech.techStep1 = "Left outside forearm block (opening opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right ridge-hand strike to the neck."
        tech.techStep4 = ""
        tech.techNotes = "The block, stance, and strike are done at the same time"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 8
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left inside forearm block, Left front stance, Right inverted punch to ribs."
        tech.techStep1 = "Left inside forearm block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right reverse inverted punch to the ribs."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 9
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left inside forearm block, Left 45 degree horse stance, Left reverse (palm down) knife-edge strike to jaw (same hand)."
        tech.techStep1 = "Left inside forearm block (closing opponent up);"
        tech.techStep2 = "Move forward into a left 45 degree horse stance;"
        tech.techStep3 = "Left reverse knife-edge strike to the jaw."
        tech.techStep4 = ""
        tech.techNotes = "Check opponent’s punching arm with your right hand"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 10
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left inside forearm block, Left 45 degree horse stance, Left back-fist to jaw (same hand)."
        tech.techStep1 = "Left inside forearm block (closing opponent up);"
        tech.techStep2 = "Move forward into a left 45° horse stance;"
        tech.techStep3 = "Left back-fist strike to the jaw"
        tech.techStep4 = ""
        tech.techNotes = "Check opponent’s punching hand with your right hand"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 11
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Left scoop block, Step wide into a left front stance, Right hook kick to kidney."
        tech.techStep1 = "Left scoop block (opening opponent up);"
        tech.techStep2 = "Move forward into a wide front stance;"
        tech.techStep3 = "Right hook kick to the kidney."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right front kick to the stomach"
        tech.techNumber = 12
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Axe kick to mid level target pad."
        tech.techStep1 = "Self - explanatory"
        tech.techStep2 = ""
        tech.techStep3 = ""
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = ""
        tech.techNumber = 13
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Inside crescent kick to head level target pad, Side kick to abdomen with same leg."
        tech.techStep1 = "Self - explanatory"
        tech.techStep2 = ""
        tech.techStep3 = ""
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = ""
        tech.techNumber = 14
        orangeTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Orange"
        tech.techDesc = "Outside crescent kick to head level target pad, Side kick to abdomen with same leg."
        tech.techStep1 = "Self - explanatory"
        tech.techStep2 = ""
        tech.techStep3 = ""
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = ""
        tech.techNumber = 15
        orangeTechs.append(tech)

        
        
        
        //Purple
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Right downwrist block, Right reverse punch to chin or jaw."
        tech.techStep1 = "In a sanchin stance execute a right downwrist block;"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right reverse punch to the chin or the jaw."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right front kick to the stomach"
        tech.techNumber = 1
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Right downwrist block, Right claw to face."
        tech.techStep1 = "In a sanchin stance execute a right downwrist block;"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right claw to the face"
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right front kick to the stomach"
        tech.techNumber = 2
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Right downwrist block, Left reverse punch to ribs."
        tech.techStep1 = "In a sanchin stance execute a right downwrist block;"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Turn into a right front stance;"
        tech.techStep4 = "Left reverse punch to the ribs."
        tech.techNotes = ""
        tech.techVerses = "Against a right front kick to the stomach"
        tech.techNumber = 3
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Scissors block, Take opponent to the floor."
        tech.techStep1 = "Scissor block to the left (left arm down and right arm up);"
        tech.techStep2 = "Trap your opponents leg with your lower arm"
        tech.techStep3 = "Strike the back of the knee with your upper arm"
        tech.techStep4 = "(your opponent should turn over face down);"
        tech.techNotes = "Pull backward stepping with your left foot taking them to the floor."
        tech.techVerses = "Against a right roundhouse kick to the midsection"
        tech.techNumber = 4
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left wrist block, Left knife-edge strike to liver/spleen."
        tech.techStep1 = "Left wrist block (sanchin stance);"
        tech.techStep2 = "Move forward into a left horse stance;"
        tech.techStep3 = "Turn to the left into a left front stance;"
        tech.techStep4 = "Left reverse knife-edge strike to the liver/spleen."
        tech.techNotes = "The second stance and strike are done at the same time"
        tech.techVerses = "Against a right front kick to the lower abdomen"
        tech.techNumber = 5
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left wrist block, Right spearhand strike to eyes."
        tech.techStep1 = "Left wrist block;"
        tech.techStep2 = "Left 45 degree horse stance;"
        tech.techStep3 = "Right spearhand strike to the eyes."
        tech.techStep4 = ""
        tech.techNotes = "The block, stance, and the strike are done at the same time"
        tech.techVerses = "Against a right front kick to the stomach"
        tech.techNumber = 6
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left quick kick to opponent’s midsection, Right reverse punch to face."
        tech.techStep1 = "Left quick kick to the midsection;"
        tech.techStep2 = "Stepping down into a left front stance (checking the opponent’s hand with your left hand)"
        tech.techStep3 = "Right reverse punch to the face."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a open fighting stance"
        tech.techNumber = 7
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Avoid punch land in a left front stance, Right shin kick to ribs, Left reverse punch to side of head."
        tech.techStep1 = "Avoid the punch by dodging to the left and landing in a left front stance;"
        tech.techStep2 = "Right shin kick to the ribs;"
        tech.techStep3 = "Step down into a right front stance;"
        tech.techStep4 = "Left reverse punch to the side of the head."
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 8
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "From a fighting stance, Left chicken kick to chin or jaw, Right reverse punch to plexus."
        tech.techStep1 = "Left chicken kick to the chin or jaw;"
        tech.techStep2 = "Step down into a left front stance;"
        tech.techStep3 = "Right reverse punch to the solar plexus."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a open fighting stance"
        tech.techNumber = 9
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left rising block in a left sanchin stance, Step into a left front stance with a palmheel to chin."
        tech.techStep1 = "Left rising block (sanchin stance);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right palm-heel strike to the chin."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 10
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left parry block in a left front stance, Right ridge to neck."
        tech.techStep1 = "Left parry block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right ridge-hand strike to the neck."
        tech.techStep4 = ""
        tech.techNotes = "The block, stance and the strike are done at the same time."
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 11
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left parry block in a left front stance and Right claw to face."
        tech.techStep1 = "Left parry block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right claw to the face."
        tech.techStep4 = ""
        tech.techNotes = "The block, stance and the strike are done at the same time."
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 12
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Right inside forearm block, Right forearm strike to jaw."
        tech.techStep1 = "Right inside forearm block (opening opponent up);"
        tech.techStep2 = "Move forward into a right 45 degree horse stance;"
        tech.techStep3 = "Right forearm strike to the jaw."
        tech.techStep4 = ""
        tech.techNotes = "Check the opponents punching hand with your left hand"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 13
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left outside forearm block and Right forearm strike to chin or jaw, Right sidekick to inside of knee."
        tech.techStep1 = "Left outside forearm block (opening opponent up);"
        tech.techStep2 = "Right forearm strike to the chin or jaw;"
        tech.techStep3 = "Sanchin stance;"
        tech.techStep4 = "Right sidekick to the inside of the knee."
        tech.techNotes = "The block, strike, and stance are done at the same time in a sanchin stance"
        tech.techVerses = "Against a right reverse punch to the chest"
        tech.techNumber = 14
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Right downward block, Right palmheel strike to chin or jaw."
        tech.techStep1 = "Right downward block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right reverse palm-heel strike to the chin or jaw."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the lower body"
        tech.techNumber = 15
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Right downward block, Right elbow strike to chin or jaw."
        tech.techStep1 = "Right downward block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance"
        tech.techStep3 = "Right reverse elbow strike to the chin or jaw."
        tech.techStep4 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the lower body"
        tech.techNumber = 16
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left inside forearm block, Left back-fist to liver/spleen."
        tech.techStep1 = "Left inside forearm block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Left back-fist strike to the liver or spleen"
        tech.techStep4 = ""
        tech.techNotes = "Check the opponents punching hand with your right hand"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 17
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left inside forearm block, Right back-fist to kidney."
        tech.techStep1 = "Move forward into a left 45° degree horse stance;"
        tech.techStep2 = "Left inside forearm block;"
        tech.techStep3 = "Turn into a left front stance;"
        tech.techStep4 = "Right back-fist strike to the kidney."
        tech.techNotes = "The stance and block are done at the same time"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 18
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left inside forearm block, Left back-fist to groin."
        tech.techStep1 = "Move forward into a left 45° horse stance;"
        tech.techStep2 = "Left forearm block;"
        tech.techStep3 = "Left back-fist strike to the groin"
        tech.techStep4 = ""
        tech.techNotes = "The stance and block are done at the same time / check the opponent’s punching hand with your right hand"
        tech.techVerses = "Against a right lunge punch to the chest"
        tech.techNumber = 19
        purpleTechs.append(tech)
        
        tech = gsTechniques()
        tech.techColor = "Purple"
        tech.techDesc = "Left middle block, Left bent wrist to temple, Left knife edge strike to neck, shift into a Left front stance, Right upright punch to plexus."
        tech.techStep1 = "Left middle block (opening opponent up);"
        tech.techStep2 = "Left bent wrist strike to the temple"
        tech.techStep3 = "Left knife-edge strike to the neck"
        tech.techStep4 = "Move forward into a left front stance;"
        tech.techStep5 = "Right reverse punch to the solar plexus."
        tech.techNotes = "The block and first two strikes are done in a sanchin stance"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 20
        purpleTechs.append(tech)
        
        
        //Green
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Double knife-edge block, Double slap, Knee to groin."
        tech.techStep1 = "Double knife-edge block;"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Double slap to the ears (cupping the hands);"
        tech.techStep4 = "Right knee to the groin."
        tech.techStep5 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a two handed grab"
        tech.techNumber = 1
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Left outer forearm block and right knife-edge strike to neck, Left reverse punch to the solar plexus."
        tech.techStep1 = "Left outer forearm block (opening opponent up);"
        tech.techStep2 = "Sanchin stance;"
        tech.techStep3 = "Right knife-edge strike to the neck;"
        tech.techStep4 = "Move forward into a right front stance;"
        tech.techStep5 = "The block, stance, and strike are done at the same time"
        tech.techNotes = "Left reverse punch to the solar plexus."
        tech.techVerses = "Against a right lunge punch to the midsection"
        tech.techNumber = 2
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Inside-out kick, Right reverse punch to face."
        tech.techStep1 = "Left inside-out kick to the groin;"
        tech.techStep2 = "Step down into a left front stance;"
        tech.techStep3 = "Right reverse punch to the face."
        tech.techStep4 = ""
        tech.techStep5 = ""
        tech.techNotes = ""
        tech.techVerses = "Against an open fighting stance"
        tech.techNumber = 3
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Right knife-edge block, Right roundhouse kick to plexus, Left punch to kidney."
        tech.techStep1 = "Step with your left foot to the left into a left back stance;"
        tech.techStep2 = "Right knife-edge block;"
        tech.techStep3 = "Right roundhouse kick to the solar plexus;"
        tech.techStep4 = "Step down into a right front stance (hold the opponents arm);"
        tech.techStep5 = "Left reverse punch to the kidney."
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 4
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Left parry and left side kick to liver, Right roundhouse kick to head or body, Left reverse punch to plexus."
        tech.techStep1 = "Step back to 6 O’clock with your right foot;"
        tech.techStep2 = "Left parry block (closing opponent up);"
        tech.techStep3 = "Left side kick to the liver"
        tech.techStep4 = "Right roundhouse kick to the head or body;"
        tech.techStep5 = "Step down into a right front stance with a left reverse punch to the solar plexus."
        tech.techNotes = "check opponent’s punching arm with your right hand"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 5
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Left middle block and Right roundhouse kick and right punch to face."
        tech.techStep1 = "Left middle block;"
        tech.techStep2 = "Right roundhouse kick to the groin;"
        tech.techStep3 = "Right upright punch to the face."
        tech.techStep4 = ""
        tech.techStep5 = ""
        tech.techNotes = "The block, kick and strike are done at the same time."
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 6
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Right outer forearm block, Right front kick to lower abdomen, Right roundhouse kick to head."
        tech.techStep1 = "Right outer forearm block (closing opponent up);"
        tech.techStep2 = "Right front kick to the lower abdomen;"
        tech.techStep3 = "Right roundhouse kick to the head."
        tech.techStep4 = ""
        tech.techStep5 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 7
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "X-block and left side kick to midsection, Left hammer-fist to spine."
        tech.techStep1 = "Rising X-block;"
        tech.techStep2 = "Left side kick to the midsection;"
        tech.techStep3 = "Step down into a horse stance;"
        tech.techStep4 = "Left hammer-fist strike to the spine (the strike is at the base of the neck)."
        tech.techStep5 = ""
        tech.techNotes = "The block and kick are done at the same time"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 8
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "X-block and right side kick, Double punch (face and plexus)."
        tech.techStep1 = "Rising X-block;"
        tech.techStep2 = "Right side kick to the midsection;"
        tech.techStep3 = "Step down into a right front stance;"
        tech.techStep4 = "Double punch to the solar plexus and to the face ."
        tech.techStep5 = "(Right lunge punch to the solar plexus and left reverse punch to the face)"
        tech.techNotes = "The block and the kick are done at the same time."
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 9
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Right quick change block, Right knife-edge strike, Right flip-kick to groin, Left knife-edge strike."
        tech.techStep1 = "Right quick change block (opening opponent up);"
        tech.techStep2 = "Right reverse knife-edge strike to the neck (grab back of neck);"
        tech.techStep3 = "Right flip kick to the groin;"
        tech.techStep4 = "Step down into a right front stance;"
        tech.techStep5 = "Left knife-edge strike to the neck."
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 10
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Right parry and left punch to side, Left back kick to chest."
        tech.techStep1 = "Step forward into a left horse stance;"
        tech.techStep2 = "Right parry block (opening opponent up)"
        tech.techStep3 = "Left punch to the side;"
        tech.techStep4 = "Turn to your right with a left back kick to the chest."
        tech.techStep5 = ""
        tech.techNotes = "The stance, block and strike are done at the same time."
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 11
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Quick change block, thumb to arm-pit, Upright strike to solar plexus, Back fist to face, Side kick to knee."
        tech.techStep1 = "Right quick change block (opening opponent up);"
        tech.techStep2 = "Right thumb to arm pit (heart 1);"
        tech.techStep3 = "Left upright strike to the solar plexus;"
        tech.techStep4 = "Right back-fist strike to the face;"
        tech.techStep5 = "Right side kick to the knee."
        tech.techNotes = "All moves are done in a sanchin stance"
        tech.techVerses = "Against a right reverse punch to the face"
        tech.techNumber = 12
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Double rising block, Fists to plexus, Left back kick to chest."
        tech.techStep1 = "Double rising block;"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Double punch to the solar plexus;"
        tech.techStep4 = "Turn to the right with a left back kick to the chest."
        tech.techStep5 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a two handed grab"
        tech.techNumber = 13
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Left parry and right ridge to face, Left elbow to kidney."
        tech.techStep1 = "Left parry block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Right ridge hand strike to the face;"
        tech.techStep4 = "Turn to the right into a right front stance;"
        tech.techStep5 = "Left elbow strike to the kidney (trap the opponent’s punching arm with your right arm)."
        tech.techNotes = "The stance, block and strike are done at the same time."
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 14
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Left quick change block, double punch, Right roundhouse kick."
        tech.techStep1 = "Left quick change block (closing opponent up);"
        tech.techStep2 = "Move forward into a left front stance;"
        tech.techStep3 = "Double punch to the ribs and to the face "
        tech.techStep4 = "Right roundhouse kick to the midsection."
        tech.techStep5 = ""
        tech.techNotes = "left lunge punch to the ribs and right reverse punch to the face"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 15
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Left knife-edge block (back stance), Left spear to eyes, Right spear to liver, Roundhouse to spine."
        tech.techStep1 = "Left knife-edge block (opening opponent up);"
        tech.techStep2 = "Step forward into a right back stance / Left spear-hand strike to the eyes;"
        tech.techStep3 = "Step over into a left front stance (check opponent’s punching arm with you left hand);"
        tech.techStep4 = "Right spear-hand strike to the liver;"
        tech.techStep5 = "Step up into a sanchin stance; / Left roundhouse kick to the spine."
        tech.techNotes = "The block and stance are done at the same time"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 16
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Right forearm block, Right backhand slap across the face, Right knife-edge to neck, Left arc hand to throat."
        tech.techStep1 = "Right forearm block (opening opponent up);"
        tech.techStep2 = "Right backhand slap across the face;"
        tech.techStep3 = "Right knife-edge strike to the neck;"
        tech.techStep4 = "Move forward into a right front stance;"
        tech.techStep5 = "Left arc hand strike to the throat"
        tech.techNotes = "The block and all strike are done in a sanchin stance"
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 17
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Left rising knife-edge block, Left claw raking downward, Right palm-heel to face."
        tech.techStep1 = "Left rising knife-edge block;"
        tech.techStep2 = "Move forward into a left 45° horse stance;"
        tech.techStep3 = "Left claw raking downward;"
        tech.techStep4 = "Turn into a left front stance;"
        tech.techStep5 = "Right palm-heel strike to the face."
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 18
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Left chicken block, Left birds beak into eyes, Right knife-edge to plexus."
        tech.techStep1 = "Left chicken block;"
        tech.techStep2 = "Move forward into a right back stance;"
        tech.techStep3 = "Left bird’s beak to the eyes;"
        tech.techStep4 = "Shift into a left front stance;"
        tech.techStep5 = "Right knife-edge strike to the solar plexus."
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 19
        greenTechs.append(tech)
        
        
        tech = gsTechniques()
        tech.techColor = "Green"
        tech.techDesc = "Left middle block and Upper reverse hammerfist, Over arm break, Right hammer-fist strike to heart."
        tech.techStep1 = "Left middle block to opponents wrist and a right upward hammer-fist strike to the opponents elbow;"
        tech.techStep2 = "Trap the opponents punching arm with your left arm;"
        tech.techStep3 = "Move forward into a left 45° horse stance;"
        tech.techStep4 = "Right hammer-fist strike to the heart."
        tech.techStep5 = ""
        tech.techNotes = ""
        tech.techVerses = "Against a right lunge punch to the face"
        tech.techNumber = 20
        greenTechs.append(tech)
        
        
    }
    

    func viewControllerAtIndex(_ index: Int, storyboard: UIStoryboard) -> gsDataViewCont?
    {
        if (self.activeTechs.count == 0) || (index >= self.activeTechs.count) {
            return nil
        }
        
        // Create a new view controller and pass suitable data.
        let dataViewController = storyboard.instantiateViewController(withIdentifier: "gsDataViewCont") as! gsDataViewCont
        dataViewController.dataObject = self.activeTechs[index]
        
        return dataViewController
    }
    
    func indexOfViewController(_ viewController: gsDataViewCont) -> Int
    {
        var index = 0
        for tech in activeTechs
        {
            if (viewController.dataObject.techDesc == tech.techDesc)
            {
                return index
            }
            index += 1
        }
        return -1
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        var index = self.indexOfViewController(viewController as! gsDataViewCont)
        if (index == 0) || (index == NSNotFound)
        {
            return nil
        }
        
        index -= 1
        return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        var index = self.indexOfViewController(viewController as! gsDataViewCont)
        if index == NSNotFound
        {
            return nil
        }
        
        index += 1
        if index == self.activeTechs.count
        {
            return nil
        }
        return self.viewControllerAtIndex(index, storyboard: viewController.storyboard!)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int
    {
        return activeTechs.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int
    {
        return 0
    }

}
