
    SELECT
        'CSID ->> (HID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'CSID ->> (HID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'CSID ->> (HID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'CSID ->> (HID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'CSID ->> (HID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'CSID ->> (PN, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CSID ->> (PN, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'CSID ->> (PN, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'CSID ->> (PN, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'CSID ->> (PN, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'CSID ->> (S, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CSID ->> (S, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'CSID ->> (S, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'CSID ->> (S, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'CSID ->> (S, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'CSID ->> (HS, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CSID ->> (HS, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'CSID ->> (HS, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'CSID ->> (HS, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'CSID ->> (HS, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'CSID ->> (HZ, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CSID ->> (HZ, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'CSID ->> (HZ, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'CSID ->> (HZ, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'CSID ->> (HZ, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'CSID ->> (HC, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CSID ->> (HC, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'CSID ->> (HC, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'CSID ->> (HC, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'CSID ->> (HC, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CSID
        FROM CivilServices
        GROUP BY CSID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HID ->> (CSID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HID ->> (CSID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HID ->> (CSID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HID ->> (CSID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HID ->> (CSID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HID ->> (PN, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HID ->> (PN, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HID ->> (PN, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HID ->> (PN, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HID ->> (PN, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HID ->> (S, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HID ->> (S, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HID ->> (S, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HID ->> (S, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HID ->> (S, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HID ->> (HS, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HID ->> (HS, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HID ->> (HS, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HID ->> (HS, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HID ->> (HS, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HID ->> (HZ, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HID ->> (HZ, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HID ->> (HZ, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HID ->> (HZ, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HID ->> (HZ, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HID ->> (HC, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HID ->> (HC, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HID ->> (HC, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HID ->> (HC, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HID ->> (HC, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM CivilServices
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'PN ->> (CSID, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'PN ->> (CSID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'PN ->> (CSID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'PN ->> (CSID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'PN ->> (CSID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'PN ->> (HID, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'PN ->> (HID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'PN ->> (HID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'PN ->> (HID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'PN ->> (HID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'PN ->> (S, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'PN ->> (S, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'PN ->> (S, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'PN ->> (S, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'PN ->> (S, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'PN ->> (HS, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'PN ->> (HS, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'PN ->> (HS, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'PN ->> (HS, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'PN ->> (HS, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'PN ->> (HZ, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'PN ->> (HZ, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'PN ->> (HZ, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'PN ->> (HZ, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'PN ->> (HZ, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'PN ->> (HC, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'PN ->> (HC, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'PN ->> (HC, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'PN ->> (HC, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'PN ->> (HC, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM CivilServices
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'S ->> (CSID, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'S ->> (CSID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'S ->> (CSID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'S ->> (CSID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'S ->> (CSID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'S ->> (HID, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'S ->> (HID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'S ->> (HID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'S ->> (HID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'S ->> (HID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'S ->> (PN, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'S ->> (PN, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'S ->> (PN, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'S ->> (PN, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'S ->> (PN, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'S ->> (HS, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'S ->> (HS, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'S ->> (HS, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'S ->> (HS, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'S ->> (HS, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'S ->> (HZ, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'S ->> (HZ, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'S ->> (HZ, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'S ->> (HZ, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'S ->> (HZ, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'S ->> (HC, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'S ->> (HC, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'S ->> (HC, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'S ->> (HC, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'S ->> (HC, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT S
        FROM CivilServices
        GROUP BY S
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HS ->> (CSID, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HS ->> (CSID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HS ->> (CSID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HS ->> (CSID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HS ->> (CSID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HS ->> (HID, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HS ->> (HID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HS ->> (HID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HS ->> (HID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HS ->> (HID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HS ->> (PN, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HS ->> (PN, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HS ->> (PN, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HS ->> (PN, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HS ->> (PN, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HS ->> (S, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HS ->> (S, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HS ->> (S, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HS ->> (S, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HS ->> (S, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HS ->> (HZ, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HS ->> (HZ, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HS ->> (HZ, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HS ->> (HZ, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HS ->> (HZ, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HS ->> (HC, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HS ->> (HC, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HS ->> (HC, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HS ->> (HC, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HS ->> (HC, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HS
        FROM CivilServices
        GROUP BY HS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HZ ->> (CSID, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HZ ->> (CSID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HZ ->> (CSID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HZ ->> (CSID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HZ ->> (CSID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HZ ->> (HID, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HZ ->> (HID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HZ ->> (HID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HZ ->> (HID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HZ ->> (HID, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HZ ->> (PN, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HZ ->> (PN, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HZ ->> (PN, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HZ ->> (PN, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HZ ->> (PN, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HZ ->> (S, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HZ ->> (S, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HZ ->> (S, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HZ ->> (S, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HZ ->> (S, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HZ ->> (HS, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HZ ->> (HS, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HZ ->> (HS, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HZ ->> (HS, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HZ ->> (HS, HC) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HC)
    ) X;

    SELECT
        'HZ ->> (HC, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HZ ->> (HC, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HZ ->> (HC, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HZ ->> (HC, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HZ ->> (HC, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HZ
        FROM CivilServices
        GROUP BY HZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HC) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HC ->> (CSID, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HC ->> (CSID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HC ->> (CSID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HC ->> (CSID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HC ->> (CSID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CSID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HC ->> (HID, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HC ->> (HID, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HC ->> (HID, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HC ->> (HID, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HC ->> (HID, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HC ->> (PN, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HC ->> (PN, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HC ->> (PN, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HC ->> (PN, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HC ->> (PN, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HC ->> (S, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HC ->> (S, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HC ->> (S, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HC ->> (S, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'HC ->> (S, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT S) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HC ->> (HS, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HC ->> (HS, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HC ->> (HS, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HC ->> (HS, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HC ->> (HS, HZ) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HS) * COUNT(DISTINCT HZ)
    ) X;

    SELECT
        'HC ->> (HZ, CSID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT CSID)
    ) X;

    SELECT
        'HC ->> (HZ, HID) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'HC ->> (HZ, PN) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'HC ->> (HZ, S) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT S)
    ) X;

    SELECT
        'HC ->> (HZ, HS) in CivilServices' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HC
        FROM CivilServices
        GROUP BY HC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HZ) * COUNT(DISTINCT HS)
    ) X;

    SELECT
        'ID ->> (PID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'ID ->> (PID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'ID ->> (PID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'ID ->> (PID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'ID ->> (PID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'ID ->> (SID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'ID ->> (SID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'ID ->> (SID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'ID ->> (SID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'ID ->> (SID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'ID ->> (SN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'ID ->> (SN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'ID ->> (SN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'ID ->> (SN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'ID ->> (SN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'ID ->> (PN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'ID ->> (PN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'ID ->> (PN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'ID ->> (PN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'ID ->> (PN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'ID ->> (MID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'ID ->> (MID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'ID ->> (MID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'ID ->> (MID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'ID ->> (MID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'ID ->> (MN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'ID ->> (MN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'ID ->> (MN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'ID ->> (MN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'ID ->> (MN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT ID
        FROM Projects
        GROUP BY ID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PID ->> (ID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PID ->> (ID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PID ->> (ID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'PID ->> (ID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PID ->> (ID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PID ->> (SID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PID ->> (SID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PID ->> (SID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'PID ->> (SID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PID ->> (SID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PID ->> (SN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PID ->> (SN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PID ->> (SN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'PID ->> (SN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PID ->> (SN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PID ->> (PN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PID ->> (PN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PID ->> (PN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PID ->> (PN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PID ->> (PN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PID ->> (MID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PID ->> (MID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PID ->> (MID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PID ->> (MID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'PID ->> (MID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PID ->> (MN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PID ->> (MN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PID ->> (MN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PID ->> (MN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'PID ->> (MN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PID
        FROM Projects
        GROUP BY PID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SID ->> (ID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SID ->> (ID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'SID ->> (ID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SID ->> (ID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SID ->> (ID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SID ->> (PID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SID ->> (PID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'SID ->> (PID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SID ->> (PID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SID ->> (PID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SID ->> (SN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SID ->> (SN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SID ->> (SN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SID ->> (SN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SID ->> (SN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SID ->> (PN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SID ->> (PN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SID ->> (PN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'SID ->> (PN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SID ->> (PN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SID ->> (MID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SID ->> (MID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SID ->> (MID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'SID ->> (MID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SID ->> (MID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SID ->> (MN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SID ->> (MN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SID ->> (MN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'SID ->> (MN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SID ->> (MN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SID
        FROM Projects
        GROUP BY SID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SN ->> (ID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SN ->> (ID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'SN ->> (ID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SN ->> (ID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SN ->> (ID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SN ->> (PID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SN ->> (PID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'SN ->> (PID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SN ->> (PID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SN ->> (PID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SN ->> (SID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SN ->> (SID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SN ->> (SID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SN ->> (SID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SN ->> (SID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SN ->> (PN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SN ->> (PN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SN ->> (PN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'SN ->> (PN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'SN ->> (PN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SN ->> (MID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SN ->> (MID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SN ->> (MID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'SN ->> (MID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SN ->> (MID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'SN ->> (MN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'SN ->> (MN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'SN ->> (MN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'SN ->> (MN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'SN ->> (MN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT SN
        FROM Projects
        GROUP BY SN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PN ->> (ID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'PN ->> (ID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PN ->> (ID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PN ->> (ID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PN ->> (ID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PN ->> (PID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PN ->> (PID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PN ->> (PID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PN ->> (PID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PN ->> (PID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PN ->> (SID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PN ->> (SID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'PN ->> (SID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PN ->> (SID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PN ->> (SID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PN ->> (SN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PN ->> (SN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'PN ->> (SN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PN ->> (SN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'PN ->> (SN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PN ->> (MID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PN ->> (MID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'PN ->> (MID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PN ->> (MID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PN ->> (MID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'PN ->> (MN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'PN ->> (MN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'PN ->> (MN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'PN ->> (MN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'PN ->> (MN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT PN
        FROM Projects
        GROUP BY PN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'MID ->> (ID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MID ->> (ID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MID ->> (ID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MID ->> (ID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'MID ->> (ID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'MID ->> (PID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MID ->> (PID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MID ->> (PID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MID ->> (PID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'MID ->> (PID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'MID ->> (SID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MID ->> (SID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MID ->> (SID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MID ->> (SID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'MID ->> (SID, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'MID ->> (SN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MID ->> (SN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MID ->> (SN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MID ->> (SN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'MID ->> (SN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'MID ->> (PN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MID ->> (PN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MID ->> (PN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MID ->> (PN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MID ->> (PN, MN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MN)
    ) X;

    SELECT
        'MID ->> (MN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MID ->> (MN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MID ->> (MN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MID ->> (MN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MID ->> (MN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MID
        FROM Projects
        GROUP BY MID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'MN ->> (ID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MN ->> (ID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MN ->> (ID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MN ->> (ID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'MN ->> (ID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT ID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'MN ->> (PID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MN ->> (PID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MN ->> (PID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MN ->> (PID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'MN ->> (PID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'MN ->> (SID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MN ->> (SID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MN ->> (SID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MN ->> (SID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'MN ->> (SID, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SID) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'MN ->> (SN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MN ->> (SN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MN ->> (SN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MN ->> (SN, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'MN ->> (SN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT SN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'MN ->> (PN, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MN ->> (PN, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MN ->> (PN, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MN ->> (PN, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MN ->> (PN, MID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT PN) * COUNT(DISTINCT MID)
    ) X;

    SELECT
        'MN ->> (MID, ID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT ID)
    ) X;

    SELECT
        'MN ->> (MID, PID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PID)
    ) X;

    SELECT
        'MN ->> (MID, SID) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SID)
    ) X;

    SELECT
        'MN ->> (MID, SN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT SN)
    ) X;

    SELECT
        'MN ->> (MID, PN) in Projects' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT MN
        FROM Projects
        GROUP BY MN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT MID) * COUNT(DISTINCT PN)
    ) X;

    SELECT
        'CID ->> (CN, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CID ->> (CN, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CID ->> (CN, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CID ->> (CN, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CID ->> (CN, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CID ->> (CS, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (CS, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CID ->> (CS, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CID ->> (CS, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CID ->> (CS, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CID ->> (CNr, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (CNr, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CID ->> (CNr, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CID ->> (CNr, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CID ->> (CNr, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CID ->> (CZ, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (CZ, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CID ->> (CZ, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CID ->> (CZ, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CID ->> (CZ, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CID ->> (CL, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (CL, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CID ->> (CL, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CID ->> (CL, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CID ->> (CL, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CID ->> (EID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (EID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CID ->> (EID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CID ->> (EID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CID ->> (EID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Citizens
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CN ->> (CID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CN ->> (CID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CN ->> (CID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CN ->> (CID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CN ->> (CID, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CN ->> (CS, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (CS, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CN ->> (CS, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CN ->> (CS, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CN ->> (CS, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CN ->> (CNr, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (CNr, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CN ->> (CNr, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CN ->> (CNr, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CN ->> (CNr, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CN ->> (CZ, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (CZ, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CN ->> (CZ, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CN ->> (CZ, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CN ->> (CZ, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CN ->> (CL, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (CL, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CN ->> (CL, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CN ->> (CL, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CN ->> (CL, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CN ->> (EID, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (EID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CN ->> (EID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CN ->> (EID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CN ->> (EID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Citizens
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CS ->> (CID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CS ->> (CID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CS ->> (CID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CS ->> (CID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CS ->> (CID, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CS ->> (CN, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CS ->> (CN, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CS ->> (CN, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CS ->> (CN, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CS ->> (CN, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CS ->> (CNr, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CS ->> (CNr, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CS ->> (CNr, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CS ->> (CNr, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CS ->> (CNr, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CS ->> (CZ, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CS ->> (CZ, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CS ->> (CZ, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CS ->> (CZ, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CS ->> (CZ, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CS ->> (CL, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CS ->> (CL, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CS ->> (CL, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CS ->> (CL, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CS ->> (CL, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CS ->> (EID, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CS ->> (EID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CS ->> (EID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CS ->> (EID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CS ->> (EID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CS
        FROM Citizens
        GROUP BY CS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CNr ->> (CID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CNr ->> (CID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CNr ->> (CID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CNr ->> (CID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CNr ->> (CID, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CNr ->> (CN, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CNr ->> (CN, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CNr ->> (CN, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CNr ->> (CN, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CNr ->> (CN, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CNr ->> (CS, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CNr ->> (CS, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CNr ->> (CS, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CNr ->> (CS, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CNr ->> (CS, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CNr ->> (CZ, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CNr ->> (CZ, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CNr ->> (CZ, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CNr ->> (CZ, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CNr ->> (CZ, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CNr ->> (CL, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CNr ->> (CL, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CNr ->> (CL, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CNr ->> (CL, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CNr ->> (CL, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CNr ->> (EID, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CNr ->> (EID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CNr ->> (EID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CNr ->> (EID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CNr ->> (EID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CNr
        FROM Citizens
        GROUP BY CNr
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CZ ->> (CID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CZ ->> (CID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CZ ->> (CID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CZ ->> (CID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CZ ->> (CID, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CZ ->> (CN, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CZ ->> (CN, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CZ ->> (CN, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CZ ->> (CN, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CZ ->> (CN, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CZ ->> (CS, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CZ ->> (CS, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CZ ->> (CS, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CZ ->> (CS, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CZ ->> (CS, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CZ ->> (CNr, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CZ ->> (CNr, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CZ ->> (CNr, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CZ ->> (CNr, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CZ ->> (CNr, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CZ ->> (CL, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CZ ->> (CL, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CZ ->> (CL, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CZ ->> (CL, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CZ ->> (CL, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CZ ->> (EID, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CZ ->> (EID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CZ ->> (EID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CZ ->> (EID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CZ ->> (EID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CZ
        FROM Citizens
        GROUP BY CZ
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'CL ->> (CID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CL ->> (CID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CL ->> (CID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CL ->> (CID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CL ->> (CID, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CL ->> (CN, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CL ->> (CN, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CL ->> (CN, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CL ->> (CN, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CL ->> (CN, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CL ->> (CS, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CL ->> (CS, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CL ->> (CS, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CL ->> (CS, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CL ->> (CS, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CL ->> (CNr, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CL ->> (CNr, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CL ->> (CNr, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CL ->> (CNr, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'CL ->> (CNr, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CL ->> (CZ, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CL ->> (CZ, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CL ->> (CZ, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CL ->> (CZ, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CL ->> (CZ, EID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT EID)
    ) X;

    SELECT
        'CL ->> (EID, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CL ->> (EID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CL ->> (EID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'CL ->> (EID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'CL ->> (EID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CL
        FROM Citizens
        GROUP BY CL
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT EID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'EID ->> (CID, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'EID ->> (CID, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'EID ->> (CID, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'EID ->> (CID, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'EID ->> (CID, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'EID ->> (CN, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'EID ->> (CN, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'EID ->> (CN, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'EID ->> (CN, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'EID ->> (CN, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'EID ->> (CS, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'EID ->> (CS, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'EID ->> (CS, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'EID ->> (CS, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'EID ->> (CS, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CS) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'EID ->> (CNr, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'EID ->> (CNr, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'EID ->> (CNr, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'EID ->> (CNr, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'EID ->> (CNr, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CNr) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'EID ->> (CZ, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'EID ->> (CZ, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'EID ->> (CZ, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'EID ->> (CZ, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'EID ->> (CZ, CL) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CZ) * COUNT(DISTINCT CL)
    ) X;

    SELECT
        'EID ->> (CL, CID) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'EID ->> (CL, CN) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'EID ->> (CL, CS) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CS)
    ) X;

    SELECT
        'EID ->> (CL, CNr) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CNr)
    ) X;

    SELECT
        'EID ->> (CL, CZ) in Citizens' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT EID
        FROM Citizens
        GROUP BY EID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CL) * COUNT(DISTINCT CZ)
    ) X;

    SELECT
        'DID ->> (HID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DID ->> (HID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DID ->> (HID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DID ->> (HID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DID ->> (HID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DID ->> (CID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DID ->> (CID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DID ->> (CID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DID ->> (CID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DID ->> (CID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DID ->> (DN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DID ->> (DN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DID ->> (DN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DID ->> (DN, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DID ->> (DN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DID ->> (DS, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DID ->> (DS, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DID ->> (DS, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DID ->> (DS, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DID ->> (DS, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DID ->> (CN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DID ->> (CN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DID ->> (CN, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DID ->> (CN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DID ->> (CN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DID ->> (CC, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DID ->> (CC, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DID ->> (CC, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DID ->> (CC, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DID ->> (CC, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DID
        FROM Coffees
        GROUP BY DID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'HID ->> (DID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'HID ->> (DID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'HID ->> (DID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'HID ->> (DID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'HID ->> (DID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'HID ->> (CID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'HID ->> (CID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'HID ->> (CID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'HID ->> (CID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'HID ->> (CID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'HID ->> (DN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'HID ->> (DN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'HID ->> (DN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'HID ->> (DN, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'HID ->> (DN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'HID ->> (DS, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'HID ->> (DS, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'HID ->> (DS, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'HID ->> (DS, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'HID ->> (DS, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'HID ->> (CN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'HID ->> (CN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'HID ->> (CN, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'HID ->> (CN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'HID ->> (CN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'HID ->> (CC, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'HID ->> (CC, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'HID ->> (CC, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'HID ->> (CC, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'HID ->> (CC, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT HID
        FROM Coffees
        GROUP BY HID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (DID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CID ->> (DID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CID ->> (DID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CID ->> (DID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (DID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CID ->> (HID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CID ->> (HID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CID ->> (HID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CID ->> (HID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (HID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CID ->> (DN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CID ->> (DN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CID ->> (DN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CID ->> (DN, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (DN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CID ->> (DS, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CID ->> (DS, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CID ->> (DS, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CID ->> (DS, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CID ->> (DS, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CID ->> (CN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CID ->> (CN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CID ->> (CN, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CID ->> (CN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CID ->> (CN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CID ->> (CC, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CID ->> (CC, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CID ->> (CC, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CID ->> (CC, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CID ->> (CC, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CID
        FROM Coffees
        GROUP BY CID
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DN ->> (DID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DN ->> (DID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DN ->> (DID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DN ->> (DID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DN ->> (DID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DN ->> (HID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DN ->> (HID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DN ->> (HID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DN ->> (HID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DN ->> (HID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DN ->> (CID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DN ->> (CID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DN ->> (CID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DN ->> (CID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DN ->> (CID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DN ->> (DS, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DN ->> (DS, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DN ->> (DS, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DN ->> (DS, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DN ->> (DS, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DN ->> (CN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DN ->> (CN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DN ->> (CN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DN ->> (CN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DN ->> (CN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DN ->> (CC, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DN ->> (CC, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DN ->> (CC, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DN ->> (CC, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'DN ->> (CC, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DN
        FROM Coffees
        GROUP BY DN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DS ->> (DID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DS ->> (DID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DS ->> (DID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DS ->> (DID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DS ->> (DID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DS ->> (HID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DS ->> (HID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DS ->> (HID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DS ->> (HID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DS ->> (HID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DS ->> (CID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DS ->> (CID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DS ->> (CID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DS ->> (CID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DS ->> (CID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DS ->> (DN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DS ->> (DN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DS ->> (DN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DS ->> (DN, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'DS ->> (DN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DS ->> (CN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DS ->> (CN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DS ->> (CN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DS ->> (CN, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DS ->> (CN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'DS ->> (CC, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'DS ->> (CC, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'DS ->> (CC, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'DS ->> (CC, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'DS ->> (CC, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT DS
        FROM Coffees
        GROUP BY DS
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CN ->> (DID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CN ->> (DID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (DID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CN ->> (DID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CN ->> (DID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CN ->> (HID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CN ->> (HID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (HID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CN ->> (HID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CN ->> (HID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CN ->> (CID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CN ->> (CID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CN ->> (CID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CN ->> (CID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CN ->> (CID, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CN ->> (DN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CN ->> (DN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CN ->> (DN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (DN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CN ->> (DN, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CN ->> (DS, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CN ->> (DS, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CN ->> (DS, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (DS, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CN ->> (DS, CC) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CC)
    ) X;

    SELECT
        'CN ->> (CC, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CN ->> (CC, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CN ->> (CC, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CN ->> (CC, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CN ->> (CC, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CN
        FROM Coffees
        GROUP BY CN
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CC) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CC ->> (DID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CC ->> (DID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CC ->> (DID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CC ->> (DID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CC ->> (DID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CC ->> (HID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CC ->> (HID, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CC ->> (HID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CC ->> (HID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CC ->> (HID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT HID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CC ->> (CID, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CC ->> (CID, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CC ->> (CID, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CC ->> (CID, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CC ->> (CID, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CID) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CC ->> (DN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CC ->> (DN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CC ->> (DN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CC ->> (DN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT DS)
    ) X;

    SELECT
        'CC ->> (DN, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DN) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CC ->> (DS, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CC ->> (DS, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CC ->> (DS, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CC ->> (DS, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CC ->> (DS, CN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT DS) * COUNT(DISTINCT CN)
    ) X;

    SELECT
        'CC ->> (CN, DID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DID)
    ) X;

    SELECT
        'CC ->> (CN, HID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT HID)
    ) X;

    SELECT
        'CC ->> (CN, CID) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT CID)
    ) X;

    SELECT
        'CC ->> (CN, DN) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DN)
    ) X;

    SELECT
        'CC ->> (CN, DS) in Coffees' AS Relation,
        CASE WHEN COUNT(*) = 0 THEN
            'MAYBE MVD'
        ELSE
            'NO MVD'
        END AS MVD
    FROM (
        SELECT CC
        FROM Coffees
        GROUP BY CC
        HAVING COUNT(*) > 1
            AND COUNT(*) <> COUNT(DISTINCT CN) * COUNT(DISTINCT DS)
    ) X;
