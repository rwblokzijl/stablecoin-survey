import pandocfilters as pf
from pandocfilters import walk

def return_latex_ref(x):
    """Walks the tree x and returns the latex reference.
    """
    result = []

    def go(key, val, format, meta):
        if key in 'RawInline':
            if val[0] == 'tex' and '\\label' in val[1]:
                result.append(val[1])

    walk(x, go, "", {})
    return ''.join(result)

def supertabular(key, value, format, meta):
    """
    NOTE: This filter expects a modification to the default template
    """

    if key == 'Table' and 'processed' not in value[0][1]:
        caption = value[1]
        cap = pf.stringify(caption) + ' ' + return_latex_ref(caption)
        cmd = f'\\renewcommand\\tcap{{{cap}}}'

        value[0][1].append('processed')
        value[1] = [None, []]
        mytable = pf.elt('Table', len(value))

        return [pf.RawBlock('latex', cmd), mytable(*value)]

if __name__ == '__main__':
    pf.toJSONFilter(supertabular)
