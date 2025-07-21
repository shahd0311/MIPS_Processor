.data

.text
add $1, $1, $0    #base address of the array at R1
addi $6 , $0, 3   #store number of elements at R6
lw $3 , 0($1)     #load elements of array from memory
lw $4 , 1($1)
lw $5 , 2($1)
jal sum
exit:
jr $7

sum:
add $2 ,$3 ,$4
add $2 ,$2 ,$5    #result is at R2
jr $7
