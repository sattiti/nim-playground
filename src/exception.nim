import typetraits
from strutils import parseInt

# Try, exception, finally{{{
var
  f: File

if open(f, "numbers.txt"):
  try:
    let a = readLine(f)
    let b = readLine(f)
    echo "sum: ", parseInt(a) + parseInt(b)
  except OverflowError:
    echo "overflow!"
  except ValueError:
    echo "could not convert string to integer"
  except IOError:
    echo "IO error!"
  except:
    echo "Unknown exception!"
    # reraise the unknown exception:
    raise
  finally:
    close(f)
# }}}
# Raise {{{
var e: ref OSError

new(e)
e.msg = "Error"
raise e

# raise newException(OSError, "Error Msg.")
# }}}
