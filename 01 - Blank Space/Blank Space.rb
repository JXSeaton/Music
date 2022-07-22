### Beat Setup ###
quarterNote = 0.625
halfNote = quarterNote * 2
wholeNote = quarterNote * 4

threeQuarterNote = (quarterNote * 3)/4
eighthNote = quarterNote/2
sixteenthNote = quarterNote/4
##################

# plays two notes an octave apart
def octaveNotes(note, beat)
  lowOct = note + '4'
  highOct = note + '5'
  play lowOct, release: beat
  play highOct, release: beat
  sleep beat
end

# plays an array of notes & timings
def playMelody(notes, timing)
  count = notes.length() - 1
  for i in 0..count
    play notes[i], release: timing[i]
    sleep timing[i]
  end
end

# combinds the above two functions
def playDoubleMelody(notes, timing)
  count = notes.length() - 1
  for i in 0..count
    octaveNotes(notes[i], timing[i])
  end
end

# plays an array of notes with two synths
def playWithPianoMelody(notes, timing)
  count = notes.length() - 1
  for i in 0..count
    use_synth :piano
    play notes[i], attack: 0.2 * timing[i], sustain: 0.6 * timing[i], release: 0.2 * timing[i]
    use_synth :sine
    play notes[i], release: timing[i]
    sleep timing[i]
  end
end

#plays chords
def playChord(notes, time)
  count = notes.length() - 1
  for i in 0..count
    play notes[i], release: time
  end
end

##### WRITING STANZAS #####

introNotes1 = [:C6, :C6, :F5, :F5]
introNotes2 = [:A5, :A5, :F5, :F5]
introTimes = [eighthNote, quarterNote, eighthNote, halfNote]

# double octave section
repNotes1 = [':F', ':F', ':F', ':F', ':F', ':F']
repTimes1 = [sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote]
repNotes2 = [':F', ':G', ':A', ':A', ':G', ':F', ':G', ':F', ':G']
repTimes2 = [quarterNote, sixteenthNote, eighthNote, eighthNote, eighthNote, sixteenthNote, sixteenthNote, sixteenthNote, eighthNote]
repNotes3 = [':F', ':D', ':F', ':F', ':F', ':F', ':F', ':F']
repTimes3 = [sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote]
repNotes4 = [':F', ':G', ':A', ':A', ':G', ':G', ':F']
repTimes4 = [quarterNote, sixteenthNote, eighthNote, eighthNote, sixteenthNote, eighthNote, threeQuarterNote]
repNotes5 = [':Bb', ':F', ':F', ':C', ':C', ':A', ':A']
repTimes5 = [eighthNote, eighthNote, quarterNote, sixteenthNote, sixteenthNote, eighthNote, quarterNote]
repNotes6 = [':Bb', ':F', ':F', ':C', ':C', ':A', ':A']
repTimes6 = [eighthNote, eighthNote, threeQuarterNote, sixteenthNote, eighthNote, eighthNote, quarterNote]
repNotes7 = [':C', ':F', ':F', ':C', ':A', ':A', ':Bb', ':A']
repTimes7 = [eighthNote, eighthNote, quarterNote, sixteenthNote, eighthNote, eighthNote, sixteenthNote, sixteenthNote]
repNotes8 = [':F',':C', ':F']
repTimes8 = [eighthNote, eighthNote, eighthNote]
# 9 is a repeat of 1
repNotes10 = [':F', ':G', ':A', ':A', ':G', ':G', ':F', ':G', ':G']
repTimes10 = [quarterNote, sixteenthNote, eighthNote, eighthNote, sixteenthNote, sixteenthNote, sixteenthNote, eighthNote, eighthNote]
# 11 is a repeat of 3
repNotes12 = [':F', ':G', ':A', ':A', ':G', ':G', ':F', ':F']
repTimes12 = [quarterNote, sixteenthNote, eighthNote, eighthNote, eighthNote, eighthNote, sixteenthNote, eighthNote]
repNotes13 = [':Bb', ':F', ':F', ':C', ':A', ':A', ':Bb']
repTimes13 = [eighthNote, eighthNote, quarterNote, eighthNote, eighthNote, threeQuarterNote, sixteenthNote]
repNotes14 = [':Bb', ':Bb', ':F', ':F', ':C', ':C', ':A', ':A']
repTimes14 = [sixteenthNote, sixteenthNote, eighthNote, threeQuarterNote, sixteenthNote, eighthNote, eighthNote, quarterNote]
repNotes15 = [':C', ':F', ':F', ':F', ':C', ':A', ':A']
repTimes15 = [eighthNote, sixteenthNote, eighthNote, threeQuarterNote, eighthNote, eighthNote, quarterNote]

#ghost notes
repNotes16 = [:F4, :F4, :F4, :F4, :F4, :F4, :F4, :F4, :F4, :F4, :F4]
repTimes16 = [sixteenthNote, sixteenthNote, sixteenthNote, sixteenthNote, eighthNote, eighthNote, eighthNote, sixteenthNote, sixteenthNote, eighthNote, eighthNote]

repNotes17 = [:F4, :F4, :F4, :F4, :F4, :F4, :G4, :A4]
repTimes17 = [sixteenthNote, sixteenthNote, sixteenthNote, sixteenthNote, sixteenthNote, sixteenthNote, eighthNote, eighthNote]
repNotes18 = [:F4, :F4, :F4, :F4, :F4, :A4, :E4, :E4, :F4]
repTimes18 = [sixteenthNote, sixteenthNote, sixteenthNote, sixteenthNote, eighthNote, eighthNote, eighthNote, eighthNote, eighthNote]
# 19 repeats 17
repNotes20 = [:F4, :F4, :F4, :F4, :A4, :E4, :E4, :F4]
repTimes20 = [sixteenthNote, sixteenthNote, eighthNote, eighthNote, eighthNote, eighthNote, eighthNote, eighthNote]
repNotes21 = [:C5, :C5, :C5, :Bb4, :A4, :Bb4, :A4, :G4]
repTimes21 = [sixteenthNote, sixteenthNote, eighthNote, eighthNote, eighthNote, eighthNote, eighthNote, eighthNote]
repNotes22 = [:G4, :G4, :G4, :Bb4, :A4, :G4, :F4]
repTimes22 = [eighthNote, eighthNote, eighthNote, eighthNote, eighthNote, eighthNote, eighthNote]
# 23 repeats 21

repNotes24 = [:F4, :Bb4, :Bb4, :Bb4, :C5]
repTimes24 = [eighthNote, quarterNote, quarterNote, eighthNote, eighthNote]
repNotes25 = [:F4, :F4, :F4, :F4, :F4, :G4, :A4]
repTimes25 = [sixteenthNote, sixteenthNote, eighthNote, sixteenthNote, sixteenthNote, eighthNote, eighthNote]
repNotes26 = [:F4, :F4, :F4, :A4, :E4, :E4, :F4]
# 26 same time for 22
repNotes27 = [:F4, :F4, :F4, :F4, :G4, :A4]
repTimes27 = [sixteenthNote, sixteenthNote, eighthNote, eighthNote, eighthNote, eighthNote]
# 28 is the same as 26
# 29 is the same as 21
# 30 is the same as 22
repNotes31 = [:F4, :G4, :G4, :F4, :G4, :G4, :G4, :F4]
repTimes31 = [sixteenthNote, eighthNote, sixteenthNote, sixteenthNote, threeQuarterNote, threeQuarterNote, sixteenthNote, sixteenthNote]

# first play through
repOneNotes1 = [:D4, :D4]
repOneTimes1 = [eighthNote, quarterNote + eighthNote]
repOneNotes2 = [:C4, :A4, :F4, :F4, :F4]
repOneTimes2 = [sixteenthNote, eighthNote, eighthNote, sixteenthNote, sixteenthNote + wholeNote]

# second play through
# 1 the same as rep one 1
repTwoNotes2 = [:C4, :A4, :F4, :F4, :F4]
repTwoTimes2 = [sixteenthNote, eighthNote, eighthNote, sixteenthNote, sixteenthNote + eighthNote]
repTwoNotes3 = [:F4, :F4, :F4, :D4]
repTwoTimes3 = [quarterNote + eighthNote, sixteenthNote, threeQuarterNote, quarterNote]
repTwoNotes4 = [:C4, :Bb3, :Bb3, :Bb3, :A3]
repTwoTimes4 = [quarterNote, sixteenthNote, threeQuarterNote, quarterNote, quarterNote]
repTwoNotes5 = [:F4, :E4, :E4, :D4, :D4]
repTwoTimes5 = [quarterNote + eighthNote, sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote]
repTwoNotes6 = [:C4, :C4, :Bb3, :Bb3, :Bb3, :A3]
repTwoTimes6 = [sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote, quarterNote, quarterNote]
repTwoNotes7 = [:F4, :E4, :E4, :D4]
# 7 same time as 3
repTwoNotes8 = [:C4, :Bb3, :Bb3, :Bb3, :A3]
# same time as 4
# 9 is the same as 5
#10 is the same as 6

# Coda
codaNotes1 = [:D4,:D4]
codaTimes1 = [eighthNote, quarterNote + eighthNote]
codaNotes2 = [:C4, :A4, :F4, :F4, :F4]
codaTimes2 = [sixteenthNote, eighthNote, eighthNote, sixteenthNote, sixteenthNote + quarterNote]

###### PLAYING SONG ######

#intro
use_synth :kalimba
playMelody(introNotes1, introTimes)
playMelody(introNotes2, introTimes)

repetitionPlaying = 1
in_thread do
  use_synth :sine
  3.times{
    # repetition one
    playChord([:C4, :F4, :A4], wholeNote * 2)
    sleep quarterNote
    playDoubleMelody(repNotes1, repTimes1)
    playDoubleMelody(repNotes2, repTimes2)
    
    playChord([:D4, :F4, :A4], wholeNote * 2)
    playDoubleMelody(repNotes3, repTimes3)
    playDoubleMelody(repNotes4, repTimes4)
    
    playChord([:Bb4, :D4, :F4], wholeNote * 2)
    playDoubleMelody(repNotes5, repTimes5)
    playDoubleMelody(repNotes6, repTimes6)
    
    playChord([:C4, :D4, :G4], wholeNote * 2)
    playDoubleMelody(repNotes7, repTimes7)
    octaveNotes(':G', halfNote)
    sleep eighthNote
    playDoubleMelody(repNotes8, repTimes8)
    
    playChord([:C4, :F4, :A4], wholeNote * 2)
    sleep quarterNote
    playDoubleMelody(repNotes1, repTimes1)
    playDoubleMelody(repNotes10, repTimes10)
    
    playChord([:D4, :F4, :A4], wholeNote * 2)
    playDoubleMelody(repNotes3, repTimes3)
    playDoubleMelody(repNotes12, repTimes12)
    
    playChord([:Bb4, :D4, :F4], wholeNote * 2)
    playDoubleMelody(repNotes13, repTimes13)
    playDoubleMelody(repNotes14, repTimes14)
    
    playChord([:C4, :E4, :G4], wholeNote)
    playDoubleMelody(repNotes15, repTimes15)
    
    playMelody(repNotes16, repTimes16)
    
    playChord([:A3, :C4], wholeNote * 2)
    sleep eighthNote
    playWithPianoMelody(repNotes17, repTimes17)
    sleep quarterNote + eighthNote
    playWithPianoMelody(repNotes18, repTimes18)
    
    playChord([:A3, :D4], wholeNote * 2)
    sleep eighthNote
    playWithPianoMelody(repNotes17, repTimes17)
    sleep eighthNote
    play :F4, release: eighthNote
    use_synth :piano
    play :F4, attack: 0.2 * eighthNote, sustain: 0.6 * eighthNote, release: 0.2 * eighthNote
    sleep eighthNote
    use_synth :sine
    playWithPianoMelody(repNotes20, repTimes20)
    
    playChord([:D4, :F4], wholeNote * 2)
    sleep eighthNote
    playWithPianoMelody(repNotes21, repTimes21)
    sleep eighthNote
    playWithPianoMelody(repNotes22, repTimes22)
    
    playChord([:D4, :F4], wholeNote)
    sleep eighthNote
    playWithPianoMelody(repNotes21, repTimes21)
    
    sleep eighthNote
    playWithPianoMelody(repNotes24, repTimes24)
    sleep eighthNote
    playWithPianoMelody(repNotes25, repTimes25)
    sleep quarterNote + eighthNote
    playWithPianoMelody(repNotes26, repTimes22)
    sleep eighthNote
    playWithPianoMelody(repNotes27, repTimes27)
    sleep eighthNote
    play :F4, release: eighthNote
    use_synth :piano
    play :F4, attack: 0.2 * eighthNote, sustain: 0.6 * eighthNote, release: 0.2 * eighthNote
    sleep eighthNote * 2
    use_synth :sine
    playWithPianoMelody(repNotes26, repTimes22)
    sleep eighthNote
    playChord([:D4, :F4], wholeNote * 2)
    playWithPianoMelody(repNotes21, repTimes21)
    sleep eighthNote
    playWithPianoMelody(repNotes22, repTimes22)
    playChord([:Bb3, :D4], wholeNote)
    sleep eighthNote
    playWithPianoMelody(repNotes31, repTimes31)
    
    if repetitionPlaying == 1
      playWithPianoMelody(repOneNotes1, repOneTimes1)
      sleep sixteenthNote
      playWithPianoMelody(repOneNotes2, repOneTimes2)
      sleep wholeNote
      
      repetitionPlaying = repetitionPlaying + 1
    elsif repetitionPlaying == 2
      playWithPianoMelody(repOneNotes1, repOneTimes1)
      sleep sixteenthNote
      playWithPianoMelody(repTwoNotes2, repTwoTimes2)
      playWithPianoMelody(repTwoNotes3, repTwoTimes3)
      playWithPianoMelody(repTwoNotes4, repTwoTimes4)
      sleep eighthNote
      playWithPianoMelody(repTwoNotes5, repTwoTimes5)
      playWithPianoMelody(repTwoNotes6, repTwoTimes6)
      sleep eighthNote
      playWithPianoMelody(repTwoNotes7, repTwoTimes3)
      playWithPianoMelody(repTwoNotes8, repTwoTimes4)
      sleep eighthNote
      playWithPianoMelody(repTwoNotes5, repTwoTimes5)
      playWithPianoMelody(repTwoNotes6, repTwoTimes6)
      
      repetitionPlaying = repetitionPlaying + 1
    elsif repetitionPlaying == 3
      playWithPianoMelody(codaNotes1, codaTimes1)
      sleep sixteenthNote
      playWithPianoMelody(codaNotes2, codaTimes2)
    end
  }
end

in_thread do
  3.times{
    use_synth :sine
    sleep wholeNote * 15
    RepOtherNotes16a = [:C3, :C3, :C4, :C3]
    RepOtherTimes16a = [threeQuarterNote, sixteenthNote, eighthNote, eighthNote]
    playMelody(RepOtherNotes16a, RepOtherTimes16a)
    sleep eighthNote
    RepOtherNotes16b = [:C3, :C4]
    RepOtherTimes16b = [eighthNote, quarterNote]
    playMelody(RepOtherNotes16b, RepOtherTimes16b)
    RepOtherNotes1718 = [:F2, :F2, :F2, :F2, :F2]
    RepOtherTimes1718 = [quarterNote + eighthNote, eighthNote + halfNote, quarterNote + eighthNote, quarterNote, quarterNote + eighthNote]
    playMelody(RepOtherNotes1718, RepOtherTimes1718)
    RepOtherNotes19 = [:D2, :D2, :D2, :D2, :D2]
    playMelody(RepOtherNotes19, RepOtherTimes1718)
    RepOtherNotes20 = [:G2, :G2, :G2, :G2, :G2]
    playMelody(RepOtherNotes20, RepOtherTimes1718)
    RepOtherNotes21 = [:Bb1, :Bb1, :Bb1, :Bb1, :Bb1]
    playMelody(RepOtherNotes21, RepOtherTimes1718)
    playMelody(RepOtherNotes1718, RepOtherTimes1718)
    playMelody(RepOtherNotes19, RepOtherTimes1718)
    playMelody(RepOtherNotes20, RepOtherTimes1718)
    play :Bb1, release: quarterNote + eighthNote
    sleep quarterNote + eighthNote
    play :Bb1, release: eighthNote + halfNote
    sleep eighthNote + halfNote
    if repetitionPlaying == 1
      play :Bb1, release: halfNote
      sleep wholeNote * 3
    elsif repetitionPlaying == 2
      play :Bb1, release: halfNote
      sleep wholeNote * 3 + eighthNote
      oneBaseNotes45 = [:A3, :G3, :G3, :F3, :F3, :F3, :F3, :D3, :D3, :D3, :C3]
      oneBaseTimes45 = [quarterNote + eighthNote, sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote, sixteenthNote, threeQuarterNote, quarterNote, quarterNote]
      playMelody(oneBaseNotes45, oneBaseTimes45)
      #sleep eighthNote
      
      sleep wholeNote*4
    elsif repetitionPlaying == 3
      play :Bb1, release: halfNote
    end
  }
  
end
