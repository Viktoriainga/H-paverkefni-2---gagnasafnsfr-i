from itertools import permutations

FD_template = '''
    SELECT '{R}: {A} --> {B}' AS FD,
    CASE WHEN COUNT(*) = 0 THEN
        'HOLDS'
    ELSE 
        'does not hold'
    END AS VALIDITY
    FROM (
        SELECT {A}
        FROM {R}
        GROUP BY {A}
        HAVING COUNT(DISTINCT {B}) > 1
    ) X;
'''

MVD_template = '''
    SELECT
        '{A} ->> ({B}, {C}) in {R}' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT {A}
        FROM {R}
        GROUP BY {A}
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT {B}) * COUNT(DISTINCT {C})
    ) X;
'''

pd_tables = [
    ("CivilServices", ("CSID", "HID", "PN", "S", "HS", "HZ", "HC")),
    ("Projects", ("ID", "PID", "SID", "SN", "PN", "MID", "MN")),
    ("Citizens", ("CID", "CN", "CS", "CNr", "CZ", "CL", "EID")),
    ("Coffees", ("DID", "HID", "CID", "DN", "DS", "CN", "CC"))
]

mvd_tables = [
    ("Projects", ("ID", "PID", "SID", "SN", "PN", "MID", "MN")),
    ("Coffees", ("DID", "HID", "CID", "DN", "DS", "CN", "CC"))
]

def main_generator_PD():
    with open("prj5_check_FD.sql", "w") as f:
        for table, attributes in pd_tables:
            #if table == 'Citizens':
            for a,b in permutations(attributes, 2):
                query = FD_template.format(R=table, A=a, B=b)
                f.write(query)      


def main_generator_MVD():
    with open("prj5_check_MVD.sql", "w") as f:
        for table, attributes in mvd_tables:
            #if table == 'Citizens':
            for a,b,c in permutations(attributes, 3):
                query = MVD_template.format(R=table, A=a, B=b, C=c)
                f.write(query)


if __name__ == "__main__":
    user_input = input("pd or mvd: ")
    if user_input == 'pd':
        main_generator_PD()

    elif user_input == 'mvd':
        main_generator_MVD()

