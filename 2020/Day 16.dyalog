a←⊃⎕NGET'Day 16.txt' 1
r←∊∘⍎¨'(\d+)-(\d+) or (\d+)-(\d+)'⎕S'{⍺↓0,⍳⍵}/↑(\1 \2)(\3 \4)'⊢a
y n←↑¨1 1⊂⍎¨'(\d+,)+\d+'⎕S'&'⊢a

⍝ Part 1
+/i←n~⍥∊r

⍝ Part 2
t←n⌿⍨~∨/i∊⍤1⊢n
×/y⌷⍨⍥,⊂6↑2⊃¨⍸⍉{1@i⊢0@(⊃¨i←⍸⍵/⍨1-⍨2×1=+⌿⍵)⊢⍵}⍣≡r∘.(∧/∊)⍨↓⍉t