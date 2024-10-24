.globl _start
.text
_start:

# ----------------- Stub to test functions in QtRVSim -----------------
    # These lines are not executed by the Artemis tester.
    # Uncomment the parts testing the function you want to test and comment
    # out the other part. Feel free to adjust values for testing.


    # uncomment following two lines to test mul_pi_16_16
        li a0, 0x50000      # load 5 as unsigned 16.16-bits number
        jal mul_pi_16_16    # compute 5 * Pi

    # uncomment following four lines to test mul_n_fixed_point
      # li a0, 0x70000          # load 7 as unsigned 16.16-bits number
      # li a1, 0x60000          # load 6 as unsigned 16.16-bits number
      # li a2, 16               # set N to 16
      # jal mul_n_fixed_point   # compute 7 * 6


    ebreak  # stop execution in QtRVSim to inspect the result
# -------------- End of stub to test functions in QtRVSim -------------


# arguments:
#   a0: arg (unsigned 16.16-bit number)
# returns:
#   a0: arg * Pi (as unsigned 16.16-bit number)
mul_pi_16_16:
    # TODO: add your implementation here

    # return
    jalr zero, 0(ra)


# arguments:
#   a0: a (unsigned (32-N).N-bit number)
#   a1: b (unsigned (32-N).N-bit number)
#   a2: N (number of bits at the right of the comma)
# returns:
#   a0: a*b (as unsigned (32-N).N-bit number)
mul_n_fixed_point:
    # TODO: add your implementation here

    # return
    jalr zero, 0(ra)
