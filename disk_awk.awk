function suffix(val) {
    return substr(val, length(val), length(val))
}

function numbytes(val) {
    valnum = substr(val, 1, length(val-1))
    if (suffix(val) == "G") {
        return valnum
    } else {
        return valnum / 1024
    }
}

{
    if (NR != 1) {
        sum += numbytes($1)
    }
}

END {
    print sum
}
