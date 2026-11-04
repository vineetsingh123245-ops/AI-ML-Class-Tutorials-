state={
    "on(A,table)",
    "on(B,table)",
    "on(C,A)",
    "clear(C)",
    "clear(B)",
    "arm_empty"
}

def move_C_to_table():
    if"on(C,A)" in state and "clear(C)" in state:
        state.remove("on(C,A)")
        state.remove("clear(A)") if "clear(A)" in state else None
        state.add("on(C,table)")
        state.add("clear(A)")
        print("move C to Table")

def move_B_to_C():
    if "on(B,Table)" in state and clear(B) in state and clear(C) in state \
    and "aem_empty" in state:
        state.add("on(B,C)")
        state.remove("on(B,table)")
        state.remove("clear(C)")
        print("move B to C")

def move_A_to_B():
    if "on(A,table)" in state and clear(A) in state and clear(B) in state \
    and "arm_empty" in state:
        state.remove("on(A,table)")
        state.remove("clear(B)")
        state.add("on(A,B)")
        state.add("clear(B)")
        print("move A to B")

print("initial state", state)

move_C_to_table()
move_B_to_C()
move_A_to_B()

goal={
    "on(C,table)",
    "on(B,C)",
    "on(A,B)",
    "clear(A)",
    "arm_empty"
}

print("final state", state)
print("goal achieved", goal.issubset (state))